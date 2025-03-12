using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy.GamePages
{
    public partial class GameMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["doorsNum"] != null)
            {
                int doorsNum = (int)Session["doorsNum"];
                doorsNum++;
                Session["doorsNum"] = doorsNum;
            }
        }
    }
}