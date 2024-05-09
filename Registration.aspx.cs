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

public partial class Registration : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    private void bindd()
    {
        Random rn = new Random();
        int r = rn.Next(1111, 9999);
        txt_random.Text = r.ToString();
    }
    protected void back_Click(object sender, EventArgs e)
    {
        Response.Redirect("PatientLogin.aspx");
    }
    protected void register_Click(object sender, EventArgs e)
    {
            using (SqlConnection con = new SqlConnection(CONT))
            {
                con.Open();
                string qry = "insert into register values('" + txt_name.Text + "','" + txt_pass.Text + "','" + ddl_gender.Text + "','" + txt_dob.Text + "','" + txt_address.Text + "','" + txt_emailid.Text + "','" + txt_phno.Text + "','" + txt_random.Text + "')";
                using (SqlCommand cmd = new SqlCommand(qry, con))
                {
                    cmd.ExecuteNonQuery();
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Registered Successfully')</script>");
                }
            }
            clear_data();
    }

    private void clear_data()
    {
        txt_random.Text = "";
        txt_phno.Text = "";
        txt_pass.Text = "";
        txt_name.Text = "";
        txt_emailid.Text = "";
        txt_dob.Text = "";
        txt_address.Text = "";
        ddl_gender.Text = "---Select---";
    }
    protected void newrandom_Click(object sender, EventArgs e)
    {
        bindd();
    }
}