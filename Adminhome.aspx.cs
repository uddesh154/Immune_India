using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Vaccinatorlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addadmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Adminreg.aspx");
        }

        protected void addhospital_Click(object sender, EventArgs e)
        {
            Response.Redirect("Hospitalreg.aspx");
        }
    }
}