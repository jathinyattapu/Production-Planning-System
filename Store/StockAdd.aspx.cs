using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Production_Planning_System.Store
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Authorize"].ToString());
            con.Open();
            string c = "proc_procmtladd";
            SqlCommand cmd = new SqlCommand(c, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@a", TextBox1.Text);
            cmd.Parameters.AddWithValue("@b", TextBox2.Text);
            cmd.Parameters.AddWithValue("@c", TextBox3.Text);
            cmd.Parameters.AddWithValue("@d", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@e", DropDownList2.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@f", TextBox4.Text);
            int x = cmd.ExecuteNonQuery();
            con.Close();
            if (x != 0) { Label1.Visible = true; Label1.Text = "Material Added Successfully."; clear(); }
            else
            { Label1.Visible = true; Label1.Text = "Error! Please Check and try."; }
        }

        void clear()
        {
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = null;
            DropDownList1.SelectedValue = DropDownList2.SelectedValue = "0";
        }

    }
}