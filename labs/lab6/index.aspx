<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="labs_lab6_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>Серверные элементы управления входом</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab6/Лаб.раб.№6.pdf">Загрузить файл условий</asp:HyperLink></div>
    <div id="tasks">
         <asp:HyperLink ID="HyperLink16" runat="server" NavigateUrl="~/reports/Лаб.раб.№6.doc">Загрузить файл отчета</asp:HyperLink><br />
    <br />
    </div>
</asp:Content>

