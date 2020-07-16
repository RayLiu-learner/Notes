using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace _20171847126_刘瑞
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application.Lock();
            Application["counter"] = 0;
            Application.UnLock();
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application.Lock();
            int currentCount = Convert.ToInt16(Application["counter"].ToString());
            Application["counter"] = currentCount + 1;
            Application.UnLock();
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application.Lock();
            int currentCount = Convert.ToInt16(Application["counter"].ToString());
            Application["counter"] = currentCount - 1;
            Application.UnLock();
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}