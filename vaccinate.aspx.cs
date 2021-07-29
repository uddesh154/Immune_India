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

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from BCG where id='" + ID + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    vd = 1;
                    Done[0] = null;
                    

                }
                else
                {
                    vd = 0;
                    Done[0] = "BCG";
                }
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try
            {

                SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn1.Open();
                string checkuser1 = "select * from polio where id='" + ID + "'";
                SqlCommand cmd1 = new SqlCommand(checkuser1, conn1);
                SqlDataReader rd1 = cmd1.ExecuteReader();
                if (rd1.HasRows)
                {
                    vd = 1;
                    Done[1] = null;

                }
                else
                {
                    vd = 0;
                    Done[1] = "Polio";
                    
                }
                conn1.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try
            {
                SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn2.Open();
                string checkuser2 = "select * from Rota_virus where id='" + ID + "'";
                SqlCommand cmd2 = new SqlCommand(checkuser2, conn2);
                SqlDataReader rd2 = cmd2.ExecuteReader();
                if (rd2.HasRows)
                {
                    vd = 1;
                    Done[2] = null;

                }
                else
                {
                    vd = 0;
                    Done[2] = "Rota_Virus";
                    
                }
                conn2.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try
            {

                SqlConnection conn3 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn3.Open();
                string checkuser3 = "select * from Hepatatis_A where id='" + ID + "'";
                SqlCommand cmd3 = new SqlCommand(checkuser3, conn3);
                SqlDataReader rd3 = cmd3.ExecuteReader();
                if (rd3.HasRows)
                {
                    vd = 1;
                    Done[3] = null;

                }
                else
                {
                    vd = 0;
                    Done[3] = "Hepatatis_A";

                    
                }
                conn3.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try
            {
                SqlConnection conn4 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn4.Open();
                string checkuser4 = "select * from Booster where id='" + ID + "'";
                SqlCommand cmd4 = new SqlCommand(checkuser4, conn4);
                SqlDataReader rd4 = cmd4.ExecuteReader();
                if (rd4.HasRows)
                {
                    vd = 1;
                    Done[4] = null;
                    

                }
                else
                {
                    vd = 0;
                    Done[4] = "Booster";
                }
                conn4.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try
            {
                SqlConnection conn5 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn5.Open();
                string checkuser5 = "select * from TT where id='" + ID + "'";
                SqlCommand cmd5 = new SqlCommand(checkuser5, conn5);
                SqlDataReader rd5 = cmd5.ExecuteReader();
                if (rd5.HasRows)
                {
                    vd = 1;
                    Done[5] = null;
                    

                }
                else
                {
                    vd = 0;
                    Done[5] = "TT";
                }
                conn5.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try
            {
                SqlConnection conn6 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn6.Open();
                string checkuser6 = "select * from Influanzae where id='" + ID + "'";
                SqlCommand cmd6 = new SqlCommand(checkuser6, conn6);
                SqlDataReader rd6 = cmd6.ExecuteReader();
                if (rd6.HasRows)
                {
                    vd = 1;
                    Done[6] = null;

                }
                else
                {
                    vd = 0;
                    Done[6] = "Influanzae";
                    
                }
                conn6.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
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