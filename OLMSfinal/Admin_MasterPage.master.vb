Imports System.Data.SqlClient
Partial Class Admin_MasterPage
    Inherits System.Web.UI.MasterPage
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
End Class

