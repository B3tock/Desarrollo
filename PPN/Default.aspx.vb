Imports System.Xml.XmlNodeList
Imports system.Xml.XmlNode
Imports System.Xml.XmlAttributeCollection
Imports System.Xml.XmlDocument
Imports System.Xml.XmlElement
Imports Pichincha.Modelo
Partial Class _Default

    Inherits System.Web.UI.Page

    Dim objInversora As New wsInversora.Service
    Dim XmlDocument As Xml
    'Public UserID As Integer

    Private Function LeerArchivoXML(ByVal strUsuario As String, ByVal strclave As String)


        Dim node As System.Xml.XmlNode

        Dim strCampo1 As String
        Try


            node = objInversora.AutenticacionApplm(strUsuario, strclave, appM, Request.ServerVariables("remote_addr"))

            If node.ChildNodes.ItemOf(0).LocalName = "user" Then

                'For i = 0 To node.ChildNodes(0).Attributes.Count - 1
                'strCampo1 = node.ChildNodes(0).Attributes(3).Value
                'Next

                If node.ChildNodes(0).Attributes.Count >= 5 Then

                    'Session("UserID") = node.ChildNodes(0).Attributes(0).Value
                    Session("UserID") = UserId
                    Session("UserNom") = node.ChildNodes(0).Attributes(1).Value
                    Session("UserFecha") = node.ChildNodes(0).Attributes(2).Value.ToString.Substring(0, 10)
                    strCampo1 = node.ChildNodes(0).Attributes(3).Value
                    Session("UserAge") = node.ChildNodes(0).Attributes(4).Value
                    Session("UserCodAsesor") = node.ChildNodes(0).Attributes(5).Value

                Else
                    strCampo1 = "-1"
                End If

            ElseIf node.ChildNodes.ItemOf(0).LocalName = "Error" Then
                strCampo1 = "Error"
            End If
            Return strCampo1

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    ''' <summary>
    ''' 'funcion que envia a leer el xml retornado del WS.
    ''' se muestra la trama que viene del WS y cada posición que tiene la trama entregada
    ''' </summary>
    ''' <param name="sender"></param>
    ''' <param name="e"></param>
    ''' <remarks></remarks>
    Protected Sub Command1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Command1.Click
        Dim strRespuesta As String
        Try


            If Me.IsValid Then
                '<user 
                '   iduser = "569387"(0)
                '   name = "ecoinfo"(1)
                '   fec = "2010-09-21T16:04:37.870"(2)
                '   est = "ACTIVO"(3)
                '   age = "0"(4)
                '   codase = "8300810054"(5)
                '/>

                If Me.txtUser.Text <> "" And Me.txtContrasena.Text <> "" Then

                    strRespuesta = LeerArchivoXML(Me.txtUser.Text, Me.txtContrasena.Text)

                    If strRespuesta <> Nothing AndAlso strRespuesta <> "" AndAlso strRespuesta = "ACTIVO" Then
                        'evalua que tipo de xml fue el que llego se tienen tres RTA(ACCESO EXITOSO---ACCESO DENEGADO---ERROR)
                        Response.Redirect("~/Formularios/frmMenu.aspx")
                    ElseIf strRespuesta = "Error" Then
                        Me.Label2.Visible = True
                        Me.Label2.Text = "Problemas al procesar la petición"
                    ElseIf strRespuesta = "-1" Then
                        Me.Label2.Visible = True
                        Me.Label2.Text = "Acceso Denegado"

                    End If

                Else
                    Me.Label2.Visible = True
                    Me.Label2.Text = "Digite Usario/Clave."
                End If
            End If
        Catch ex As Exception
            Throw ex
        End Try

    End Sub
   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            Try
                Response.Cache.SetCacheability(HttpCacheability.NoCache)
                Session("UserID") = Nothing
            Catch ex As Exception
                Throw ex
            End Try
        End If
    End Sub
End Class

