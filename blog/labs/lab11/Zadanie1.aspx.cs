﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab11_Zadanie1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataKey dataKey = GridView1.DataKeys[GridView1.SelectedIndex];
        if (dataKey != null)
        {
            String number = dataKey.Value.ToString();
            XmlDataSource2.XPath = String.Format("/record-book/book[@number='{0}']/disciplines/discipline", number);
        }
        DataList1.Visible = true;
    }
}