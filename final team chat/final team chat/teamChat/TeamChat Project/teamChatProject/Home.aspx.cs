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
    public partial class Home : System.Web.UI.Page{
    
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text ="";
            Label6.Text = "";
        //    txtMessage.Text = "";
        //    txtNewTeam.Text = "";
            //SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            //conn.Open();

            //SqlCommand cmd = new SqlCommand("select teamName from tblChat", conn);
            //DropDownList1.DataMember= cmd.ExecuteReader().ToString();
            //DropDownList1.DataTextField="teamName";
            //DropDownList1.DataValueField = "teamName";
            //DropDownList1.DataBind();

            //conn.Close();

        }

    
        protected void Button2_Click(object sender, EventArgs e)
        {
            refresh1();
        }

        private void refresh1()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select users,chatText from tblChat where teamName='" + DropDownList1.Text + "'", conn);

            GridView1.DataSource = cmd.ExecuteReader();
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            if (txtMessage.Text == "")
            {
                Label6.Text = "send msg cannot blank";

            }
            else if(DropDownList1.Text=="")
            {
                Label6.Text = "join team first";
            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblChat values('" + DropDownList1.Text + "','" + Session["new"].ToString() + "','" + txtMessage.Text + "')", conn);
                cmd.ExecuteNonQuery();
                refresh1();
                txtMessage.Text = "";
                conn.Close();

            }
        }

        protected void btnNewTeam_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            conn.Open();
            if (txtNewTeam.Text == "")
            {
                Label5.Text ="team name cannot blank";

            }
            else
            {
                SqlCommand cmd = new SqlCommand("insert into tblChat values('" + txtNewTeam.Text + "','" + Session["new"].ToString() + "','welcome')", conn);
                cmd.ExecuteNonQuery();
                refresh1();
                Response.Redirect("Home.aspx");
                conn.Close();
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label4.Text = DropDownList1.Text;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            refresh1();
        }

        

       
    }
}