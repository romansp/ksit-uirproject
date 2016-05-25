<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="lab1_index" Codebehind="index.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Базовые понятия ASP.NET</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab1/Лаб.раб.№1.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
    <asp:HyperLink ID="HyperLink1" runat="server" 
    NavigateUrl="~/labs/lab1/Zadanie1.aspx" Target="_blank">Задание №1</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/codes/lab1/Zadanie1.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/codes/lab1/Zadanie1.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <asp:HyperLink ID="HyperLink4" runat="server" 
    NavigateUrl="~/labs/lab1/Zadanie2.aspx" Target="_blank">Задание №2</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/codes/lab1/Zadanie2.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/codes/lab1/Zadanie2.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <asp:HyperLink ID="HyperLink7" runat="server" 
    NavigateUrl="~/labs/lab1/Zadanie3.aspx" Target="_blank">Задание №3</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/codes/lab1/Zadanie3.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/codes/lab1/Zadanie3.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <asp:HyperLink ID="HyperLink10" runat="server" 
    NavigateUrl="~/labs/lab1/Zadanie4.aspx" Target="_blank">Задание №4</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="~/codes/lab1/Zadanie4.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/codes/lab1/Zadanie4.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <asp:HyperLink ID="HyperLink13" runat="server" 
    NavigateUrl="~/labs/lab1/Zadanie5.aspx" Target="_blank">Задание №5</asp:HyperLink>
    (исходный код:
    <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/codes/lab1/Zadanie5.aspx.txt">.aspx</asp:HyperLink>,
    <asp:HyperLink ID="HyperLink15" runat="server" NavigateUrl="~/codes/lab1/Zadanie5.aspx.cs.txt">.aspx.cs</asp:HyperLink>)<br />
    <br />
    <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/reports/Лаб.раб.№1.doc">Загрузить файл отчета</asp:HyperLink><br />
    <br />
    </div>
</asp:Content>

