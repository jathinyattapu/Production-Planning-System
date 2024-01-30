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
    public partial class AddRole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            con.Open();
            string c = "proc_roleadd";
            SqlCommand cmd = new SqlCommand(c, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd.Parameters.AddWithValue("@d", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@e", TextBox4.Text);
            cmd.Parameters.AddWithValue("@f", TextBox5.Text);
            cmd.Parameters.AddWithValue("@g", TextBox6.Text);
            cmd.Parameters.AddWithValue("@h", TextBox7.Text);
            cmd.Parameters.AddWithValue("@i", TextBox8.Text);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            if (x != 0) { Label1.Visible = true; Label1.Text = "Role Added Successfully."; clear(); } else
            { Label1.Visible = true; Label1.Text = "Error! Please Check and try."; }
        }

        void clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = null;
            DropDownList1.SelectedValue = DropDownList2.SelectedValue = "0";
        }
    }
}