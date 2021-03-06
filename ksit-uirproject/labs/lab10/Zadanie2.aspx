﻿<%@ Page Language="C#" AutoEventWireup="true" Inherits="labs_lab10_Zadanie2" Codebehind="Zadanie2.aspx.cs" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Задание №2 / Лаб.раб.№10 / КСИТ</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DataList ID="DataList1" runat="server" 
            DataKeyField="Id" DataSourceID="SqlDataSource1" oncancelcommand="DataList1_CancelCommand" 
            ondeletecommand="DataList1_DeleteCommand" oneditcommand="DataList1_EditCommand" 
            onupdatecommand="DataList1_UpdateCommand" 
            onselectedindexchanged="DataList1_SelectedIndexChanged">
            <EditItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            Абонент:</td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Фамилия:
                        </td>
                        <td>
                            <asp:TextBox ID="LastNameTextBox" runat="server" MaxLength="15" 
                                Text='<%# Eval("LastName") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Имя:</td>
                        <td>
                            <asp:TextBox ID="FirstNameTextBox" runat="server" MaxLength="25" 
                                Text='<%# Eval("FirstName") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Город:</td>
                        <td>
                            <asp:TextBox ID="CityTextBox" runat="server" MaxLength="10" 
                                Text='<%# Eval("City") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Улица:</td>
                        <td>
                            <asp:TextBox ID="AddressTextBox" runat="server" MaxLength="100" 
                                Text='<%# Eval("Address") %>'></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Оператор:</td>
                        <td>
                            <asp:RadioButtonList ID="OperatorRadioButtonList" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="OperatorName" DataValueField="Id" 
                                RepeatDirection="Horizontal" RepeatLayout="Flow">
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="OperatorRadioButtonList" 
                                ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
                                SelectCommand="SELECT [OperatorName], [Id] FROM [Operator]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Телефон:</td>
                        <td>
                            <asp:TextBox ID="PhoneTextBox" runat="server" MaxLength="6" 
                                Text='<%# Eval("Phone") %>'></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button2" runat="server" Text="Обновить" CommandName="update" />
                <asp:Button ID="Button3" runat="server" Text="Отмена" CommandName="cancel" 
                    onclientclick="reload" />
            </EditItemTemplate>
            <ItemTemplate>
                Абонент:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="select">Подробнее</asp:LinkButton>
                <br />
            </ItemTemplate>
            <SelectedItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td>
                            <strong>Абонент: </strong></td>
                        <td>
                            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Фамилия:</strong></td>
                        <td>
                            <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Имя:</strong></td>
                        <td>
                            <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Город:</strong></td>
                        <td>
                            <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Улица:</strong></td>
                        <td>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Оператор:</strong></td>
                        <td>
                            <asp:Label ID="OperatorIdLabel" runat="server" 
                                Text='<%# Eval("OperatorId") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <strong>Телефон:</strong></td>
                        <td>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                        </td>
                    </tr>
                </table>
                <asp:Button ID="Button1" runat="server" CommandName="edit" Text="Изменить" />
                <asp:Button ID="Button4" runat="server" CommandName="delete" Text="Удалить" />
                <br />
            </SelectedItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:u304494ConnectionString %>" 
            DeleteCommand="DELETE FROM [Main] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Main] ([FirstName], [LastName], [City], [Address], [OperatorId], [Phone]) VALUES (@FirstName, @LastName, @City, @Address, @OperatorId, @Phone)" 
            SelectCommand="SELECT [FirstName], [LastName], [City], [Address], [OperatorId], [Id], [Phone] FROM [Main]" 
            UpdateCommand="UPDATE [Main] SET [FirstName] = @FirstName, [LastName] = @LastName, [City] = @City, [Address] = @Address, [OperatorId] = @OperatorId, [Phone] = @Phone WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="OperatorId" Type="Int32" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="OperatorId" Type="Int32" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
