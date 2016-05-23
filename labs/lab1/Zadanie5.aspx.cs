using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Zadanie5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
          String[] names = {"Астапенко Таисия",
                         "Борисенко Юлия",
                         "Брановицкая Анастасия",
                         "Вовна Дарья",
                         "Голуб Екатерина",
                         "Губина Екатерина",
                         "Езерская Юлия",
                         "Журбило Артём",
                         "Зыль Юлия",
                         "Календо Игорь",
                         "Косило Дарья",
                         "Кулина Ольга",
                         "Лешкевич Ольга",
                         "Лопатик Татьяна",
                         "Малайчук Алёна",
                         "Нагорный Дмитрий",
                         "Павлов Роман",
                         "Платонова Мария",
                         "Радюк Наталья",
                         "Рудаков Алексей",
                         "Сачко Анастасия",
                         "Сподарик Станислав",
                         "Ульянова Анна",
                         "Чернявская Елена",
                         "Шалимова Елена",
                         "Янушенок Надежда"
                         };
        int numrows = names.Length;
        int numcells = 1;
        for (int i = 0; i < numrows; i++)
        {
            TableRow r = new TableRow();
            for (int j = 0; j < numcells; j++)
            {
                TableCell c = new TableCell();
                c.Text = i+1 + ". " + names[i].ToString();
                r.Cells.Add(c);
            }
            Table1.Rows.Add(r);
        }
    }
}