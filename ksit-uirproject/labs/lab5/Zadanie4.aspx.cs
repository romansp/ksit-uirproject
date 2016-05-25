using System;
using System.Drawing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab5_Zadanie4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        if (e.Day.Date.Day == 1 && e.Day.Date.Month == 1) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />Новый Год"));
        }

        else if (e.Day.Date.Day == 7 && e.Day.Date.Month == 1) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />Рождество Христово (православное)"));
        }

        else if (e.Day.Date.Day == 8 && e.Day.Date.Month == 3) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />День женщин"));
        }

        else if (e.Day.Date.Day == 1 && e.Day.Date.Month == 5) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />Праздник труда"));
        }

        else if (e.Day.Date.Day == 24 && e.Day.Date.Month == 4) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />Радоница"));
        }

        else  if (e.Day.Date.Day == 9 && e.Day.Date.Month == 5) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />День Победы"));
        }

        else if (e.Day.Date.Day == 3 && e.Day.Date.Month == 7) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />День Республики"));
        }

        else if (e.Day.Date.Day == 7 && e.Day.Date.Month == 11) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />День Октябрьской революции"));
        }

        else if (e.Day.Date.Day == 25 && e.Day.Date.Month == 12) {
            e.Cell.BackColor = Color.FromArgb(255, 254, 110, 135);
            e.Cell.Controls.Add(new LiteralControl("<br />Рождество Христово (католическое)"));
        }
    }
}