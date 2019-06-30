Imports System.Data.SqlClient
Partial Class Member_Create
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Protected Sub btn_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_submit.Click

            cmd.CommandText = "insert into Members values('" & txtmember_id.Text & "','" & txtmember_name.Text & "','" & txtpassword.Text & "','" & txtmember_add.Text & "','" & txtcontact_no.Text & "','" & txteducation.Text & "','" & txtemail_id.Text & "')"
            cmd.Connection = cn
            cmd.ExecuteNonQuery()
            Session("member_name") = txtmember_name.Text
            Response.Redirect("Member_Welcomoe.aspx")
       
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim i As Integer
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
            cmd.CommandText = "select max(mem_id) from Members"
            cmd.Connection = cn
            i = cmd.ExecuteScalar()
            i = i + 1
            txtmember_id.Text = i.ToString()



        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub
End Class
