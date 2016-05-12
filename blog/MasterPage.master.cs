using System;
using System.Web;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (SiteMap.CurrentNode != null && SiteMap.CurrentNode.ToString() == SiteMap.RootNode.ToString())
            Page.Title = "���� / ������ �����";
        else if (SiteMap.CurrentNode != null && SiteMap.CurrentNode.ToString() == "")
            Page.Title = "���� / ������ �����";
        else if (SiteMap.CurrentNode != null)
            Page.Title = SiteMap.CurrentNode + " / " + SiteMap.RootNode;
    }
}
