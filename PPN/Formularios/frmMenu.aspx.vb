Imports System.Configuration

Partial Class Formularios_frmMenu
    Inherits System.Web.UI.Page
    Private Sub fnCargarUsuarioFecha()
        Me.lblUsuario.Text = Session("UserNom")
        Me.lblFechaUltIngreso.Text = Session("UserFecha")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserID") Is Nothing OrElse Session("UserID") = "" And Me.Request.Params("ReturnUrl") = Nothing Then Response.Redirect("../default.aspx?ReturnUrl=" & Request.Url.AbsolutePath, True)
        If Not Me.IsPostBack Then
            fnCargarUsuarioFecha()
        End If

        IsSessionTimedOut()
    End Sub

    Public Function IsSessionTimedOut() As Boolean


        If (Page.Request.Cookies("ASP.NET_SessionId") Is Nothing) Then
            'debe abandonar la session pues expiro!!!!
            Session.Abandon()
        End If





    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles btnRadicacion.Click
        Response.Redirect("~/Formularios/fmrRadicacionSolicitudes.aspx")
    End Sub

    Protected Sub Consultas_Click(sender As Object, e As EventArgs) Handles Consultas.Click
        Response.Redirect("~/Formularios/Consulta.aspx")
    End Sub

    Protected Sub BtnSalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        Response.Redirect("~/Default.aspx")
    End Sub
End Class
