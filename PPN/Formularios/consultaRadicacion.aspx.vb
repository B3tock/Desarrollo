Imports Pichincha.Modelo
Public Class Formularios_consultaRadicacion
    Inherits System.Web.UI.Page
    Dim objWSPichinchaRadicacion As New wsPichinchaRadicacion.ws_Radicacion
    Dim objModelo As New Pichincha.Modelo.clRadicacionSolicitudes
    Private Sub fnCargarUsuarioFecha()
        Me.lblUsuario.Text = Session("UserNom")
        Me.lblFechaUltIngreso.Text = Session("UserFecha")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserID") Is Nothing OrElse Session("UserID") = "" And Me.Request.Params("ReturnUrl") = Nothing Then Response.Redirect("../default.aspx?ReturnUrl=" & Request.Url.AbsolutePath, True)
        If Not Me.IsPostBack Then
            fnCargarUsuarioFecha()
            fnCargarResultados()
        End If

    End Sub
    Private Sub fnCargarResultados()
        Try

            If Not Me.Request.QueryString("CodRadicacion") Is Nothing Then
                Me.lblRespuesta.Text = RtaRadicacion
                Me.Label2.Text = Me.Request.QueryString("CodRadicacion")
            End If

        Catch ex As Exception
            Throw ex
        End Try


    End Sub

    Protected Sub btnVolver_Click(sender As Object, e As EventArgs) Handles btnVolver.Click
        Response.Redirect("frmMenu.aspx")
    End Sub
End Class
