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

public partial class HospitalReportSending : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(CONT);
            SqlCommand cmd = new SqlCommand("select * from doctor_details1", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddl_uname.DataSource = dt;
            ddl_uname.DataBind();
        }  
    }
    protected void hd_Click(object sender, EventArgs e)
    {
        SqlConnection conn2 = new SqlConnection(CONT);
        conn2.Open();
        string qry2 = "select details from doctor_details1 where uname='" + ddl_uname.Text + "'";
        SqlCommand cmd2 = new SqlCommand(qry2, conn2);
        SqlDataAdapter adap2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        adap2.Fill(ds2);
        txt_details.Text = ds2.Tables[0].Rows[0][0].ToString();
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
            SqlCommand cmd = new SqlCommand("insert into hospital_report values('" + ddl_uname.Text + "','"+txt_details.Text+"','" + path + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Report Send')</script>");
            clear_data();
        }
    }

    private void clear_data()
    {
        txt_details.Text = "";
    }
}