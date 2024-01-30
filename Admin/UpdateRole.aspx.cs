using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Production_Planning_System.Admin
{
    public partial class Update_Role : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        void getroles()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            try
            {
                con.Open();
                string q = "select * from roles where id=@a";
                SqlCommand cmd = new SqlCommand(q, con);
                cmd.Parameters.AddWithValue("@a", TextBox1.Text);
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds, "roles");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                GridView1.Visible = true;
                Label1.Visible = false;
            }
            catch (SqlException)
            {
                Label1.Text = "Connection Lost";
                Label1.Visible = true;
            }
            finally
            {
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            getroles();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getroles();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getroles();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("Label1");
            Label l1 = (Label)c1;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            con.Open();
            string q = "proc_roledelete";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", l1.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Successfully Deleted";
            GridView1.Visible = false;
            TextBox1.Text = null;
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            Control c1 = row.FindControl("TextBox1");
            TextBox t1 = (TextBox)c1;
            Control c2 = row.FindControl("TextBox2");
            TextBox t2 = (TextBox)c2;
            Control c3 = row.FindControl("TextBox3");
            TextBox t3 = (TextBox)c3;
            Control c4 = row.FindControl("TextBox4");
            TextBox t4 = (TextBox)c4;
            Control c5 = row.FindControl("TextBox5");
            TextBox t5 = (TextBox)c5;
            Control c6 = row.FindControl("TextBox6");
            TextBox t6 = (TextBox)c6;
            Control c7 = row.FindControl("TextBox7");
            TextBox t7 = (TextBox)c7;
            Control c8 = row.FindControl("TextBox8");
            TextBox t8 = (TextBox)c8;
            Control c9 = row.FindControl("TextBox9");
            TextBox t9 = (TextBox)c9;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            con.Open();
            string q = "proc_roleupadate";
            SqlCommand cmd = new SqlCommand(q, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", t1.Text);
            cmd.Parameters.AddWithValue("@b", t2.Text);
            cmd.Parameters.AddWithValue("@c", t3.Text);
            cmd.Parameters.AddWithValue("@d", t4.Text);
            cmd.Parameters.AddWithValue("@e", t5.Text);
            cmd.Parameters.AddWithValue("@f", Convert.ToDateTime(t6.Text));
            cmd.Parameters.AddWithValue("@g", t7.Text);
            cmd.Parameters.AddWithValue("@h", t8.Text);
            cmd.Parameters.AddWithValue("@i", t9.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            getroles();
            Label1.Visible = true;
            Label1.Text = "Successfully Updated";
        }
    }
}