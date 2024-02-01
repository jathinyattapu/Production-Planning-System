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
    public partial class Store1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Getdata();
        }
        void Getdata()
        {
            SqlConnection a1 = new SqlConnection("user id = sa;password=123;database=pps;data source=JATHIN");
            a1.Open();
            SqlCommand totalmtl = new SqlCommand("select sum(qty) from material", a1);
            SqlCommand ch = new SqlCommand("select sum(qty) from material where mdes='MS Channel'", a1);
            SqlCommand flat = new SqlCommand("select sum(qty) from material where mdes='MS Flat'", a1);
            SqlCommand pipe = new SqlCommand("select sum(qty) from material where mdes='MS Pipe'", a1);
            SqlCommand angle = new SqlCommand("select sum(qty) from material where mdes='MS Angle'", a1);
            SqlCommand sheet = new SqlCommand("select sum(qty) from material where mdes='MS Sheet'", a1);
            SqlCommand rod = new SqlCommand("select sum(qty) from material where mdes='MS Rod'", a1);
            Label1.Text = totalmtl.ExecuteScalar().ToString();
            Label2.Text = ch.ExecuteScalar().ToString();
            Label3.Text = flat.ExecuteScalar().ToString();
            Label4.Text = pipe.ExecuteScalar().ToString();
            Label5.Text = angle.ExecuteScalar().ToString();
            Label6.Text = sheet.ExecuteScalar().ToString();
            Label7.Text = rod.ExecuteScalar().ToString();

            a1.Close();
        }
    }
}