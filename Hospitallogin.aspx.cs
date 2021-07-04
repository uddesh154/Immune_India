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
    public partial class childlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void login_Click(object sender, EventArgs e)
        {
            string userid = UserId.Text;
            string password = Password.Text;
            try
            {
                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn1.Open();
                string checkuser = "select * from Hospital where emailID='" + userid + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn1);
                SqlDataReader rd = cmd.ExecuteReader();

                if (rd.HasRows)
                {
                    while (rd.Read())
                    {

                        if (rd.GetString(1).Equals(password))
                        {
                            Response.Redirect("Hospitalhome.aspx");
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