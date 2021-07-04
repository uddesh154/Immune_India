using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication7
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            //siddhisuryawanshi2000@gmail.com
            //siddhivinayak
            msg.From = new MailAddress("uddeshbhingarde@gmail.com");
            msg.To.Add("uddeshbhingarde@gmail.com");
            msg.Subject = "test";
            msg.Body = "Test Content";
            //msg.Priority = MailPriority.High;


            using (SmtpClient client = new SmtpClient())
            {
                client.EnableSsl = false;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("uddeshbhingarde@gmail.com", "uddesh@123");
                client.Host = "smtp.gmail.com";
                client.Port = 587;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                try
                {
                    client.Send(msg);
                    Response.Write("Mail sent");
                }
                catch (Exception ex)
                {
                    Response.Write("error" + ex.ToString());
                }


            }
        }
          
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(txtTo.Text);

            //mail.To.Add  
            mail.From = new MailAddress(txt_from.Text);
            mail.Subject = txtSubject.Text;
            mail.Body = txtBody.Text;
            mail.IsBodyHtml = true;

            //Attach file using FileUpload Control and put the file in memory stream  
            if (fileUpload1.HasFile)
            {
                mail.Attachments.Add(new Attachment(fileUpload1.PostedFile.InputStream, fileUpload1.FileName));
            }
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address  
            smtp.Credentials = new System.Net.NetworkCredential
                 ("uddeshbhingarde@gmail.com", "uddesh@123");
            //Or your Smtp Email ID and Password  
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(mail);
                Response.Write("Mail sent Successfuly");
            }
            catch(Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}