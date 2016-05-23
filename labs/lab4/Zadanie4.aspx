<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie4.aspx.cs" Inherits="labs_lab4_Zadanie4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Задание №4 / Лаб.раб.№4 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Введите имя пользователя:
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox><br />
        Пользователь ввел имя:
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        Имя пользователя, прочитанное в ходе сеанса: <asp:Label ID="Label3" runat="server"
            Text="Label"></asp:Label>
        <br />
        <br />
        Содержимое файла cookie:
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <strong>UserName:</strong>
        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
&nbsp;<br />
        <strong>LastVisit:</strong>
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        Чтение всех cookies через цикл for:
        <asp:Table ID="Table1" 
            runat="server" Width="400px" CellPadding="0" CellSpacing="1">
        </asp:Table>
        <br />
    
    </div>
    </form>
</body>
</html>
