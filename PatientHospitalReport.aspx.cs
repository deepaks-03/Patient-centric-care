using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class PatientHospitalReport : System.Web.UI.Page
{
    string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_sess5.Text = Session["uname"].ToString();
        if (!IsPostBack)
        {
            fill_grid();
            fill_grid1();
        }
    }

    private void fill_grid1()
    {
        SqlConnection conn = new SqlConnection(conString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from hospital_report where uname='" + lbl_sess5.Text + "'", conn);
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adap.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
    }

    protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Response.Clear();
        Response.ContentType = "application/octet-stream";
        Response.AppendHeader("Content-Disposition", "filename=" + e.CommandArgument);
        Response.TransmitFile(Server.MapPath("") + e.CommandArgument);
        Response.End();
    }

    private void fill_grid()
    {
        SqlConnection conn0 = new SqlConnection(conString);
        conn0.Open();
        SqlCommand cmd0 = new SqlCommand("select * from doctor_details1 where uname='" + lbl_sess5.Text + "'", conn0);
        SqlDataAdapter adap0 = new SqlDataAdapter(cmd0);
        DataSet ds0 = new DataSet();
        adap0.Fill(ds0);
        GridView1.DataSource = ds0;
        GridView1.DataBind();
    }
}