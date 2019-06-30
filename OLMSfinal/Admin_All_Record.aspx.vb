Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_Book_Record
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Record.aspx")
    End Sub
End Class
