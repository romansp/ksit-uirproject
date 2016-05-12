<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie1.aspx.cs" Inherits="labs_lab9_Zadanie1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Задание №1 / Лаб.раб.№9 / КСИТ</title>
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
                Фамилия:
                <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                <br />
                Имя:
                <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                <br />
                Код:
                <asp:Label ID="OperatorCodeLabel" runat="server" 
                    Text='<%# Eval("OperatorCode") %>' />
                <br />
                Телефон:
                <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
            
            SelectCommand="SELECT [Phone], [OperatorCode], [FirstName], [LastName] FROM [WithCode] WHERE ([Id] = @Id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="RadioButtonList1" Name="Id" 
                    PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
            SelectCommand="SELECT [OperatorName], [Id] FROM [Operator]">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
