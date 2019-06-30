Imports System.Data.SqlClient
Imports System.Data
Partial Class Admin_Edit_Book
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

        'coding of fetch book_id fron Books table
        cmd.CommandText = "Select * from Books"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddledit_book.Items.Add(dr("book_id"))
        Loop
        cn.Close()

        'coding of fetch sylbus_id fron Syllabus table
        cn.Open()
        cmd.CommandText = "Select * from Syllabus"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_delete_sylbus.Items.Add(dr("sylbus_id"))
        Loop
        cn.Close()
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btnedit_book_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnedit_book.Click
        cn.Open()
        cmd.CommandText = "Delete from Books where book_id = '" & ddledit_book.SelectedItem.Text & "'"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("Admin_Welcome.aspx")
    End Sub

    Protected Sub btndelete_sylbus_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btndelete_sylbus.Click
        cn.Open()
        cmd.CommandText = "Delete from Syllabus where sylbus_id = '" & ddl_delete_sylbus.Text & "'"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("Admin_Welcome.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Welcome.aspx")
    End Sub
End Class
