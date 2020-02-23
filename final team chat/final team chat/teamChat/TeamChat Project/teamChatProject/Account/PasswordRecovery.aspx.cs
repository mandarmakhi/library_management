using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;


namespace teamChatProject.AccountControls
{
    public partial class PasswordRecovery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string str;
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
         try
            {



                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                SqlCommand command = new SqlCommand("SELECT Email FROM tblAccount WHERE Email= @Email", conn);
                command.Parameters.AddWithValue("@Email", txtUserEmail.Text);
                SqlDataReader reader = command.ExecuteReader();
                if (reader.HasRows)
                {

                    reader.Read();
                    str = reader.GetString(0);

                 }
                else
                {
                    Label1.Text = "Email ID does not Exists";
                }

                if (str == txtUserEmail.Text)
                {
                    MailMessage mail = new MailMessage();
                    mail.From = new System.Net.Mail.MailAddress("aalokdeep.sspn@gmail.com", " your New Password");

                    // The important part -- configuring the SMTP client
                    SmtpClient smtp = new SmtpClient();
                    smtp.Port = 587;   // [1] You can try with 465 also, I always used 587 and got success
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network; // [2] Added this
                    smtp.UseDefaultCredentials = false; // [3] Changed this
                    smtp.Credentials = new System.Net.NetworkCredential("aalokdeep.sspn@gmail.com", "********");  // [4] Added this. Note, first parameter is NOT string.
                    smtp.Host = "smtp.gmail.com";

                    //recipient address
                    mail.To.Add(new MailAddress(txtUserEmail.Text));
                    mail.IsBodyHtml = true;
                    string st = "Your Password is: <br>" + str;
                    mail.Subject = "Your New Password Of teamChat is: ";
                    mail.Body = st;
                    smtp.Send(mail);
                    Label1.Text = "Mail has been sent";

                }
                else
                    Label1.Text = "Email ID does not Exists";

            }
            catch (Exception ew)
            {
                Label1.Text = "Email Server Failed, Or unable to conncet to internet";

            }
        }

    }
}