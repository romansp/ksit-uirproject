﻿using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.Services;
using System.Xml;
using System.Xml.Serialization;
using DocumentFormat.OpenXml.Packaging;

/// <summary>
/// Сводное описание для Zadanie2
/// </summary>
[WebService(Namespace = "http://www.pac.by/webserv")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// Чтобы разрешить вызывать веб-службу из скрипта с помощью ASP.NET AJAX, раскомментируйте следующую строку. 
// [System.Web.Script.Services.ScriptService]
public class Lab13Zadanie1 : WebService {
    [WebMethod]
    public XmlDocument GetStudentMarks(string id)
    {
        const string worksheetSchema = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
        const string sharedStringSchema = "http://schemas.openxmlformats.org/spreadsheetml/2006/main";
        String[] excelColumnsDictionary =
            {
                "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L",
                "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z",
                "AA", "AB", "AC", "AD", "AE", "AF", "AG", "AH", "AI", "AJ", "AK", "AL",
                "AM", "AN", "AO", "AP", "AQ", "AR", "AS", "AT", "AU", "AV", "AW", "AX", "AY", "AZ",
                "BA", "BB", "BC", "BD", "BE", "BF", "BG", "BH", "BI", "BJ", "BK", "BL",
                "BM", "BN", "BO", "BP", "BQ", "BR", "BS", "BT", "BU", "BV", "BW", "BX", "BY", "BZ"
            };

        var xml = new XmlDocument();
        var xmls = new XmlSerializer(typeof(Student));

        string name = "";
        var primaryMarks = new List<string>();

        string cellValue = null;

        //  Retrieve the stream containing the requested
        //  worksheet's info.
        string fileName = Server.MapPath("~/marks.xlsx");
        using (SpreadsheetDocument xlDoc = SpreadsheetDocument.Open(fileName, false))
        {
            //  Get the main document part (workbook.xml).
            XmlDocument doc = new XmlDocument();
            doc.Load(xlDoc.WorkbookPart.GetStream());

            //  Create a namespace manager, so you can search.
            //  Add a prefix (d) for the default namespace.
            NameTable nt = new NameTable();
            XmlNamespaceManager nsManager = new XmlNamespaceManager(nt);
            nsManager.AddNamespace("d", worksheetSchema);
            nsManager.AddNamespace("s", sharedStringSchema);

            string searchString = string.Format("//d:sheet[@name='{0}']", "Лист1");
            XmlNode sheetNode = doc.SelectSingleNode(searchString, nsManager);
            if (sheetNode != null)
            {
                //  Get the relId attribute.
                XmlAttribute relationAttribute = sheetNode.Attributes["r:id"];
                if (relationAttribute != null)
                {
                    string relId = relationAttribute.Value;
                    //  Load the contents of the workbook.
                    XmlDocument sheetDoc = new XmlDocument(nt);
                    sheetDoc.Load(xlDoc.WorkbookPart.GetPartById(relId).GetStream());

                    int i, j;

                    XmlNode n = sheetDoc.SelectSingleNode("//d:dimension", nsManager);
                    XmlAttribute dimensionRef = n.Attributes["ref"];
                    String[] dimensions = dimensionRef.Value.Split(':');
                    const string cellDimensionsPattern = @"([A-Z]+)(\d+)";

                    MatchCollection dimensionGroups = Regex.Matches(dimensionRef.Value, cellDimensionsPattern);
                    string topLeftColumn = dimensionGroups[0].Groups[1].ToString();
                    string topLeftRow = dimensionGroups[0].Groups[2].ToString();

                    dimensionGroups = Regex.Matches(dimensions[1], cellDimensionsPattern);
                    string bottomRightColumn = dimensionGroups[0].Groups[1].ToString();
                    string bottomRightRow = dimensionGroups[0].Groups[2].ToString();

                    for (j = 1; j < Convert.ToInt32(bottomRightRow); j++)
                    {

                        XmlNode cellNode =
                            sheetDoc.SelectSingleNode(string.Format("//d:sheetData/d:row/d:c[@r='{0}']", "A" + j),
                                                        nsManager);
                        if (cellNode != null)
                        {
                            XmlAttribute typeAttr = cellNode.Attributes["t"];
                            string cellType = string.Empty;
                            if (typeAttr != null)
                            {
                                cellType = typeAttr.Value;
                            }

                            XmlNode valueNode = cellNode.SelectSingleNode("d:v", nsManager);
                            if (valueNode != null)
                            {
                                cellValue = valueNode.InnerText;
                            }
                            if (cellType == "b")
                            {
                                cellValue = cellValue == "1" ? "TRUE" : "FALSE";
                            }
                            else if (cellType == "s")
                            {
                                if (xlDoc.WorkbookPart.SharedStringTablePart != null)
                                {
                                    XmlDocument stringDoc = new XmlDocument(nt);
                                    stringDoc.Load(xlDoc.WorkbookPart.SharedStringTablePart.GetStream());
                                    //  Add the string schema to the namespace manager.
                                    nsManager.AddNamespace("s", sharedStringSchema);

                                    int requestedString = Convert.ToInt32(cellValue);
                                    string strSearch = string.Format("//s:sst/s:si[{0}]", requestedString + 1);
                                    XmlNode stringNode = stringDoc.SelectSingleNode(strSearch, nsManager);
                                    if (stringNode != null)
                                    {
                                        cellValue = stringNode.InnerText;
                                    }
                                }
                            }

                            if (cellValue == id)
                            {
                                for (i = 0; excelColumnsDictionary[i] != bottomRightColumn; i++)
                                {
                                    string foundRowCellValue = null;
                                    XmlNode foundRowCellNode =
                                        sheetDoc.SelectSingleNode(
                                            string.Format("//d:sheetData/d:row/d:c[@r='{0}']", excelColumnsDictionary[i] + j), nsManager);
                                    if (foundRowCellNode != null)
                                    {
                                        XmlAttribute foundRowTypeAttr = foundRowCellNode.Attributes["t"];
                                        string foundRowCellType = string.Empty;
                                        if (foundRowTypeAttr != null)
                                        {
                                            foundRowCellType = foundRowTypeAttr.Value;
                                        }

                                        XmlNode foundRowValueNode = foundRowCellNode.SelectSingleNode("d:v",
                                                                                                        nsManager);
                                        if (foundRowValueNode != null)
                                        {
                                            foundRowCellValue = foundRowValueNode.InnerText;
                                            if (i != 0 && i != 2)
                                            {
                                                if ((i+1) % 3 == 0)
                                                    primaryMarks.Add(foundRowCellValue);
                                            }
                                        }
                                        if (foundRowCellType == "b")
                                        {
                                            foundRowCellValue = foundRowCellValue == "1" ? "TRUE" : "FALSE";
                                        }
                                        else if (foundRowCellType == "s")
                                        {
                                            if (xlDoc.WorkbookPart.SharedStringTablePart != null)
                                            {
                                                XmlDocument stringDoc = new XmlDocument(nt);
                                                stringDoc.Load(xlDoc.WorkbookPart.SharedStringTablePart.GetStream());
                                                //  Add the string schema to the namespace manager.
                                                nsManager.AddNamespace("s", sharedStringSchema);

                                                int requestedString = Convert.ToInt32(foundRowCellValue);
                                                string strSearch = string.Format("//s:sst/s:si[{0}]",
                                                                                    requestedString + 1);
                                                XmlNode stringNode = stringDoc.SelectSingleNode(strSearch, nsManager);
                                                if (stringNode != null)
                                                {
                                                    if(excelColumnsDictionary[i] == "C")
                                                        name = stringNode.InnerText;
                                                }
                                            }
                                        }
                                    }
                                }
                                var student = new Student()
                                                 {
                                                     FirstName = name.Split(' ')[0],
                                                     LastName = name.Split(' ')[1],
                                                     AverageMark = double.Parse(primaryMarks.Last(), CultureInfo.InvariantCulture),
                                                     Marks = primaryMarks.Take(primaryMarks.Count - 1).Select(int.Parse).ToList()
                                                 };
                                var sww = new StringWriter();
                                var writer = XmlWriter.Create(sww);
                                xmls.Serialize(writer, student);
                                xml.LoadXml(sww.ToString());
                                return xml;
                            }
                        }
                    }
                }
                xml.LoadXml("<warning>Запись не найдена</warning>");
                return xml;
            }
        }
        xml.LoadXml("<error>Возникла ошибка при поиске</error>");
        return xml;
    }

    //private List<string> GenerateExcelColumnsDictionary(string lastColumn)
    //{
    //    List<string> columnsDictionary = new List<string>();
    //    String[] alphabet =
    //        {
    //            "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M",
    //            "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
    //        };

    //    string currentElement;

    //    for (int i = 0, j=0;;i++)
    //    {
    //        if(i%27 ==)
    //        currentElement = alphabet[i];
    //        columnsDictionary.Add(currentElement);
    //        if (currentElement == lastColumn)
    //            break;
    //    }
    //    return columnsDictionary;
    //}
}

public class Student
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public double AverageMark { get; set; }
    public List<int> Marks { get; set; }
}