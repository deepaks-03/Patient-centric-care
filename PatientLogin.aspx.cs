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

public partial class PatientLogin : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void register_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }
    protected void login_Click(object sender, EventArgs e)
    {
        Session["uname"]=txt_name.Text;
        using (SqlConnection con = new SqlConnection(CONT))
        {
            con.Open();
            string qry = "select * from register where uname='" + txt_name.Text + "' and pass='" + txt_pass.Text + "' and random='"+txt_random.Text+"'";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Response.Redirect("PatientDashboard.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Login Failed')</script>");
                    txt_name.Text = "";
                    txt_pass.Text = "";
                    txt_random.Text = "";
                }
            }
        }
    }
}