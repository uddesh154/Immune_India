using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net.Mail;
using System.Text;
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
            string visit = "https://localhost:44330/Adminlogin";
            int done = 0;
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
                    done = 1;
                    conn1.Close();
                }

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            if (done == 1)
            {
                string email = UserId.Text;
                string to = email; //To address    
                string from = "siddhisuryawanshi2000@gmail.com"; //From address    
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Congratulations!! <br> You are now registered admin for Immune India <br> Your ID = " + UserId.Text + "<br> Password = " + TextBox1.Text + "<br>" +
                    "In order to login <a href=" + visit + ">click here</a>"
                    ;
                message.Subject = "Congratulations!!!!";
                message.Body = mailbody;
                message.BodyEncoding = Encoding.UTF8;
                message.IsBodyHtml = true;
                SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                System.Net.NetworkCredential basicCredential1 = new
                System.Net.NetworkCredential("siddhisuryawanshi2000@gmail.com", "siddhivinayak");
                client.EnableSsl = true;
                client.UseDefaultCredentials = false;
                client.Credentials = basicCredential1;
                Response.Write("Mail Sent");
                try
                {
                    client.Send(message);
                    Errorlabel.Text = "Admin registeration Successfully!!!thank you";
                }

                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }

        }
    }
}