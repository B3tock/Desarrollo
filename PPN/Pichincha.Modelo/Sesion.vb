Imports Microsoft.VisualBasic

Public Class Sesion
    Inherits System.Web.UI.Page

    Public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.AddHeader("Refresh", ((Session.Timeout * 60) + 5).ToString)
        If (Not (Session("SesionActiva")) Is Nothing) Then
            Response.Redirect("Login.aspx")
        End If
    End Sub
End Class
