using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy
{
    public partial class MathsQuestions : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["q1"] != null)
            {
                if (int.Parse(Request["q1"]) == 5 &&
                    int.Parse(Request["q2"]) == 11 &&
                    int.Parse(Request["q3"]) == 35 &&
                    int.Parse(Request["q4"]) == 190 &&
                    int.Parse(Request["q5"]) == 10 &&
                    int.Parse(Request["q6"]) == 4 &&
                    int.Parse(Request["q7"]) == 12 &&
                    int.Parse(Request["q8"]) == 0 &&
                    int.Parse(Request["q9"]) == 4 &&
                    int.Parse(Request["q10"]) == 4)
                {
                    Dal.InsertUser((string)Session["mathUsername"],
                    (string)Session["mathPassword"], (string)Session["mathDesign"],
                    (string)Session["mathCountry"], (string)Session["mathService"]);

                    Session["username"] = (string)Session["mathUsername"];
                    Session["bestDoorsNum"] = Dal.getUserDoors((string)Session["mathUsername"]);
                    Session["doorsNum"] = 0;

                    Response.Redirect("Homepage.aspx");
                }
                else
                {
                    Session["mathMsg"] = "You failed the maths exam. Please try again.";
                    Response.Redirect("SignUp.aspx");
                }
            }
        }
    }
}