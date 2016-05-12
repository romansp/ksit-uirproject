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

public partial class labs_lab5_Zadanie3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Image1.Visible = false;
        ListBox1.AutoPostBack = true;
    }
    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Image1.Visible = true;

        if (ListBox1.SelectedIndex == 0)
            Image1.ImageUrl = "~/images/lab5/kiev.png";
        else if (ListBox1.SelectedIndex == 1)
            Image1.ImageUrl = "~/images/lab5/detroit.jpg";
        else if (ListBox1.SelectedIndex == 2)
            Image1.ImageUrl = "~/images/lab5/lyon.png";
        else if (ListBox1.SelectedIndex == 3)
            Image1.ImageUrl = "~/images/lab5/tehran.png";
        else if (ListBox1.SelectedIndex == 4)
            Image1.ImageUrl = "~/images/lab5/eindhoven.png";
    }
}
