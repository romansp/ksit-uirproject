using System;
using System.Web.UI;

public partial class labs_lab5_Zadanie2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Image1_Click(object sender, ImageClickEventArgs e)
    {
        Image1.ImageUrl = Image1.ImageUrl == "~/images/lab5/sb_1_q.png" ? "~/images/lab5/sb_1_a.png" : "~/images/lab5/sb_1_q.png";
    }

    protected void Image2_Click(object sender, ImageClickEventArgs e)
    {
        Image2.ImageUrl = Image2.ImageUrl == "~/images/lab5/sb_2_q.png" ? "~/images/lab5/sb_2_a.png" : "~/images/lab5/sb_2_q.png";
    }
    protected void Image3_Click(object sender, ImageClickEventArgs e)
    {
        Image3.ImageUrl = Image3.ImageUrl == "~/images/lab5/sb_3_q.png" ? "~/images/lab5/sb_3_a.png" : "~/images/lab5/sb_3_q.png";
    }
    protected void Image4_Click(object sender, ImageClickEventArgs e)
    {
        Image4.ImageUrl = Image4.ImageUrl == "~/images/lab5/sb_4_q.png" ? "~/images/lab5/sb_4_a.png" : "~/images/lab5/sb_4_q.png";
    }
    protected void Image5_Click(object sender, ImageClickEventArgs e)
    {
        Image5.ImageUrl = Image5.ImageUrl == "~/images/lab5/sb_5_q.png" ? "~/images/lab5/sb_5_a.png" : "~/images/lab5/sb_5_q.png";
    }
}