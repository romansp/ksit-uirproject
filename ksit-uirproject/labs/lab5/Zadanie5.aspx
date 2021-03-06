﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="labs_lab5_Zadanie5" Codebehind="Zadanie5.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №5 / Лаб.раб.№5 / КСИТ</title>
    <style type="text/css"> ul { margin: 0px;} </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Демографическая карточка пользователя<br />
        <br />
        Возраст (полных лет):
        <br />
        <asp:TextBox ID="TextBox1" runat="server" CausesValidation="True"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBox1" ErrorMessage="возраст. " ForeColor="#CC3300">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="поле &quot;Возраст&quot; заполнено неверно. " 
            ControlToValidate="TextBox1" ValidationExpression="\d+" 
            ForeColor="#CC3300">*</asp:RegularExpressionValidator>
        <br />
&nbsp;<fieldset style="border: thin dotted #808080; width: 160px">
            <legend>Пол&nbsp;&nbsp;&nbsp; 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="RadioButtonList1" ErrorMessage="пол. " ForeColor="#CC3300">*</asp:RequiredFieldValidator>
            </legend> 
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                CausesValidation="True" RepeatLayout="Flow">
                <asp:ListItem>мужской</asp:ListItem>
                <asp:ListItem>женский</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <br />
        <fieldset style="border: thin dotted #808080; width: 160px">
            <legend>Образование&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="RadioButtonList2" ErrorMessage="образование. " 
                    ForeColor="#CC3300">*</asp:RequiredFieldValidator>
            </legend> 
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatLayout="Flow">
                <asp:ListItem>среднее</asp:ListItem>
                <asp:ListItem>высшее</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <br />
        <fieldset style="border: thin dotted #808080; width: 160px">
            <legend>Род занятий&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ControlToValidate="RadioButtonList3" 
            ErrorMessage="род занятий. " ForeColor="#CC3300">*</asp:RequiredFieldValidator></legend> 
            <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatLayout="Flow">
                <asp:ListItem>работаю</asp:ListItem>
                <asp:ListItem>учусь</asp:ListItem>
                <asp:ListItem>пенсионер</asp:ListItem>
                <asp:ListItem>отдыхаю</asp:ListItem>
            </asp:RadioButtonList>
        </fieldset>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
            HeaderText="Необходимо исправить ошибки в полях: " />
        <asp:Label ID="Label1" runat="server" Text="Данные успешно сохранены."></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server"
            Text="Сохранить" onclick="Button1_Click" />
        </div>
    </form>
</body>
</html>
