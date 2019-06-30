Imports System.Data.SqlClient
Partial Class Admin_Login
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub btnadmin_login_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadmin_login.Click

        cmd.CommandText = "Select * from Admin_login Where admin_name = '" & Trim(txtadmin_name.Text) & "' and admin_pwd = '" & Trim(txtadmin_pwd.Text) & "' "
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Session("admin_name") = txtadmin_name.Text
            Response.Redirect("Admin_Welcome.aspx")
        Else
            lbladmin_msg.Visible = True
            lbladmin_msg.Text = " Invalid User Name and Password! "
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub
End Class
