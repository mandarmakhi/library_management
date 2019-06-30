
Partial Class Library_Books
    Inherits System.Web.UI.Page

    Protected Sub btn_Back_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Back.Click
        Response.Redirect("Member_Home.aspx")
    End Sub
End Class
