using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class Adminreg : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
             if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from Admin where ID='" + UserId.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                cmd.ExecuteScalar();
                


                conn.Close();
        }

    }

        protected void UserId_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void login_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Admin(ID,password)values (@ID,@Password)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@ID", UserId.Text);
                cmd.Parameters.AddWithValue("@Password", TextBox1.Text);


                cmd.ExecuteNonQuery();

                Response.Write("Admin registeration Successfully!!!thank you");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
}