using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Collections;
using System.Net.Mail;

public partial class Prescription : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(CONT);
            SqlCommand cmd = new SqlCommand("select * from test", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddl_uname.DataSource = dt;
            ddl_uname.DataBind();
        }  
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        if (fileupload.HasFile)
        {
            string str = fileupload.FileName;
            fileupload.PostedFile.SaveAs(Server.MapPath(".") + "//upload/" + str);
            string path = "//upload//" + str.ToString();
            SqlConnection conn = new SqlConnection(CONT);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into pres values('" + ddl_uname.Text + "','"+txt_id.Text+"','"+txt_address.Text+"','"+txt_mode.Text+"','" + path + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Report Send')</script>");
            clear_data();
           
        }
    }

private void clear_data()
{
    txt_address.Text = "";
    txt_id.Text = "";
    txt_mode.Text = "";
}
    
    protected void hd_Click(object sender, EventArgs e)
    {
        SqlConnection conn2 = new SqlConnection(CONT);
        conn2.Open();
        string qry2 = "select id from test where uname='" + ddl_uname.Text + "'";
        SqlCommand cmd2 = new SqlCommand(qry2, conn2);
        SqlDataAdapter adap2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        adap2.Fill(ds2);
        txt_id.Text = ds2.Tables[0].Rows[0][0].ToString();

        SqlConnection conn3 = new SqlConnection(CONT);
        conn3.Open();
        string qry3 = "select address from test where uname='" + ddl_uname.Text + "'";
        SqlCommand cmd3 = new SqlCommand(qry3, conn3);
        SqlDataAdapter adap3 = new SqlDataAdapter(cmd3);
        DataSet ds3 = new DataSet();
        adap3.Fill(ds3);
        txt_address.Text = ds3.Tables[0].Rows[0][0].ToString();

        SqlConnection conn4 = new SqlConnection(CONT);
        conn4.Open();
        string qry4 = "select mode from test where uname='" + ddl_uname.Text + "'";
        SqlCommand cmd4 = new SqlCommand(qry4, conn4);
        SqlDataAdapter adap4 = new SqlDataAdapter(cmd4);
        DataSet ds4 = new DataSet();
        adap4.Fill(ds4);
        txt_mode.Text = ds4.Tables[0].Rows[0][0].ToString();

        SqlConnection conn9 = new SqlConnection(CONT);
        conn9.Open();
        string qry9 = "select emailid from register where uname='" + ddl_uname.Text + "'";
        SqlCommand cmd9 = new SqlCommand(qry9, conn9);
        SqlDataAdapter adap9 = new SqlDataAdapter(cmd9);
        DataSet ds9 = new DataSet();
        adap9.Fill(ds9);
        txt_email.Text = ds9.Tables[0].Rows[0][0].ToString();
    }
}