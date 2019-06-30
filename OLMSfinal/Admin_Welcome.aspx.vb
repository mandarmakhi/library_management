
Partial Class Admin_Welcome
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_Welcome.Visible = True
        lbl_Welcome.Text = Session("admin_name")
    End Sub

    Protected Sub btnlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogout.Click
        Session("admin_name") = Nothing
        Response.Redirect("Admin_Login.aspx")
    End Sub
End Class