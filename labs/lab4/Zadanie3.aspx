<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie3.aspx.cs" Inherits="labs_lab4_Zadanie3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>������� �3 / ���.���.�4 / ����</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        ������� ��� ������������:
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        ������������ ���� ���:
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        ��� ������������, ����������� � ���� ������: <asp:Label ID="Label3" runat="server"
            Text="Label"></asp:Label><br />
    
    </div>
    </form>
</body>
</html>
