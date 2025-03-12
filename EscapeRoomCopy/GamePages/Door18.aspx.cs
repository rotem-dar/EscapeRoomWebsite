using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy.GamePages
{
    public partial class Door18 : System.Web.UI.Page
    {
        public string oldDoors = "";
        public string oldTime = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            int oldDoorsNum = (int)Session["bestDoorsNum"];
            int newDoorsNum = (int)Session["doorsNum"];
            newDoorsNum++;

            if ((oldDoorsNum == 0) || (oldDoorsNum > newDoorsNum))
            {
                string username = (string)Session["username"];
                Dal.updateDoors(username, newDoorsNum);
            }
        }
    }
}