using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class PatientViewTestes : System.Web.UI.Page
{
    string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Blood_Click(object sender, EventArgs e)
    {
        //string a='1';
        SqlConnection conn = new SqlConnection(conString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from lap_test where id='1'", conn);
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adap.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void urine_Click(object sender, EventArgs e)
    {
        //int a = '2';
        SqlConnection conn1 = new SqlConnection(conString);
        conn1.Open();
        SqlCommand cmd1 = new SqlCommand("select * from lap_test where id='2'", conn1);
        SqlDataAdapter adap1 = new SqlDataAdapter(cmd1);
        DataSet ds1 = new DataSet();
        adap1.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
    }
    protected void scan_Click(object sender, EventArgs e)
    {
       // int a = '3';
        SqlConnection conn2 = new SqlConnection(conString);
        conn2.Open();
        SqlCommand cmd2 = new SqlCommand("select * from lap_test where id='3'", conn2);
        SqlDataAdapter adap2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        adap2.Fill(ds2);
        GridView1.DataSource = ds2;
        GridView1.DataBind();
    }
}