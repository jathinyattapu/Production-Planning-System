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
            Getdata();
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


        void Getdata()
        {
            SqlConnection a1 = new SqlConnection("user id = sa;password=123;database=pps;data source=JATHIN");
            a1.Open();
            //Manpower
            SqlCommand totalmp = new SqlCommand("select count(*) from manpower", a1);
            SqlCommand weld = new SqlCommand("select count(*) from manpower where trade='welder'", a1);
            SqlCommand fitt = new SqlCommand("select count(*) from manpower where trade='fitter'", a1);
            SqlCommand opt = new SqlCommand("select count(*) from manpower where trade='operator'", a1);
            SqlCommand fab = new SqlCommand("select count(*) from manpower where trade='fabricator'", a1);
            SqlCommand hel = new SqlCommand("select count(*) from manpower where trade='helper'", a1);
            SqlCommand sup = new SqlCommand("select count(Trade) from manpower where trade='supervisor'", a1);

            //Material
            SqlCommand totalmtl = new SqlCommand("select sum(qty) from material", a1);
            SqlCommand ch = new SqlCommand("select sum(qty) from material where mdes='MS Channel'", a1);
            SqlCommand flat = new SqlCommand("select sum(qty) from material where mdes='MS Flat'", a1);
            SqlCommand pipe = new SqlCommand("select sum(qty) from material where mdes='MS Pipe'", a1);
            SqlCommand angle = new SqlCommand("select sum(qty) from material where mdes='MS Angle'", a1);
            SqlCommand sheet = new SqlCommand("select sum(qty) from material where mdes='MS Sheet'", a1);
            SqlCommand rod = new SqlCommand("select sum(qty) from material where mdes='MS Rod'", a1);

            Label11.Text = totalmp.ExecuteScalar().ToString();
            Label12.Text = weld.ExecuteScalar().ToString();
            Label13.Text = fitt.ExecuteScalar().ToString();
            Label14.Text = opt.ExecuteScalar().ToString();
            Label15.Text = fab.ExecuteScalar().ToString();
            Label16.Text = hel.ExecuteScalar().ToString();
            Label17.Text = sup.ExecuteScalar().ToString();


            Label21.Text = totalmtl.ExecuteScalar().ToString();
            Label22.Text = ch.ExecuteScalar().ToString();
            Label23.Text = flat.ExecuteScalar().ToString();
            Label24.Text = pipe.ExecuteScalar().ToString();
            Label25.Text = angle.ExecuteScalar().ToString();
            Label26.Text = sheet.ExecuteScalar().ToString();
            Label27.Text = rod.ExecuteScalar().ToString();

            a1.Close();
        }

    }
}