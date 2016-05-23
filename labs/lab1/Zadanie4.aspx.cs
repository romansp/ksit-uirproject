using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Zadanie4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String name = TextBox1.Text.ToString();
        Response.Write("<script type='text/javascript'>alert('Здравствуйте, " + name + ", Вам следует освоить ASP.NET.')</script>");
    }
    protected void TextBox1_TextChanged(object sender, System.EventArgs e)
    {
        RegularExpressionValidator1.Validate();
    }
}