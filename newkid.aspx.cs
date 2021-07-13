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
    public partial class newkid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            Random random = new Random();
            int ID = random.Next(10000000);
            string firstname = TextBox1.Text;
            string middlename = TextBox2.Text;
            string lastname = TextBox3.Text;
            string mothername = TextBox4.Text;
            string date1 = TextBox5.Text;
            string time1 = TextBox6.Text;
            string gender = RadioButtonList1.Text;
            string parentemail = TextBox7.Text;
            string mobile = TextBox9.Text;
            string address = TextBox10.Text;
            string password = TextBox8.Text;
            string gend;
            string visit = "https://localhost:44330/Login";

            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn1.Open();
            string checkuser = "select * from KidRecords where id='" + ID + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn1);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                int id =Int64(rd.GetString(0));
                while (id == ID)
                {
                    ID = random.Next(10000000);
                }
                conn1.Close();
            }
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
               
            
            SqlCommand cmd1 = conn.CreateCommand();

                cmd1.CommandText = "insert into KidRecords values ('"+ID+ "','" + firstname + "','" + middlename + "','" + lastname + "','" + mothername + "','" + date1 + "','" + time1 + "','" + gender + "','" + parentemail + "','" + mobile + "','" + address + "','" + password + "')";


            try
            {

                cmd1.ExecuteNonQuery();

                    Errorlabel.Text = "Kid registeration Successfully!!!thank you";

                    conn.Close();
                
            }


            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            
            if(gender.Equals("male"))
            {
                gend = "Boy";
            }
            else
            {
                gend = "Girl";
            }
            string to = parentemail; //To address    
            string from = "siddhisuryawanshi2000@gmail.com"; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = "<b>Congratulations!!<b><br> You are blessed with a baby "+ gend +"<br>Your login credentials - <br>ID = " + ID + "<br> Password = " + password
                +"<br> To know your kid's vaccination schedule <a href="+ visit +">click here</a>";
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
                Errorlabel.Text = "Kid registeration Successfully!!!  Thank you";
            }

            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
        
        private int Int64(string v)
        {
            throw new NotImplementedException();
        }

    }
}