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
    public partial class Hospitalreg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from Hospital where emailID='" + TextBox4.Text + "'";
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
                    string insertQuery = "insert into Hospital(name,password,location,emailID)values (@name,@password,@location,@emailID)";
                    SqlCommand cmd1 = new SqlCommand(insertQuery, conn1);
                    cmd1.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd1.Parameters.AddWithValue("@password", TextBox2.Text);
                    cmd1.Parameters.AddWithValue("@location", DropDownList1.Text);
                    cmd1.Parameters.AddWithValue("@emailID", TextBox4.Text);


                    cmd1.ExecuteNonQuery();

                    Errorlabel.Text="Hospital registeration Successfully!!!thank you";

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


