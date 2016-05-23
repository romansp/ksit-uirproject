<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie1.aspx.cs" Inherits="labs_lab11_Zadanie1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Задание №1 / Лаб.раб.№11 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/App_Data/Student-mark.xml">
        </asp:XmlDataSource>
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
            DataKeyNames="number" DataSourceID="XmlDataSource1" ForeColor="#333333" GridLines="None"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <RowStyle BackColor="#EFF3FB" />
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="number" HeaderText="Зачетная книжка" SortExpression="number" />
                <asp:BoundField DataField="FirstName" HeaderText="Имя" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="Фамилия" SortExpression="LastName" />
                <asp:BoundField DataField="Year" HeaderText="Год" SortExpression="Year" />
            </Columns>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="XmlDataSource2" Visible="False"
            Width="396px">
            <AlternatingItemTemplate>
                <strong>Дисциплина</strong>:
                <asp:Label ID="nameLabel" runat="server" Font-Bold="False" Text='<%# Eval("name") %>'></asp:Label><br />
                <strong>Оценка</strong>:
                <asp:Label ID="markLabel" runat="server" Text='<%# Eval("mark") %>'></asp:Label><br />
                <hr />
            </AlternatingItemTemplate>
            <ItemTemplate>
                <strong>Дисциплина</strong>:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'></asp:Label><br />
                <strong>Оценка</strong>:
                <asp:Label ID="markLabel" runat="server" Text='<%# Eval("mark") %>'></asp:Label><br />
                <hr />
            </ItemTemplate>
        </asp:DataList><asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/App_Data/Student-mark.xml"
            XPath="record-book/book/disciplines/discipline"></asp:XmlDataSource>
    </form>
</body>
</html>
