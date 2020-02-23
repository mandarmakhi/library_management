using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace teamChatProject
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            if( txtCurrPassword.Text=="" || txtNewPassword.Text=="" || txtConfirmPassword.Text=="")
            {
                Label3.Text = "Any TextBox can not be empty";
            }
            else
            {
            if (txtNewPassword.Text == txtConfirmPassword.Text)
            {


                string updatePassword = "update tblAccount set Password = '" + txtNewPassword.Text + "' where UserName='" + Session["new"].ToString() + "' and Password='"+txtCurrPassword.Text+"'";
                SqlCommand com = new SqlCommand(updatePassword, conn);
                int temp = (com.ExecuteNonQuery());

                if (temp == 1)
                {
                    Label3.Text = "Update Succeeded";
                }
                else
                {
                    Label3.Text = "Sorry! Wrong Password";
                }
            }

            else
            {
                Label3.Text=" New password Unmatched";
            }

               
            }
            conn.Close();
            
        }
    }
}