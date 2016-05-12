<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie2.aspx.cs" Inherits="labs_lab5_Zadanie2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №2 / Лаб.раб.№5 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="Image1" runat="server" BorderStyle="Solid" BorderWidth="1px" 
            ImageUrl="~/images/lab5/sb_1_q.png" onclick="Image1_Click" />
        <asp:ImageButton ID="Image2" runat="server" BorderStyle="Solid" BorderWidth="1px" 
            ImageUrl="~/images/lab5/sb_2_q.png" onclick="Image2_Click" />
        <asp:ImageButton ID="Image3" runat="server" BorderStyle="Solid" BorderWidth="1px" 
            ImageUrl="~/images/lab5/sb_3_q.png" onclick="Image3_Click" />
        <asp:ImageButton ID="Image4" runat="server" BorderStyle="Solid" BorderWidth="1px" 
            ImageUrl="~/images/lab5/sb_4_q.png" onclick="Image4_Click" />
        <asp:ImageButton ID="Image5" runat="server" BorderStyle="Solid" BorderWidth="1px" 
            ImageUrl="~/images/lab5/sb_5_q.png" onclick="Image5_Click" />
        <br />
    
    </div>
    </form>
</body>
</html>
