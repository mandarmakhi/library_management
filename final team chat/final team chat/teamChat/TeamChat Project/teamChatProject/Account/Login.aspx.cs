using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.Sql;

namespace teamChatProject.Account
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();
        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string chkuser = "select count(*) from tblAccount where UserName='" + txtUserName.Text + "'";
            SqlCommand com = new SqlCommand(chkuser, conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
          
            if (temp == 1) 
            {
                if (txtUserName.Text == "Admin" || txtUserName.Text == "admin" || txtUserName.Text == "ADMIN")
                {
                    string chkPassQuery1 = "select Password from tblAccount where UserName= '" + txtUserName.Text + "'";
                    SqlCommand Comm = new SqlCommand(chkPassQuery1, conn);
                    string pass1 = Comm.ExecuteScalar().ToString().Replace(" ", "");

                    conn.Close();
                    if (pass1 == txtPassword.Text)
                    {
                        Session["new"] = txtUserName.Text;
                        Response.Redirect("../Admin.aspx");
                    }

                }
                else
                {

                    string chkPassQuery = "select Password from tblAccount where UserName= '" + txtUserName.Text + "'";
                    SqlCommand passComm = new SqlCommand(chkPassQuery, conn);
                    string pass = passComm.ExecuteScalar().ToString().Replace(" ", "");

                    conn.Close();
                    if (pass == txtPassword.Text)
                    {
                        Session["new"] = txtUserName.Text;
                        Response.Redirect("../Home.aspx");
                    }
                    else
                    {
                        //Response.Write("Unmatched Combination of username and password");
                        Label5.Text = " Incorrect Credentials, Try again";
                    }

                }
            }
            else
            {
                //Response.Write("Username is not Registered with teamChat");
                Label5.Text = "Sorry !!! no such Username";
                
            }


        }

    }
}