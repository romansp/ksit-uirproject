<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="labs_lab4_index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="theme"><h2>������������� �������� ASP.NET � ����� ���������������� C#</h2></div>
    <div id="description"><asp:HyperLink ID="HyperLink17" runat="server" NavigateUrl="~/labs/lab4/���.���.�4.pdf">��������� ���� �������</asp:HyperLink></div>
    <div id="tasks">
         <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/labs/lab4/Zadanie1.aspx" Target="_blank">������� �1</asp:HyperLink>
        (�������� ���:
        <asp:HyperLink ID="HyperLink2" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie1.aspx.txt">.aspx</asp:HyperLink>
        ,
        <asp:HyperLink ID="HyperLink3" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie1.aspx.cs.txt">.aspx.cs</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink7" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie2.cs.txt" Target="_blank">������� �2</asp:HyperLink>
            <br />
        <asp:HyperLink ID="HyperLink4" runat="server" 
            NavigateUrl="~/labs/lab4/Zadanie3.aspx" Target="_blank">������� �3</asp:HyperLink>
        (�������� ���:
        <asp:HyperLink ID="HyperLink5" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie3.aspx.txt">.aspx</asp:HyperLink>
        ,
        <asp:HyperLink ID="HyperLink6" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie3.aspx.cs.txt">.aspx.cs</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink8" runat="server" 
            NavigateUrl="~/labs/lab4/Zadanie4.aspx" Target="_blank">������� �4</asp:HyperLink>
        (�������� ���:
        <asp:HyperLink ID="HyperLink9" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie4.aspx.txt">.aspx</asp:HyperLink>
        ,
        <asp:HyperLink ID="HyperLink10" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie4.aspx.cs.txt">.aspx.cs</asp:HyperLink>
        )<br />
        <asp:HyperLink ID="HyperLink11" runat="server" 
            NavigateUrl="~/labs/lab4/Zadanie5.aspx" Target="_blank">������� �5</asp:HyperLink>
        (�������� ���:
        <asp:HyperLink ID="HyperLink12" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie5.aspx.txt">.aspx</asp:HyperLink>
        ,
        <asp:HyperLink ID="HyperLink13" runat="server" 
            NavigateUrl="~/codes/lab4/Zadanie5.aspx.cs.txt">.aspx.cs</asp:HyperLink>
        )<br />
        <br />
    </div>
</asp:Content>

