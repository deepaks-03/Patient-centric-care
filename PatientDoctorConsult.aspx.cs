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

public partial class PatientDoctorConsult : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_sess2.Text = Session["uname"].ToString();
        if (!Page.IsPostBack)
        {
            SqlConnection con = new SqlConnection(CONT);
            SqlCommand cmd = new SqlCommand("select * from hospital_entry", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddl_spl.DataSource = dt;
            ddl_spl.DataBind();
        }  
    }
    protected void hd_Click(object sender, EventArgs e)
    {
        SqlConnection conn2 = new SqlConnection(CONT);
        conn2.Open();
        string qry2 = "select id from hospital_entry where spl='" + ddl_spl.Text + "'";
        SqlCommand cmd2 = new SqlCommand(qry2, conn2);
        SqlDataAdapter adap2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        adap2.Fill(ds2);
        txt_id.Text = ds2.Tables[0].Rows[0][0].ToString();

        SqlConnection conn3 = new SqlConnection(CONT);
        conn3.Open();
        string qry3 = "select address from hospital_entry where spl='" + ddl_spl.Text + "'";
        SqlCommand cmd3 = new SqlCommand(qry3, conn3);
        SqlDataAdapter adap3 = new SqlDataAdapter(cmd3);
        DataSet ds3 = new DataSet();
        adap3.Fill(ds3);
        txt_address.Text = ds3.Tables[0].Rows[0][0].ToString();

        SqlConnection conn4 = new SqlConnection(CONT);
        conn4.Open();
        string qry4 = "select name from hospital_entry where spl='" + ddl_spl.Text + "'";
        SqlCommand cmd4 = new SqlCommand(qry4, conn4);
        SqlDataAdapter adap4 = new SqlDataAdapter(cmd4);
        DataSet ds4 = new DataSet();
        adap4.Fill(ds4);
        txt_name.Text = ds4.Tables[0].Rows[0][0].ToString();


        SqlConnection conn5 = new SqlConnection(CONT);
        conn5.Open();
        string qry5 = "select dname from hospital_entry where spl='" + ddl_spl.Text + "'";
        SqlCommand cmd5 = new SqlCommand(qry5, conn5);
        SqlDataAdapter adap5 = new SqlDataAdapter(cmd5);
        DataSet ds5 = new DataSet();
        adap5.Fill(ds5);
        txt_dname.Text = ds5.Tables[0].Rows[0][0].ToString();


        SqlConnection conn6 = new SqlConnection(CONT);
        conn6.Open();
        string qry6 = "select phno from hospital_entry where spl='" + ddl_spl.Text + "'";
        SqlCommand cmd6 = new SqlCommand(qry6, conn6);
        SqlDataAdapter adap6 = new SqlDataAdapter(cmd6);
        DataSet ds6 = new DataSet();
        adap6.Fill(ds6);
        txt_phno.Text = ds6.Tables[0].Rows[0][0].ToString();
    }
    protected void submit_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CONT))
        {
            con.Open();
            string qry = "insert into doctor_details values('"+lbl_sess2.Text+"','" + ddl_spl.Text + "','" + txt_id.Text + "','" + txt_address.Text + "','" + txt_name.Text + "','" + txt_dname.Text + "','" + txt_phno.Text + "','" + txt_details.Text + "')";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript'>alert('Wait for hospital approval')</script>");
            }
        }
        clear_data();
    }

    private void clear_data()
    {
        txt_address.Text = "";
        txt_details.Text = "";
        txt_dname.Text = "";
        txt_id.Text = "";
        txt_name.Text = "";
        txt_phno.Text = "";
    }
}