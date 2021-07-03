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
                string checkuser = "select * from Admin where ID='" + UserId.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    Errorlabel.Text = "Already Registered";
                    conn.Close();
                }
                else
                {
                    SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn1.Open();
                    string insertQuery = "insert into Admin(ID,password)values (@ID,@Password)";
                    SqlCommand cmd1 = new SqlCommand(insertQuery, conn1);
                    cmd1.Parameters.AddWithValue("@ID", UserId.Text);
                    cmd1.Parameters.AddWithValue("@Password", TextBox1.Text);


                    cmd1.ExecuteNonQuery();

                    Errorlabel.Text="Admin registeration Successfully!!!thank you";

                    conn1.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        

        }
    }
}