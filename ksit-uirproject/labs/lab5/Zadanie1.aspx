<%@ Page Language="C#" AutoEventWireup="True" Inherits="labs_lab5_Zadanie1" Codebehind="Zadanie1.aspx.cs" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>������� �1 / ���.���.�5 / ����</title>
</head>
<body>
   <form id="Form1" runat="server">
      <input type="radio" 
             id="Radio1" 
             name="Mode"
             onserverchange="Server_Change" 
             runat="server"/>
      �������<br />
      <input type="radio" 
             id="Radio2" 
             name="Mode"
             onserverchange="Server_Change" 
             runat="server"/>
      ������<br />
      <input type="radio" 
             id="Radio3" 
             name="Mode"
             onserverchange="Server_Change" 
             runat="server"/>
      �����������������<br />
      <input type="radio" 
             id="Radio4" 
             name="Mode"
             onserverchange="Server_Change" 
             runat="server"/>
      �������������������<br />
      <p id="ans" runat="server" /> 
      <input type="submit" id="Button1" 
             value="Enter" 
             runat="server" />
   </form>
</body>
</html>