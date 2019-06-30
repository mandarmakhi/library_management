Imports System.Data.SqlClient
Partial Class Admin_Add_Book
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim da As New Data.SqlClient.SqlDataAdapter

    Protected Sub btnadd_book_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnadd_book.Click
        cmd.CommandText = "insert into Books (book_id, book_name, book_author,publisher,book_type,status) values('" & txtbook_id.Text & "','" & txtbook_name.Text & "','" & txtbook_author.Text & "','" & txtbook_publi.Text & "','" & ddlbook_type.SelectedItem.Text & "','n')"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()
        Session("book_id") = txtbook_id.Text
        Session("book_name") = txtbook_name.Text
        Session("book_author") = txtbook_author.Text
        Session("book_publisher") = txtbook_publi.Text

        txtbook_id.Text = Nothing
        txtbook_name.Text = Nothing
        txtbook_author.Text = Nothing
        txtbook_publi.Text = Nothing
        lbladd_book.Visible = True
        lbladd_book.Text = "Add Book Successfully.."
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim i As Integer
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
            cmd.CommandText = "select max(book_id) from books"
            cmd.Connection = cn
            i = cmd.ExecuteScalar()
            i = i + 1
            txtbook_id.Text = i.ToString()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub

    Protected Sub btn_back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_back.Click
        Response.Redirect("Admin_Add_Records.aspx")
    End Sub
End Class
