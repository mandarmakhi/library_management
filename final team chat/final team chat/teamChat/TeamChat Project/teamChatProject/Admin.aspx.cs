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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] == null)
            {
                Response.Redirect("Account/Login.aspx");
            }
            else
            {
                // Response.Write("Admin");
                //replace with label
                lblAdmin.Text = Session["new"].ToString();
            }
        }

        protected void btnAdminPost_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into tblAdminPost values (@AdminPost)";
            SqlCommand com1 = new SqlCommand(insertQuery, conn);
            com1.Parameters.AddWithValue("@AdminPost", txtAdminPost.Text);
            

            com1.ExecuteNonQuery();

            //Response.Write("Post Updated");
            lblUpdateStatus.Text = "Post updated successfully";
            
            conn.Close();
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Account/Login.aspx");
        }
    }
}