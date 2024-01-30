using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Production_Planning_System.Manpower
{
    public partial class MP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Getdata();
        }

        void Getdata()
        {
            SqlConnection a1 = new SqlConnection("user id = sa;password=123;database=pps;data source=JATHIN");
            a1.Open();
            SqlCommand totalmp = new SqlCommand("select count(*) from manpower", a1);
            SqlCommand weld = new SqlCommand("select count(*) from manpower where trade='welder'", a1);
            SqlCommand fitt = new SqlCommand("select count(*) from manpower where trade='fitter'", a1);
            SqlCommand opt = new SqlCommand("select count(*) from manpower where trade='operator'", a1);
            SqlCommand fab = new SqlCommand("select count(*) from manpower where trade='fabricator'", a1);
            SqlCommand hel = new SqlCommand("select count(*) from manpower where trade='helper'", a1);
            SqlCommand sup = new SqlCommand("select count(Trade) from manpower where trade='supervisor'", a1);
            Label1.Text = totalmp.ExecuteScalar().ToString();
            Label2.Text = weld.ExecuteScalar().ToString();
            Label3.Text = fitt.ExecuteScalar().ToString();
            Label4.Text = opt.ExecuteScalar().ToString();
            Label5.Text = fab.ExecuteScalar().ToString();
            Label6.Text = hel.ExecuteScalar().ToString();
            Label7.Text = sup.ExecuteScalar().ToString();

            a1.Close();
        }
    }
}