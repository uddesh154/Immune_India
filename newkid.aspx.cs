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

            SqlConnection conn1 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn1.Open();
            string checkuser = "select * from KidRecords where id='" + ID + "'";
            SqlCommand cmd = new SqlCommand(checkuser, conn1);
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.HasRows)
            {
                int id =Int64(rd.GetString(1));
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
        }

        private int Int64(string v)
        {
            throw new NotImplementedException();
        }
    }
}