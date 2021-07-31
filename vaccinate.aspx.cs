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
            int done = 1;
           
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
                        Errorlabel.Text = " ";
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
                try
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
                
                    client.Send(message);
                    
                }

                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string ID = TextBox1.Text;
            string[] Done =new string[7];
            string[] vaccines = new string[] { "BCG","polio", "Rota_virus", "Hepatatis_A", "Booster","TT", "Influanzae" };
            int vd = 0;
            //TO check valied ID
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from kidRecords where id='" + ID + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
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

            //TO check Vaccination Status
            for (int i = 0; i < 7; i++)
            {
                try
                {
                    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                    conn.Open();
                    string checkuser = "select * from "+ vaccines[i] +" where id='" + ID + "'";
                    SqlCommand cmd = new SqlCommand(checkuser, conn);
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.HasRows)
                    {
                        vd = 1;
                        Done[i] = null;


                    }
                    else
                    {
                        vd = 0;
                        Done[i] = vaccines[i];
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }
            }
            if(vd==1)
            {
                Errorlabel.Text = "Vaccination done";
            }
            else {
                Button2.Visible = false;
                Label1.Visible = true;
                Label2.Visible = true;
                Label3.Visible = true;
                Label4.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                DropDownList1.Visible = true;
                TextBox4.Visible = true;
                Button1.Visible = true;
                DropDownList1.Items.Add("Select");

                for(int i=0;i<7;i++)
                {
                    if(Done[i]!=null)
                    {
                        DropDownList1.Items.Add(Done[i]);
                    }

                }

                
            }
        }
    }
}