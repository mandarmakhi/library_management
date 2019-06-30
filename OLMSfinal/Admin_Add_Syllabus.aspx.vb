Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.UI.WebControls
Imports System.IO
Imports System.Web
Imports System.Data
Partial Class Admin_Add_Syllabus
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection
    Dim cmd As New SqlCommand
    Dim da As New SqlDataAdapter
    Dim dr As SqlDataReader
    Dim dt As New DataTable
    Dim i As Integer

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Add_Records.aspx")
    End Sub

    Protected Sub btnadd_sylbus_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd_sylbus.Click
        Dim extension As String = System.IO.Path.GetExtension(FileUpload_sylbus.PostedFile.FileName).ToLower()
        Dim Type As String = Nothing
        If (extension = ".pdf") Then
            Dim intFileNameLength As Integer
            Dim strFileNamePath As String
            Dim strFileNameOnly As String
            strFileNamePath = FileUpload_sylbus.PostedFile.FileName
            intFileNameLength = InStr(1, StrReverse(strFileNamePath), "\")
            strFileNameOnly = Mid(strFileNamePath, (Len(strFileNamePath) - intFileNameLength) + 2)
            Dim br As New BinaryReader(FileUpload_sylbus.PostedFile.InputStream)
            cmd.CommandText = "INSERT into Syllabus(sylbus_id, sylbus_name, file_name, content,sid) values(@id,@name,@file,@cont,@si)"
            cmd.Connection = cn
            cmd.Parameters.Add("@id", txtsylbus_id.Text)
            cmd.Parameters.Add("@name", txtsylbus_name.Text)
            cmd.Parameters.Add("@file", FileUpload_sylbus.FileName)
            cmd.Parameters.Add("@cont", br.ReadBytes(FileUpload_sylbus.PostedFile.ContentLength))
            cmd.Parameters.Add("@si", i)
            cmd.ExecuteNonQuery()
            cn.Close()
            lbladd_sylbus.Visible = True
            lbladd_sylbus.Text = "File Upload Success."
            txtsylbus_id.Text = Nothing
            txtsylbus_name.Text = Nothing
        Else
            lbladd_sylbus.Visible = True
            lbladd_sylbus.Text = "Not a Valid file format"
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
            cmd.CommandText = "select max(sid) from syllabus"
            cmd.Connection = cn
            i = cmd.ExecuteScalar()
            i = i + 1
            txtsylbus_id.Text = "S" + i.ToString()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub txtsylbus_id_TextChanged(sender As Object, e As System.EventArgs) Handles txtsylbus_id.TextChanged

    End Sub
End Class
