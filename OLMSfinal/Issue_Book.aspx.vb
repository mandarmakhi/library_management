Imports System.Data.SqlClient
Partial Class Issue_Book
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader

    Protected Sub btnissue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnissue.Click
        cn.Open()
        cmd.CommandText = "insert into Library (book_id, book_name, book_author,publisher,mem_id,mem_name,issue_date,return_date) values('" & txtissue_id.Text & "','" & txtissue_name.Text & "','" & txtissue_author.Text & "','" & txtissue_publi.Text & "','" & txtissue_memid.Text & "','" & txtissue_memname.Text & "'," & txtissue_date.Text & "," & txtreturn_date.Text & ")"
        cmd.Connection = cn
        cmd.ExecuteNonQuery()
        cmd.CommandText = "update books set status='i' where book_id=" + txtissue_id.Text
        cmd.Connection = cn
        cmd.ExecuteNonQuery()


        MsgBox("Book Issued to " & txtissue_memname.Text & " and must be returned on or before " & txtreturn_date.Text, MsgBoxStyle.OkOnly, "OLMS")
        cn.Close()
        Response.Redirect("Member_Welcomoe.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtissue_memid.Text = Session("member_id")
        txtissue_memname.Text = Session("member_name")
        txtissue_id.Text = Session("issue_id")
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
        cmd.CommandText = "Select * from Books where book_id='" & txtissue_id.Text & "'"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            txtissue_name.Text = dr("book_name")
            txtissue_author.Text = dr("book_author")
            txtissue_publi.Text = dr("publisher")
        Loop
        cn.Close()
        txtissue_date.Text = Date.Now.Date
        txtreturn_date.Text = DateAdd(DateInterval.Day, 10, Date.Now.Date)
    End Sub

    Protected Sub btn_Back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Back.Click
        Response.Redirect("Member_Welcomoe.aspx")
    End Sub
End Class
