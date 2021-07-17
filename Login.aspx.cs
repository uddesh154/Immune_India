using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void parentlogin_Click(object sender, EventArgs e)
        {
            string userid = UserId.Text;
            string password = Password.Text;
            Session["id"] = userid;
            try
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn1.Open();
                string checkuser = "select * from KidRecords where id='" + userid + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn1);
                SqlDataReader rd = cmd.ExecuteReader();

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {

                        if (rd.GetString(11).Equals(password))
                        {
                            Response.Redirect("ParentHome.aspx");
                        }
                        else
                        {
                            Errorlabel.Text = "Invalid ID And Password";
                        }

                    }

                }

                conn1.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}