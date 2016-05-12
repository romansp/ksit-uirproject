﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie4.aspx.cs" Inherits="labs_lab2_Zadanie4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Задание №4 / Лаб.раб.№2 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Выполнение арифметических операций над числами<br />
        Введите числа ниже:<br />
        <asp:TextBox ID="TextBox1" 
            style="text-align: right; margin-left: 90px; margin-top: 5px;" 
            runat="server" CausesValidation="True" 
            Font-Overline="False" ontextchanged="TextBox1_TextChanged" Width="200px">Число №1</asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="Разрешен ввод только чисел!" ControlToValidate="TextBox1" 
            ForeColor="#CC3300" 
            ValidationExpression="^([1-9]\d*(\.|\,)\d*|0?(\.|\,)\d*[1-9]\d*|[1-9]\d*)$"></asp:RegularExpressionValidator>
        <br />
        <asp:TextBox ID="TextBox2" 
            style="text-align: right; margin-left: 90px; margin-top: 5px;" runat="server" CausesValidation="True" 
           ontextchanged="TextBox2_TextChanged" Width="200px">Число №2</asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="Разрешен ввод только чисел!" ControlToValidate="TextBox2" 
            ForeColor="#CC3300" 
            ValidationExpression="^([1-9]\d*(\.|\,)\d*|0?(\.|\,)\d*[1-9]\d*|[1-9]\d*)$"></asp:RegularExpressionValidator>
        <br />
        <asp:Button ID="Button3" 
            runat="server" Text="Сложить" 
            Width="85px" onclick="Button3_Click" 
            style="margin-left: 120px; margin-top: 5px; margin-bottom: 5px" />
        <asp:Button ID="Button1" 
            runat="server" Text="Умножить" 
            Width="85px" onclick="Button1_Click" 
            style="margin-left: 5px; margin-top: 5px; margin-bottom: 5px" />
        <br />
        <asp:Button ID="Button4" 
            runat="server" Text="Вычесть" 
            Width="85px" onclick="Button4_Click" 
            style="margin-left: 119px; margin-top: 5px; margin-bottom: 5px" />
        <asp:Button ID="Button2" 
            runat="server" Text="Разделить" 
            Width="85px" onclick="Button2_Click" 
            style="margin-left: 5px; margin-top: 5px; margin-bottom: 5px" />
        <br />
        Результат:<asp:TextBox ID="TextBox3" 
            style="text-align: right; margin-left: 21px;" runat="server" 
            ReadOnly="True" Width="200px"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
