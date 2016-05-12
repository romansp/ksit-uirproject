﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie1.aspx.cs" Inherits="labs_lab8_Zadanie1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №1 / Лаб.раб.№8 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Выберите оператора:<asp:RadioButtonList ID="RadioButtonList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="OperatorName" DataValueField="Id">
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Готово" />
        <br />
        <asp:DataList ID="DataList1" runat="server" BorderStyle="Solid" 
            BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" 
            ForeColor="#333333" GridLines="Both" RepeatColumns="2">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <ItemTemplate>
                Имя:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                Фамилия:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Город:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                <br />
                Адрес:
                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                <br />
                Телефон:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
            SelectCommand="SELECT [FirstName], [LastName], [City], [Address], [Phone] FROM [Main] WHERE ([OperatorId] = @OperatorId) ORDER BY [LastName], [FirstName]">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="OperatorId" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
            SelectCommand="SELECT [Id], [OperatorName] FROM [Operator] ORDER BY [OperatorName]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
