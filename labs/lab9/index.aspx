<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="labs_lab9_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Управление данными в ASP.NET</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab9/Лаб.раб.№9.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/labs/lab9/Zadanie1.aspx" Target="_blank">Задание №1</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/codes/lab9/Zadanie1.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/codes/lab9/Zadanie1.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/labs/lab9/Zadanie2.aspx" Target="_blank">Задание №2</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/codes/lab9/Zadanie2.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/codes/lab9/Zadanie2.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    </div>
</asp:Content>

