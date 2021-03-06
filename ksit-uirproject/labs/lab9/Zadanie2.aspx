﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="labs_lab9_Zadanie2" Codebehind="Zadanie2.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Задание №2 / Лаб.раб.№9 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
            <ItemTemplate>
                Абонент:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select">Подробнее</asp:LinkButton>
            </ItemTemplate>
            <SelectedItemTemplate>
                <strong>Абонент</strong>:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                <strong>Фамилия</strong>:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                <strong>Имя</strong>:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                <strong>Город</strong>:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                <strong>Улица</strong>:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                <strong>Телефон</strong>:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
            </SelectedItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
            SelectCommand="SELECT [LastName], [City], [Address], [Phone], [Id], [FirstName] FROM [Main]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
