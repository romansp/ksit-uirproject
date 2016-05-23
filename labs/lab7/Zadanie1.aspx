<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie1.aspx.cs" Inherits="labs_lab7_Zadanie1" %>

<%@ Register Src="Login.ascx" TagName="Login" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Задание №1 / Лаб.раб.№7 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Пользовательский элемент управления<br />
        <uc1:Login id="Login1" runat="server">
        </uc1:Login></div>
    </form>
</body>
</html>
