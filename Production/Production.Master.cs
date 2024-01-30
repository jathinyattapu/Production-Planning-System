using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Production_Planning_System.Production
{
    public partial class Production : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["uname"] != null)
                {
                    Label1.Text = Session["uname"].ToString();
                }
                else
                {
                    Label1.Visible=false;
                }
            }
            catch (Exception ex)
            {
                Label1.Text = "An error occurred: " + ex.Message;
            }
        }
    }
}