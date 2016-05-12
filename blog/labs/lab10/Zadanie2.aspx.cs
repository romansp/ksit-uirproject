using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class labs_lab10_Zadanie2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataList1.DataBind();
    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = e.Item.ItemIndex;
        DataList1.DataBind();
    }

    protected void DataList1_CancelCommand(object source, DataListCommandEventArgs e)
    {
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }

    protected void DataList1_UpdateCommand(object source, DataListCommandEventArgs e)
    {
        SqlDataSource1.UpdateParameters["Id"].DefaultValue = ((Label)e.Item.FindControl("IdLabel")).Text;
        SqlDataSource1.UpdateParameters["FirstName"].DefaultValue = ((TextBox)e.Item.FindControl("FirstNameTextBox")).Text;
        SqlDataSource1.UpdateParameters["LastName"].DefaultValue = ((TextBox)e.Item.FindControl("LastNameTextBox")).Text;
        SqlDataSource1.UpdateParameters["City"].DefaultValue = ((TextBox)e.Item.FindControl("CityTextBox")).Text;
        SqlDataSource1.UpdateParameters["Address"].DefaultValue = ((TextBox)e.Item.FindControl("AddressTextBox")).Text;
        SqlDataSource1.UpdateParameters["OperatorId"].DefaultValue = ((RadioButtonList)e.Item.FindControl("OperatorRadioButtonList")).SelectedValue;
        SqlDataSource1.UpdateParameters["Phone"].DefaultValue = ((TextBox)e.Item.FindControl("PhoneTextBox")).Text;

        SqlDataSource1.Update();
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }

    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        SqlDataSource1.DeleteParameters["Id"].DefaultValue = ((Label)e.Item.FindControl("IdLabel")).Text;
        SqlDataSource1.Delete();
        DataList1.EditItemIndex = -1;
        DataList1.DataBind();
    }
}