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


public partial class AdminLogin : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void login_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CONT))
        {
            con.Open();
            string qry = "select * from admin where uname='" + txt_name.Text + "' and pass='" + txt_pass.Text + "'";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.ExecuteNonQuery();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Response.Redirect("AdminDashboard.aspx");
                }
                else
                {
                    Response.Write("<script LANGUAGE='JavaScript'>alert('Login Failed')</script>");
                    txt_name.Text = "";
                    txt_pass.Text = "";
                }
            }
        }
    }
    protected void txt_name_TextChanged(object sender, EventArgs e)
    {

    }
}