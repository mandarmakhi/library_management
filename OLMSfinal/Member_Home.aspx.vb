Imports System.Data.SqlClient
Partial Class Member_Home
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub btnmember_crAC_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmember_crAC.Click
        Response.Redirect("Member_Create.aspx")
    End Sub

    Protected Sub btnmember_submit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnmember_submit.Click
        cmd.CommandText = "Select * from Members Where mem_id ='" & Trim(txtmem_id.Text) & "' and mem_name = '" & Trim(txtmember_name.Text) & "' and password = '" & Trim(txtmember_pwd.Text) & "'"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        If dr.HasRows Then
            Session("member_id") = txtmem_id.Text
            Session("member_name") = txtmember_name.Text
            Response.Redirect("Member_Welcomoe.aspx")
        Else
            lblmember.Visible = True
            lblmember.Text = " Invalid User Name and Password! "
        End If

    End Sub
End Class
