Imports Pichincha.Modelo

Public Class Formularios_consultaIndentificacion
    Inherits System.Web.UI.Page

    Dim objModelo As New Pichincha.Modelo.clRadicacionSolicitudes
    Dim objWSConsulta As New WSConsulta.wsConsultaEstado

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("UserID") Is Nothing OrElse Session("UserID") = "" And Request.Params("ReturnUrl") = Nothing Then Response.Redirect("../default.aspx?ReturnUrl=" & Request.Url.AbsolutePath, True)
        If Not IsPostBack Then
            fnCargarUsuarioFecha()
            fnCargarRespuesta()
        End If

    End Sub

    Private Sub fnCargarUsuarioFecha()
        Me.lblUsuario.Text = Session("UserNom")
        Me.lblFechaUltIngreso.Text = Session("UserFecha")
    End Sub

    Private Sub fnCargarRespuesta()
        Dim strTipo As String
        Dim strValor As String

        Try

            If Not Request.QueryString("Tipo") Is Nothing AndAlso Not Request.QueryString("Valor") Is Nothing Then
                strTipo = Request.QueryString("Tipo")
                strValor = Request.QueryString("Valor")
                fnGetSWConsulta(strTipo, strValor)

            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Private Sub fnGetSWConsulta(ByVal strTipo As String, ByVal strValor As String)
        Dim node As System.Xml.XmlNode
        Dim Errorm As String
        Dim CodEstado As Integer
        Try

            node = objWSConsulta.Consulta(strTipo, CLng(strValor))
            Errorm = ""
            If node.ChildNodes(0).Attributes(0).Name = "error" Then
                Errorm = node.ChildNodes(0).Attributes("error").Value
            End If

            If Errorm = "" Then
                If node.ChildNodes(0).Attributes.Count >= 5 Then

                    CodEstado = node.ChildNodes(0).Attributes("CODESTADO").Value

                    Me.lblNomCliente.Text = node.ChildNodes(0).Attributes("NOM").Value
                    Me.lblResultado.Text = node.ChildNodes(0).Attributes(0).Value.ToUpper()

                    If CodEstado <> 3 Then

                        Me.pnlNegacion.Visible = False

                        ' Original
                        Me.lblValorAprobado.Text = String.Format("$ {0}", Decimal.Round(Convert.ToDecimal(node.ChildNodes(0).Attributes(1).Value), 2).ToString("N0"))

                        Me.lblTarjeta.Text = String.Format("$ {0}", Decimal.Round(Convert.ToDecimal(node.ChildNodes(0).Attributes("VLRPRETC").Value), 2).ToString("N0"))

                        Me.lblExpress.Text = String.Format("$ {0}", Decimal.Round(Convert.ToDecimal(node.ChildNodes(0).Attributes("VLRPREPX").Value), 2).ToString("N0"))

                        Me.lblCampana.Text = node.ChildNodes(0).Attributes("TIPOCAMP").Value


                    Else
                        'Estado = 3
                        Me.pnlDatos.Visible = False

                        Dim j As Integer
                        For j = 0 To node.ChildNodes(0).Attributes("CAUSAL").Value.Split(",").Length - 1
                            Me.listCauNegacion.Items.Add(node.ChildNodes(0).Attributes("CAUSAL").Value.Split(",")(j).ToString())
                        Next

                    End If
                    

                End If
            ElseIf node.ChildNodes(0).Attributes(0).Value = "1" Then
                Me.pnlDatos.Visible = False
                Me.pnlNegacion.Visible = False
                Me.pnlError.Visible = True
                Me.lblError.Text = node.ChildNodes(0).Attributes(1).Value
            End If

        Catch ex As Exception
            Throw ex
        End Try
    End Sub

    Protected Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        Response.Redirect("~/Default.aspx")
    End Sub

    Protected Sub btnMenu_Click(sender As Object, e As EventArgs) Handles btnMenu.Click
        Response.Redirect("~/Formularios/frmMenu.aspx")
    End Sub

    Protected Sub btnRegresar_Click(sender As Object, e As EventArgs) Handles btnRegresar.Click
        Response.Redirect("~/Formularios/Consulta.aspx")
    End Sub
End Class
