<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zadanie2.aspx.cs" Inherits="labs_lab7_Zadanie2" %>

<%@ Register Src="Service.ascx" TagName="Service" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>������� �2 / ���.���.�7 / ����</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        &nbsp;<uc1:Service ID="Service1" runat="server" AllowDuplicates="false" />
    </div>
    <fieldset style="width: 587px;">
        <legend>����� ����������� ������</legend>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="��������" />
     </fieldset>
    </form>
</body>
</html>
