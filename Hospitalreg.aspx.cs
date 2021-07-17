using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
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
            string email = TextBox4.Text;
            string to = email; //To address    
            string from = "siddhisuryawanshi2000@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = "Congratulations!!<br> Hospital is successfully registered on Immune India Platform <br> Your ID = " + email + "<br> Password = " + TextBox2.Text;
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
                Errorlabel.Text = "Hospital registeration Successfully!!!thank you";
            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
}


