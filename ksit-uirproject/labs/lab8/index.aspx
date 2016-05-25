<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="labs_lab8_index" Codebehind="index.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Организация доступа к базам данным в ASP.NET</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab8/Лаб.раб.№8.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/labs/lab8/Zadanie1.aspx" Target="_blank">Задание №1</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/codes/lab8/Zadanie1.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/codes/lab8/Zadanie1.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <br />
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/reports/DBvsFilesStoring.aspx">"Хранение изображений: база данных или файловое хранилище?"</asp:HyperLink><br />
    </div>
</asp:Content>

