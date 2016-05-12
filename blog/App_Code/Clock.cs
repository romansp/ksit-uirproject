using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for Clock
/// </summary>
public class Clock
{
	public Clock()
	{
		// TODO: Add constructor logic here
		//
	}
    public int Hour
    {
        get { return Hour; }
        set { Hour = value; }
    }

    public int Minute
    {
        get { return Minute; }
        set { Minute = value; }
    }

    public int Second
    {
        get { return Second; }
        set { Second = value; }
    }
}
