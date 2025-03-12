using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy
{
    public partial class Homepage : System.Web.UI.Page
    {
        public string newTime = "";
        public string oldTime = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["bestDoorsNum"] = Dal.getUserDoors((string)Session["username"]);
        }
    }
}