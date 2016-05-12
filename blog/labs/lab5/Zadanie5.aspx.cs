using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab5_Zadanie5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = Page.IsValid;
    }
}