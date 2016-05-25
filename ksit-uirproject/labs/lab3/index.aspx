<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" Inherits="labs_lab3_index" Codebehind="index.aspx.cs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Использование Visual Basic.NET</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab3/Лаб.раб.№3.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/labs/lab3/Zadanie1.zip" Target="_blank">Задание №1</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/codes/lab3/Zadanie1.vb.txt">.vb</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/labs/lab3/Zadanie2.zip" Target="_blank">Задание №2</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/codes/lab3/Zadanie2.vb.txt">.vb</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/labs/lab3/Zadanie3.zip" Target="_blank">Задание №3</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/codes/lab3/Zadanie3.vb.txt">.vb</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink9" runat="server" 
            NavigateUrl="~/labs/lab3/Zadanie4.zip" Target="_blank">Задание №4</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink10" runat="server" 
            NavigateUrl="~/codes/lab3/Zadanie4.vb.txt">.vb</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink11" runat="server" 
            NavigateUrl="~/labs/lab3/Zadanie5.zip" Target="_blank">Задание №5</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink12" runat="server" 
            NavigateUrl="~/codes/lab3/Zadanie5.vb.txt">.vb</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink7" runat="server" 
            NavigateUrl="~/labs/lab3/Zadanie3-5.zip" Target="_blank">Задание №3-5</asp:HyperLink>
        (исходный код:
        <asp:HyperLink ID="HyperLink8" runat="server" 
            NavigateUrl="~/codes/lab3/Zadanie3-5.vb.txt">.vb</asp:HyperLink>
        )<br />
        <br />
         <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/reports/Лаб.раб.№3.doc">Загрузить файл отчета</asp:HyperLink><br />
        <br />
    </div>
</asp:Content>

