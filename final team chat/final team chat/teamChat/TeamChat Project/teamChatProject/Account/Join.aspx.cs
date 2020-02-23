using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.ComponentModel;

namespace teamChatProject.Account
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           /* if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string chkuser = "SELECT count(*) from tblAccount WHERE UserName='" + txtUserName.Text + "'";

                SqlCommand com = new SqlCommand(chkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    Response.Write("Sorry User name already taken");
                 
                }


            }*/

            Label1.Text = "";

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();



                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string chkuser = "SELECT count(*) from tblAccount WHERE UserName='" + txtUserName.Text + "'";

                SqlCommand com = new SqlCommand(chkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                //conn.Close();
                if (temp == 1)
                {
                    Label1.Text=("Sorry User name already taken");

                }
                else
                {
                    string insertQuery = "insert into tblAccount(ID,UserName,Email,Password) values (@ID ,@UserName ,@email ,@password)";
                    SqlCommand com1 = new SqlCommand(insertQuery, conn);
                    com1.Parameters.AddWithValue("@ID", newGUID.ToString());
                    com1.Parameters.AddWithValue("@UserName", txtUserName.Text);
                    com1.Parameters.AddWithValue("@Email", txtEmail.Text);
                    com1.Parameters.AddWithValue("@Password", txtPassword.Text);

                    com1.ExecuteNonQuery();

                   // Response.Write("Registration Suceeded, Please move to login page");
                    Label1.Text = "Registration Done, Goto Login window";
                    conn.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("Error :" + ex.ToString());
                Label1.Text=("User Name not Available");
            }
        }

    }
}
