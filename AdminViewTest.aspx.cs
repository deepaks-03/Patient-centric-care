using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class AdminViewTest : System.Web.UI.Page
{
    string conString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_grid();
        }
    }
    private void fill_grid()
    {
        SqlConnection conn = new SqlConnection(conString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("select * from test", conn);
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adap.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label uname = (Label)row.FindControl("uname");

        using (SqlConnection con = new SqlConnection(conString))
        {
            con.Open();
            string qry = "delete test where uname='" + uname.Text + "'";
            using (SqlCommand cmd = new SqlCommand(qry, con))
            {
                cmd.CommandType = CommandType.Text;
                cmd.ExecuteNonQuery();
            }
        }
        fill_grid();
    }

    protected void OnRowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        fill_grid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label uname = (Label)row.FindControl("uname");
        Label id = (Label)row.FindControl("id");
        Label address = (Label)row.FindControl("address");
        Label age = (Label)row.FindControl("age");
        Label mode = (Label)row.FindControl("mode");
        Label doctor = (Label)row.FindControl("doctor");
        Label ttype = (Label)row.FindControl("ttype");
        TextBox timing = (TextBox)row.FindControl("txt_time");
        TextBox date = (TextBox)row.FindControl("txt_date");


        using (SqlConnection connec = new SqlConnection(conString))
        {
            connec.Open();
            string qry = "insert into test1 values('" + uname.Text + "','" + id.Text + "','" + address.Text + "','" + age.Text + "','" + mode.Text + "','" + doctor.Text + "','" + timing.Text + "','" + date.Text + "','" + ttype.Text + "')";
            using (SqlCommand cmd = new SqlCommand(qry, connec))
            {
                cmd.ExecuteNonQuery();
                Response.Write("<script LANGUAGE='JavaScript'>alert('Time Assigned Successfully')</script>");
            }
        }
        GridView1.EditIndex = -1;
        fill_grid();
    }

    protected void OnCancel(object sender, EventArgs e)
    {
        GridView1.EditIndex = -1;
        fill_grid();
    }
}