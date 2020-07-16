using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace _20171847126_刘瑞
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string u = Request.Form["user"].ToString();
            string p = Request.Form["pw"].ToString();

            if (u == "lr" && p == "20171847126")
            {


                Response.Redirect("index1.html");
            }
            else { 
                Response.Redirect("index2.html");
            }
        }
    }
}