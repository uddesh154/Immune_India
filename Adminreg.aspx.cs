using System;
using System.Collections.Generic;
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
            SqlConnection con = new SqlConnection(@"Data Source=.\LAPTOP-B10KEF4P\SQLEXPRESS01;Database=immune;Integrated Security=True;User Instance=True;");
            con.Open();
            SqlCommand cmd = new SqlCommand("select*from Admin where username='" + UserId.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
            {
                Errormsg.Text = "User Name is Already Exist";
                this.Errormsg.ForeColor = Color.Red;
            }
            else
            {
                Errormsg.Text = "UserName is Available";
                this.Errormsg.ForeColor = Color.Red;
            }
            con.Close();
        }
        protected void registration_Click(object sender, EventArgs e)
        {
           
                SqlConnection con = new SqlConnection(@"Data Source=.\;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True;");
                con.Open();
                SqlCommand cmd = new SqlCommand("insert into Admin values(@a,@b)", con);
                cmd.Parameters.AddWithValue("a", UserId.Text);
                cmd.Parameters.AddWithValue("b", pass.Text);
                cmd.ExecuteNonQuery();
                Session["name"] = UserId.Text;
                Response.Redirect("default.aspx");
                con.Close();
         
        }
       

  
    }
}