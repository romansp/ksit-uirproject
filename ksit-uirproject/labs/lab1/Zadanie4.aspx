﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="Zadanie4" Codebehind="Zadanie4.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №4 / Лаб.раб.№1 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:Label ID="Label1" runat="server">Введите свое имя: </asp:Label>
    
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="- это обязательное поле!" 
            ForeColor="#CC3300"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Готово" />
        <br />
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="TextBox1" 
            ErrorMessage="Неверный ввод! Разрешены только символы латиницы или кириллицы." 
            Font-Bold="False" ForeColor="#CC3300" ValidationExpression="[aA-zZаА-яЯ]+"></asp:RegularExpressionValidator>
        <br />
    
    </div>
    </form>
</body>
</html>
