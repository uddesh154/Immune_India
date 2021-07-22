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
    public partial class vaccinate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string vaccine = DropDownList1.Text;
            string ID = TextBox1.Text;
            string mail = TextBox2.Text;
            string mobile = TextBox3.Text;
            string date = TextBox4.Text;
            int done = 0;
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from kidRecords where id='" + ID + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    done = 1;
                    conn.Close();
                }
                else
                {
                    Errorlabel.Text = "Invalid ID";
                }
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            if (done == 1)
            {
                try
                {
                    done = 0;
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    string checkuser = "select * from " + vaccine + " where id='" + ID + "'";
                    SqlCommand cmd = new SqlCommand(checkuser, conn);
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        Errorlabel.Text = "This kid has Already taken this vaccine";
                        conn.Close();
                    }
                    else
                    {
                        SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                        conn1.Open();
                        string insertQuery = "insert into " + vaccine + " values ('" + ID + "','" + mail + "','" + mobile + "','" + date + "')";
                        SqlCommand cmd1 = new SqlCommand(insertQuery, conn1);
                        cmd1.ExecuteNonQuery();

                        done1.Text = "Vaccination Successful!!!thank you";
                        done = 1;
                        conn1.Close();
                    }
                }


                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
            if(done==1)
            { 
                string to = mail; //To address    
                string from = "siddhisuryawanshi2000@gmail.com"; //From address    
                MailMessage message = new MailMessage(from, to);

                string mailbody = "Congratulations!!<br> You have been successfully vaccinated with "+vaccine+" Vaccine on : "+date;
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
                    Errorlabel.Text = "Vaccination Successful!!!thank you";
                }

                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }

        }
    }
}