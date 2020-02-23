using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;



namespace teamChatProject
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // txtPost.Text = "";
          //  Label4.Text = "";
            //Label5.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into tblPosts values (@user,@post)";
            SqlCommand com1 = new SqlCommand(insertQuery, conn);
            com1.Parameters.AddWithValue("@user", Session["new"].ToString());
            com1.Parameters.AddWithValue("@post", txtPost.Text);
          
            com1.ExecuteNonQuery();
            Label4.Text = "Post Updated";
            //Response.Write=("Post Updated);
            conn.Close();
           // Label4.Text = "";
            txtPost.Text = "";
            
        }

    }
}