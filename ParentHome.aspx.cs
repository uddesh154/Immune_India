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
    public partial class ParentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           string id= Session["id"].ToString();
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkuser = "select * from BCG where id='" + id + "'";
                SqlCommand cmd = new SqlCommand(checkuser, conn);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.HasRows)
                {
                    BCG.Text = "Completed";
                   
                }
                else
                {
                    BCG.Text = "Incomplete";
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
                string checkuser1 = "select * from polio where id='" + id + "'";
                SqlCommand cmd1 = new SqlCommand(checkuser1, conn1);
                SqlDataReader rd1 = cmd1.ExecuteReader();
                if (rd1.HasRows)
                {
                    Polio.Text = "Completed";
                    
                }
                else
                {
                    Polio.Text = "Incomplete";
                }
                conn1.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try { 
            SqlConnection conn2 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn2.Open();
                string checkuser2 = "select * from Rota_virus where id='" + id + "'";
                SqlCommand cmd2 = new SqlCommand(checkuser2, conn2);
                SqlDataReader rd2 = cmd2.ExecuteReader();
                if (rd2.HasRows)
                {
                    Rotavirus.Text = "Completed";
                    
                }
                else
                {
                    Rotavirus.Text = "Incomplete";
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
                string checkuser3 = "select * from Hepatatis_A where id='" + id + "'";
                SqlCommand cmd3 = new SqlCommand(checkuser3, conn3);
                SqlDataReader rd3 = cmd3.ExecuteReader();
                if (rd3.HasRows)
                {
                    hepatatis.Text = "Completed";

                }
                else
                {
                    hepatatis.Text = "Incomplete";
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
                string checkuser4 = "select * from Booster where id='" + id + "'";
                SqlCommand cmd4 = new SqlCommand(checkuser4, conn4);
                SqlDataReader rd4 = cmd4.ExecuteReader();
                if (rd4.HasRows)
                {
                    Booster.Text = "Completed";

                }
                else
                {
                    Booster.Text = "Incomplete";
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
                string checkuser5 = "select * from TT where id='" + id + "'";
                SqlCommand cmd5 = new SqlCommand(checkuser5, conn5);
                SqlDataReader rd5 = cmd5.ExecuteReader();
                if (rd5.HasRows)
                {
                    TT.Text = "Completed";

                }
                else
                {
                    TT.Text = "Incomplete";
                }
                conn5.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
            try { 
            SqlConnection conn6 = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn6.Open();
                string checkuser6 = "select * from Influanzae where id='" + id + "'";
                SqlCommand cmd6 = new SqlCommand(checkuser6, conn6);
                SqlDataReader rd6 = cmd6.ExecuteReader();
                if (rd6.HasRows)
                {
                    influe.Text = "Completed";
                    
                }
                else
                {
                    influe.Text = "Incomplete";
                }
                conn6.Close();
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
}