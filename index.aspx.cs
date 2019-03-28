using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // renkler butonu
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("renkler.aspx");
    }

    // sayilar butonu
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("sayilar.aspx");
    }

    // aile bireyleri butonu
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("aile_bireyleri.aspx");
    }

    // sözler
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("sozler.aspx");
    }
}