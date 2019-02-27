
Partial Class PaginaError
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.lblError.Text = Server.GetLastError().ToString

    End Sub
End Class
