﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab2_Zadanie2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        /*добавление атрибутов текстовым полям для отчистки по фокусу курсора*/
        TextBox1.Attributes.Add("onfocus", "this.value=''");
        TextBox2.Attributes.Add("onfocus", "this.value=''");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        RegularExpressionValidator1.Validate();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        RegularExpressionValidator1.Validate();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox3.Text = "";
        if (!(TextBox1.Text.ToString() == "" || TextBox2.Text.ToString() == ""))
        {
            double a = Convert.ToDouble(TextBox1.Text.ToString().Replace(".", ","));
            double b = Convert.ToDouble(TextBox2.Text.ToString().Replace(".", ","));
            double result = a * b;
            TextBox3.Text = Convert.ToString(result);
        }
    }
}