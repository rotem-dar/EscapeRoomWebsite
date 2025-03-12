using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EscapeRoomCopy
{
    public partial class Users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null ||
                (bool)Session["admin"] == false)
                notAdmin.InnerHtml = "Only admins can view this information.";
            else
            {
                // this is an admin, show everything
                tableDiv.InnerHtml = Dal.UsersDataTableToHTML(Request["filter"]);
            }

        }
    }
}