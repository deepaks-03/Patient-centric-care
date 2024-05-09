using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class HospitalViewBooking : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("select * from doctor_details", conn);
        SqlDataAdapter adap = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        adap.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        Label id = (Label)row.FindControl("id");

        using (SqlConnection con = new SqlConnection(conString))
        {
            con.Open();
            string qry = "delete doctor_details where id='" + id.Text + "'";
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
        Label spl = (Label)row.FindControl("spl");
        Label name = (Label)row.FindControl("name");
        Label dname = (Label)row.FindControl("dname");
        Label phno = (Label)row.FindControl("phno");
        Label details = (Label)row.FindControl("details");
        TextBox timing = (TextBox)row.FindControl("txt_time");
        TextBox date = (TextBox)row.FindControl("txt_date");


        using (SqlConnection connec = new SqlConnection(conString))
        {
            connec.Open();
            string qry = "insert into doctor_details1 values('" + uname.Text + "','" + spl.Text + "','" + id.Text + "','" + address.Text + "','" + name.Text + "','" + dname.Text + "','" + phno.Text + "','" + details.Text + "','" + timing.Text + "','" + date.Text + "')";
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