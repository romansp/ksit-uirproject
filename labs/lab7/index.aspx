﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="labs_lab7_index" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Пользовательские элементы управления</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab7/Лаб.раб.№7.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/labs/lab7/Zadanie1.aspx" Target="_blank">Задание №1</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/codes/lab7/Zadanie1.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/codes/lab7/Zadanie1.aspx.cs.txt">.aspx.cs</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/codes/lab7/Login.ascx.txt">Login.ascx.cs</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/codes/lab7/Login.ascx.cs.txt">Login.ascx.cs</asp:HyperLink>)<br />
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/labs/lab7/Zadanie2.aspx" Target="_blank">Задание №2</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/codes/lab7/Zadanie2.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/codes/lab7/Zadanie2.aspx.cs.txt">.aspx.cs</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/codes/lab7/Service.ascx.txt">Service.ascx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/codes/lab7/Service.ascx.cs.txt">Service.ascx.cs</asp:HyperLink>)<br />
    <br />
    </div>
</asp:Content>

