using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy
{
    public partial class SignUp : System.Web.UI.Page
    {
        public string msg;

        protected void Page_Load(object sender, EventArgs e)
        {
            msg = (string)Session["mathMsg"];
            if (Request["username"] != null &&
                Request["password"] != null &&
                Request["design"] != null &&
                Request["country"] != null &&
                Request["service"] != null)
            {
                if (Request["design"].Equals("no"))
                {
                    msg = "Cannot continue until you like my website";
                }
                else if (Dal.ExistUser(Request["username"]))
                {
                    msg = "This username cannot be used";
                }
                else if ((string)Request["country"] == "mars" ||
                    (string)Request["country"] == "c_d_r" ||
                    (string)Request["country"] == "united_states")
                {
                    Session["mathUsername"] = Request["username"];
                    Session["mathPassword"] = Request["password"];
                    Session["mathDesign"] = Request["design"];
                    Session["mathCountry"] = Request["country"];
                    Session["mathService"] = Request["service"];

                    Response.Redirect("MathsQuestions.aspx");
                }
                else
                {
                    Dal.InsertUser(Request["username"],
                    Request["password"], Request["design"],
                    Request["country"], Request["service"]);

                    Session["username"] = Request["username"];
                    Session["bestDoorsNum"] = Dal.getUserDoors(Request["username"]);
                    Session["doorsNum"] = 0;

                    Response.Redirect("Homepage.aspx");
                }
            }
        }
    }
}