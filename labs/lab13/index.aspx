<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="labs_lab13_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Реализация моделей бизнес-логики на базе веб-служб ASP.NET</h2></div>
    <div id="tasks">
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/labs/lab13/Zadanie1.asmx" Target="_blank">Задание №1</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/codes/lab13/Zadanie1.asmx.txt">.asmx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/codes/lab13/Zadanie1.cs.txt">.cs</asp:HyperLink>)<br />
    </div>
</asp:Content>

