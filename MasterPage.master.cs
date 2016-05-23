using System;
using System.Web;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SiteMap.CurrentNode != null && 
            SiteMap.CurrentNode.ToString() == SiteMap.RootNode.ToString() || SiteMap.CurrentNode.ToString() == string.Empty)
            Page.Title = "КСИТ / Павлов Роман";
        else if (SiteMap.CurrentNode != null)
            Page.Title = SiteMap.CurrentNode + " / " + SiteMap.RootNode;
    }
}
