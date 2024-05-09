using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;

public partial class PatientLabtest : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        bindd();
        lbl_sess.Text = Session["uname"].ToString();

        SqlConnection conn2 = new SqlConnection(CONT);
        conn2.Open();
        string qry2 = "select address from register where uname='" + lbl_sess.Text + "'";
        SqlCommand cmd2 = new SqlCommand(qry2, conn2);
        SqlDataAdapter adap2 = new SqlDataAdapter(cmd2);
        DataSet ds2 = new DataSet();
        adap2.Fill(ds2);
        txt_address.Text = ds2.Tables[0].Rows[0][0].ToString();
    }

    private void bindd()
    {
        Random rn = new Random();
        int r = rn.Next(11111, 99999);
        txt_id.Text = r.ToString();
    }
    protected void register_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CONT))
        {
            con.Open();
            string qry = "insert into test values('" + lbl_sess.Text + "','" + txt_id.Text + "','" + txt_address.Text + "','" + txt_age.Text + "','" + ddl_mode.Text + "','" + txt_visit.Text + "','" + txt_ttype.Text + "','" + ddl_doctor.Text + "')";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript'>alert('Submitted Successfully')</script>");
            }
        }
        clear_data();
    }

    private void clear_data()
    {
        txt_ttype.Text = "";
       
        txt_visit.Text = "";
        txt_address.Text = "";
        txt_age.Text = "";
        txt_id.Text = "";
        ddl_mode.Text = "---Select---";
        ddl_doctor.Text = "---Select---";
    }
    
}