using System;

public partial class labs_lab5_Zadanie1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Server_Change(object Source, EventArgs e)
    {
        if (Radio1.Checked)
            ans.InnerHtml = "���� ������ �� ASP.NET �������";
        else if (Radio2.Checked)
            ans.InnerHtml = "���� ������ �� ASP.NET ������";
        else if (Radio3.Checked)
            ans.InnerHtml = "���� ������ �� ASP.NET �����������������";
        else if (Radio4.Checked)
            ans.InnerHtml = "���� ������ �� ASP.NET �������������������";
    }
}
