using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20171847126_刘瑞
{
    public partial class Counter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text ="当前在线人数为："+ Application["counter"].ToString();
        }
    }
}