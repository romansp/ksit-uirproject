<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Service.ascx.cs" Inherits="labs_lab7_Service" %>
<table>
    <tr>
        <td style="width: 98px">
            ��������� ����������� ������</td>
        <td style="width: 100px">
        </td>
        <td style="width: 252px">
            �� ������� ����������� ������</td>
    </tr>
    <tr>
        <td style="width: 98px; height: 74px;">
            <asp:ListBox ID="ListBox1" runat="server" Width="250px">
                <asp:ListItem>������������� ���</asp:ListItem>
                <asp:ListItem>����� ��������� ����������</asp:ListItem>
                <asp:ListItem>��������� ������� �� ��������</asp:ListItem>
            </asp:ListBox></td>
        <td style="width: 100px; height: 74px;" valign="top">
            <asp:Button ID="Button1" runat="server" Text="��������" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="�������� ���" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="�������" OnClick="Button3_Click" /></td>
        <td style="width: 252px; height: 74px;">
            <asp:ListBox ID="ListBox2" runat="server" Width="250px"></asp:ListBox></td>
    </tr>
</table>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
