<%@ Page Language="C#" AutoEventWireup="true" Inherits="labs_lab5_Zadanie3" Codebehind="Zadanie3.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>������� �3 / ���.���.�5 / ����</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        ������-��������� ������:<br />
        <asp:ListBox ID="ListBox1" runat="server" Height="95px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
            Width="145px" AutoPostBack="True">
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>�������</asp:ListItem>
            <asp:ListItem>����</asp:ListItem>
            <asp:ListItem>�������</asp:ListItem>
            <asp:ListItem>���������</asp:ListItem>
        </asp:ListBox>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/lab5/city1.png" 
            ImageAlign="Top" /></div>
    </form>
</body>
</html>
