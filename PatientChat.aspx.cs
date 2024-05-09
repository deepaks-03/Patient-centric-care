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

public partial class PatientChat : System.Web.UI.Page
{
    string CONT = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        lbl_sess_sess.Text = Session["uname"].ToString();
        txt_name.Text = Session["uname"].ToString();
        if (!IsPostBack)
        {
            fill_grid();
        }
    }
    private void fill_grid()
    {
        SqlConnection conn = new SqlConnection(CONT);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from query1 where id='"+lbl_sess_sess.Text+"'", conn);
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adap.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void register_Click(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CONT))
        {
            con.Open();
            string qry = "insert into query values('" + txt_name.Text + "','" + txt_query.Text + "')";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript'>alert('Wait for lab reply')</script>");
            }
        }
        txt_query.Text = "";
    }
}