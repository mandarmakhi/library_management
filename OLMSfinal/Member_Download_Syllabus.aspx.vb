Imports System.Data.SqlClient
Imports System.Exception
Imports System.IO.FileNotFoundException
Partial Class Member_Download_Syllabus
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub btn_Back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Back.Click
        Response.Redirect("Member_Welcomoe.aspx")
    End Sub

  

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtdwd_name.Text = Session("dwdsylbus_name")
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
        cmd.CommandText = "Select * from Syllabus where sylbus_name='" & txtdwd_name.Text & "'"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            txtdwd_id.Text = dr("sylbus_id")
            txtdwd_file.Text = dr("file_name")
        Loop
        cn.Close()
    End Sub

    Protected Sub btn_dwnd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_dwnd.Click
        cn.Open()

        cmd.CommandText = "Select * from Syllabus where file_name ='" & txtdwd_file.Text & "'"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            'Response.ContentType = dr("content")
            'Response.BinaryWrite(dr("content"))
            Response.WriteFile(dr("file_name"))
            'Response.BinaryWrite(dr("file_name"))
        Loop
        cn.Close()
    End Sub
End Class
