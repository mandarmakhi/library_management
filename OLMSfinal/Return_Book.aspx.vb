Imports System.Data.SqlClient

Partial Class Return_Book
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtreturn_id.Text = Session("returnbook_id")
        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try
        cmd.CommandText = "Select * from Library where book_id='" & txtreturn_id.Text & "'"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            txtreturn_name.Text = dr("book_name")
            txtreturn_author.Text = dr("book_author")
            txtreturn_publi.Text = dr("publisher")
            txtreturn_memid.Text = dr("mem_id")
            txtreturn_memname.Text = dr("mem_name")
            txtissue_date.Text = dr("issue_date")
            txtreturn_date.Text = dr("return_date")
        Loop
        cn.Close()
    End Sub

    Protected Sub btn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn.Click
        cn.Open()
        cmd.CommandText = "delete from Library where book_id='" & txtreturn_id.Text & "' "
        cmd.Connection = cn
        cmd.ExecuteNonQuery()
        cmd.CommandText = "update books set status='n' where book_id='" & txtreturn_id.Text & "' "
        cmd.Connection = cn
        cmd.ExecuteNonQuery()
        cn.Close()
        MsgBox("Book Returned", MsgBoxStyle.OkOnly, "OLMS")
        Session("returnbook_id") = Nothing
        Response.Redirect("Member_Welcomoe.aspx")
    End Sub

    Protected Sub btn_Back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Back.Click
        Response.Redirect("Member_Welcomoe.aspx")
    End Sub
End Class
