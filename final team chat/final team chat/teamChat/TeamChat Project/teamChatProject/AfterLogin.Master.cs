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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] == null)
            {
                Response.Redirect("Account/Login.aspx");
            }
         
                else
                {
                    Label1.Text = Session["new"].ToString();

                }

        }

        protected void btnLogout_Click(object sender, ImageClickEventArgs e)
        {
            Session.RemoveAll();

            Response.Redirect("Account/Login.aspx");
        }

        protected void btnSearch_Click(object sender, ImageClickEventArgs e)
        {
            if (txtSearchBox.Text == "")
            {
                Label2.Text = "Enter a name please";
            }

            else
            {
                
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string chkuser = "select count(*) from tblAccount where UserName='" + txtSearchBox.Text + "'";
                SqlCommand com = new SqlCommand(chkuser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp==1)
                {
                    Label2.Text ="User is Registered with teamChat";
                    
                }
                else
                    Label2.Text="User is Not Registered with team chat";
          
            }
           
        }

        
    }
}