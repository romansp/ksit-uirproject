<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie5.aspx.cs" Inherits="labs_lab4_Zadanie5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Задание №5 / Лаб.раб.№4 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
        Введите имя и пароль:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;- имя
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="Введите имя." ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;- пароль
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBox2" ErrorMessage="Введите пароль" ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="margin-left: 0px" Text="Войти" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label1" runat="server" 
            Text="Чтобы продолжить, введите в поле ниже проверочный пароль:"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="True" Width="48px"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBox3" ErrorMessage="Введите проверочный пароль" 
            ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="TextBox4" ControlToValidate="TextBox3" 
            ErrorMessage="Неверный проверочный пароль" ForeColor="#CC3300"></asp:CompareValidator>
        <br />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            Text="Подтвердить" />
       
    </div>
    </form>
</body>
</html>
