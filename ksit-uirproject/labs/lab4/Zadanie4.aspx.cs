﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab4_Zadanie4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string UserName = "";
        DateTime LastVisit = new DateTime();

        //Пытаемся прочитать файл cookies "simpleCookie"
        try
        {
            LastVisit = Convert.ToDateTime(Request.Cookies["simpleCookie"]["LastVisit"]);
            UserName = Request.Cookies["simpleCookie"]["UserName"];
            Label6.Text = Request.Cookies["simpleCookie"].Value;
            Label4.Text = UserName;
            Label5.Text = LastVisit.ToString();
        }
        //Cookies файл не обнаружен
        catch (Exception)
        {
            Label6.Text = "Cookies file is empty!";
            Label4.Text = "Empty";
            Label5.Text = "Empty";
        }
        //Ставим cookies
        Response.Cookies["simpleCookie"]["UserName"] = TextBox1.Text;
        Response.Cookies["simpleCookie"]["LastVisit"] = DateTime.Now.ToString();

        //Чтение всех cookies циклом for и в таблицу построчно
        for (int i = 0; i < Response.Cookies.Count; i++)
        {
            TableRow r = new TableRow();
            TableCell c = new TableCell();
            c.Text = i + 1 + ". " + Response.Cookies.Get(i).Value.ToString();
            r.Cells.Add(c);
            Table1.Rows.Add(r);
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        Session["name"] = TextBox1.Text;
        Label2.Text = TextBox1.Text;
        Label3.Text = Session["name"].ToString();
    }
}