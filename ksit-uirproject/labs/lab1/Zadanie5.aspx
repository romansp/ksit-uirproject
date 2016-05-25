<%@ Page Language="C#" AutoEventWireup="true" Inherits="Zadanie5" Codebehind="Zadanie5.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №5 / Лаб.раб.№1 / КСИТ</title>
    <style type="text/css">
   #table { 
    float: left;
   }
   #photo { 
    float: left;
    padding-top: 60px;
   }
  </style> 

</head>
<body>
    <form id="form1" runat="server">
    <p style="font-size: large; font-weight: bold; text-align: center;">Группа УИР-2
    </p>
    <div id="table">
        <asp:Table ID="Table1" runat="server" BorderStyle="None" Width="250px">
        </asp:Table></div>
    <div id="photo">
        <img alt="" border="1px" src="../../images/lab1/group_photo.jpg" /></div>
    </form>
</body>
</html>
