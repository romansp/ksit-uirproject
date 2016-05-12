using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab4_Zadanie5 : System.Web.UI.Page
{
    int intRandom;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Прячем поля подтверждения входа
        Label1.Visible = false;
        Label2.Visible = false;
        TextBox4.Visible = false;
        TextBox3.Visible = false;
        Button2.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //вычисляем разницу времени
        DateTime SetTimeStamp = Convert.ToDateTime(Request.Cookies["time"]["time"]);
        DateTime NowTimeStamp = DateTime.Now;
        TimeSpan timeSpan = NowTimeStamp - SetTimeStamp;
        if (TextBox3.Text == TextBox4.Text && timeSpan.TotalSeconds < 60)
            Response.Redirect("https://portal.pac.by/studportal/elearn_portal/discipliny/Ksit/Pages/Default.aspx");
        else 
            Response.Write("<script type='text/javascript'>alert('Время сессии истекло.')</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //отображаем интерфейс подтверждения
        Label1.Visible = true;
        Label2.Visible = true;
        TextBox4.Visible = true;
        TextBox3.Visible = true;
        Button2.Visible = true;

        Label2.Text = "Добро пожаловать, " + TextBox1.Text + ".";

        Random random = new Random();
        intRandom = random.Next(1000, 9999);

        TextBox4.Text = intRandom.ToString();

        //ставим куки
        Response.Cookies["time"]["time"] = DateTime.Now.ToString();
    }
}