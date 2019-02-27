Imports System.Windows.Forms
Imports System.Web.UI.WebControls.TextBox

Partial Class Formularios_Consulta
    Inherits System.Web.UI.Page
    Protected Sub Command1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Command1.Click
        Dim strTipo As String
        Dim strValor As String
        If Me.IsValid Then
            strValor = Me.TxtSolicitud.Text
            'define que tipo de solicitud es la que se va a realizar
            If Me.cmdTipoSolicitud.Items(0).Selected Then
                strTipo = "1"
                Response.Redirect("~/Formularios/consultaIndentificacion.aspx?Tipo=" & strTipo & "&Valor=" & strValor)
            ElseIf Me.cmdTipoSolicitud.Items(1).Selected Then
                strTipo = "2"
                Response.Redirect("~/Formularios/consultaIndentificacion.aspx?Tipo=" & strTipo & "&Valor=" & strValor)
            End If

        End If
    End Sub
    Private Sub fnCargarUsuarioFecha()
        Me.lblUsuario.Text = Session("UserNom")
        Me.lblFechaUltIngreso.Text = Session("UserFecha")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("UserID") Is Nothing OrElse Session("UserID") = "" And Me.Request.Params("ReturnUrl") = Nothing Then Response.Redirect("../default.aspx?ReturnUrl=" & Request.Url.AbsolutePath, True)
        If Not Me.IsPostBack Then
            fnCargarUsuarioFecha()
        End If


    End Sub

    Protected Sub Page_PreRender(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.PreRender
        ' Me.TxtSolicitud.CustomAttributes.Add("onBlur", "ValidaFormularioF();")

    End Sub
    
    Protected Sub btnMenu_Click(sender As Object, e As EventArgs) Handles btnMenu.Click
        Response.Redirect("~/Formularios/frmMenu.aspx")
    End Sub

    Protected Sub btnSalir_Click(sender As Object, e As EventArgs) Handles btnSalir.Click
        Response.Redirect("~/Default.aspx")
    End Sub
End Class
