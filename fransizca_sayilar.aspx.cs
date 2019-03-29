using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class renkler : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection cnn = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source="+Server.MapPath("~/App_Data/adem.accdb"));
        cnn.Open();
        OleDbCommand cmd = new OleDbCommand("select * from sayilar where sayi='"+Request.QueryString["id"].ToString()+"'",cnn);
        OleDbDataReader reader = cmd.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();
        cnn.Close();
    }
}