using System;
using System.Globalization;
using System.Web.Services;

/// <summary>
/// Сводное описание для Zadanie1
/// </summary>
[WebService(Namespace = "http://www.pac.by/webserv")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class Lab12Zadanie1 : WebService
{
    [WebMethod(Description = "Обратная строка")]
    public string Reverse(string message)
    {
        char[] arr = message.ToCharArray();
        Array.Reverse(arr);
        message = new string(arr);
        return message;
    }

    [WebMethod(Description = "Возвращение текущей даты (%год% %месяц% %день_недели% %время%)")]
    public string TimeNow()
    {
        string timeNow = DateTime.Now.Year + " "
            + DateTime.Now.Month + " "
            + DateTime.Now.DayOfWeek + " "
            + DateTime.Now.TimeOfDay;
        return timeNow;
    }

    [WebMethod(Description = "Перевод числа в двоичную, восьмеричную и шестнадцатеричную системы счисления")]
    public string ConvertNumber(int number)
    {
        string boolean = "Bool<" + Convert.ToString(number, 2) + ">";
        string oct = "Oct<" + Convert.ToString(number, 8) + ">";
        string hex = "Hex<" + Convert.ToString(number, 16) + ">";
        string answer = boolean + oct + hex;
        return answer;
    }

    [WebMethod(Description = "Выполенение арфиметичских действий для двух аргументов")]
    public string ArithmeticOperations(double arg1, double arg2)
    {
        string sum = "Sum<" + (arg1 + arg2) + ">";
        string subs = "Subs<" + (arg1 - arg2) + ">";
        string div = "Div<" + (arg1 / arg2) + ">";
        string mult = "Mult<" + (arg1 * arg2) + ">";

        string answer = sum + subs + div + mult;

        return answer;
    }

    [WebMethod(Description = "Вычисление площади круга")]
    public double SquareOfCircle(double r)
    {
        return Math.PI * Math.Pow(r, 2.0);
    }

    [WebMethod(Description = "Имя пользователя и приветствие ")]
    public string HelloWorldByLanguage()
    {
        string userName = User.Identity.Name;
        string hello = RegionInfo.CurrentRegion.Name == "RU" ? "Привет, мир!" : "Hello World!";
        string answer = userName + " " + hello;
        return answer;
    }
}
