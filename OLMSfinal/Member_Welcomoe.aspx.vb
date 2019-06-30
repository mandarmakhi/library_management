Imports System.Data.SqlClient
Partial Class Member_Welcomoe
    Inherits System.Web.UI.Page
    Dim cn As New Data.SqlClient.SqlConnection
    Dim cmd As New Data.SqlClient.SqlCommand
    Dim dr As Data.SqlClient.SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblmember_wel.Visible = True
        lblmember_wel.Text = Session("member_name")

        Try
            cn.ConnectionString = ("Data Source=.\sqlexpress;Initial Catalog=lib;Integrated security=true")
            cn.Open()
        Catch ex As Exception
            MsgBox(ex.Message.ToString)
        End Try

        'Fetch Book Id from Books Table
        cmd.CommandText = "Select * from Books"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_issuebook.Items.Add(dr("book_id"))
        Loop
        Session("issue_id") = ddl_issuebook.SelectedItem.Text
        cn.Close()



        'Fetch Book Id from Library Table
        cn.Open()
        cmd.CommandText = "Select * from Library where mem_name ='" & lblmember_wel.Text & "'"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_returnbook.Items.Add(dr("book_id"))
        Loop
        cn.Close()
        Session("returnbook_id") = ddl_returnbook.SelectedValue


        'Fetch sylbus_is from Syllabus Table
        cn.Open()
        cmd.CommandText = "Select * from Syllabus"
        cmd.Connection = cn
        dr = cmd.ExecuteReader
        Do While dr.Read
            ddl_down_sylbus.Items.Add(dr("sylbus_name"))
        Loop
        cn.Close()
        Session("dwdsylbus_name") = ddl_down_sylbus.SelectedValue
    End Sub

    Protected Sub btn_issue_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_issue.Click
        Response.Redirect("Issue_Book.aspx")
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("member_id") = Nothing
        Session("member_name") = Nothing
        Session("book_id") = Nothing
        Session("book_name") = Nothing
        Session("book_author") = Nothing
        Session("book_publisher") = Nothing
        Response.Redirect("Member_Home.aspx")
    End Sub

    Protected Sub btn_return_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_return.Click
        Response.Redirect("Return_Book.aspx")
    End Sub

    Protected Sub btn_dwnd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_dwnd.Click
        Response.Redirect("Member_Download_Syllabus.aspx")
    End Sub
End Class
