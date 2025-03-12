using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy
{
    public partial class Login : System.Web.UI.Page
    {
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Request["username"];
            string psw = Request["password"];
            string likeDesign = Request["design"];

            if (username != null && psw != null && likeDesign != null)
            // לכאן ניכנס רק כשהטופס מולא ונשלח
            {
                if (Request["design"].Equals("no"))
                {
                    msg = "Cannot continue until you like my website";
                }
                else if (Dal.IsValidUserPassword(username, psw))
                {
                    Session["username"] = username;
                    Session["bestDoorsNum"] = Dal.getUserDoors(username);
                    Session["doorsNum"] = 0;

                    if (username == "RotemDar")
                    {
                        Session["admin"] = true;
                    }
                    else
                    {
                        Session["admin"] = false;
                    }

                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    Session.Clear();
                    Session["username"] = "Guest";
                    msg = "Wrong username or password";
                }
            }
        }
    }
}