<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="lab2_index" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Создание страниц ASP.NET</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab2/Лаб.раб.№2.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/labs/lab2/Zadanie2.aspx" Target="_blank">Задание №2</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/codes/lab2/Zadanie2.aspx.txt">.aspx</asp:HyperLink>
        ,
        <asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/codes/lab2/Zadanie2.aspx.cs.txt">.aspx.cs</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink7" runat="server" 
            NavigateUrl="~/labs/lab2/Zadanie4.aspx" Target="_blank">Задание №4</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink8" runat="server" 
            NavigateUrl="~/codes/lab2/Zadanie4.aspx.txt">.aspx</asp:HyperLink>
        ,
        <asp:HyperLink ID="HyperLink9" runat="server" 
            NavigateUrl="~/codes/lab2/Zadanie4.aspx.cs.txt">.aspx.cs</asp:HyperLink>
        )<br />
        <br />
    </div>
</asp:Content>

