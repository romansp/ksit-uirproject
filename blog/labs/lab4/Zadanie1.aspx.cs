using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class labs_lab4_Zadanie1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int hour = DateTime.Now.Hour;
        Label2.Text = hour.ToString() + " �����";

        if (hour < 12)
            Label3.Text = "������ ����!";
        else if (hour < 18)
            Label3.Text = "������ ����!";
        else
            Label3.Text = "������ �����!";
    }
}
