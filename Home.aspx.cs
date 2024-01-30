using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Production_Planning_System.Home
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection a1 = new SqlConnection("user id = sa;password=123;database=pps;data source=JATHIN");
            a1.Open();
            string q = "select count(*) from roles where id = '" + TextBox1.Text + "' and password = '" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(q, a1);
            object p = cmd.ExecuteScalar();
            if ((int)p != 0)
            {
                string q1 = "select Department from roles where id =" + TextBox1.Text;
                SqlCommand cmd1 = new SqlCommand(q1, a1);
                object result = cmd1.ExecuteScalar();
                string p1 = result.ToString();
                string q2 = "select name from roles where id =" + TextBox1.Text;
                SqlCommand cmd2 = new SqlCommand(q2, a1);
                object result1 = cmd2.ExecuteScalar();
                Session["uname"] = result1.ToString();
                if (p1 == "Store")
                { a1.Close(); Server.Transfer("~/Store/Store.aspx"); }
                else
                { a1.Close(); Server.Transfer("~/Production/Production.aspx"); }
            } 
            else             
            { Response.Write("In-Valid User"); }
            a1.Close();            
        }


    }
}