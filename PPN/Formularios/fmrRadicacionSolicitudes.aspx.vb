Imports Pichincha.Modelo
Imports Pichincha.Modelo.modGlobal
Imports System.IO
Imports System.Xml
Imports System.Data


Partial Class Formularios_fmrRadicacionSolicitudes
    Inherits System.Web.UI.Page
    Dim i As Integer
    Dim objWSPichinchaRadicacion As New wsPichinchaRadicacion.ws_Radicacion
    Dim objModelo As New Pichincha.Modelo.clRadicacionSolicitudes
    Dim objWSVFservice As New VFService.VFServices
    Dim objWSConGen As New wsConsultaGenerica.WSConsultaGenerica

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles form1.Load


        If Session("UserID") Is Nothing OrElse Session("UserID") = "" And Me.Request.Params("ReturnUrl") = Nothing Then Response.Redirect("../default.aspx?ReturnUrl=" & Request.Url.AbsolutePath, True)

        If Not Me.IsPostBack Then
            fnCargarAnos()
            fnCargarUsuarioFecha()
            fnCargueAsesor()
            fnCargueCombos()
        End If
        'fnTiempoSession()
    End Sub

    Protected Sub Command1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Command1.Click
        Dim rtaValorPol2 As Long
        Dim intValorValido As Integer
        Dim rtaValidaAno As String
        Dim intAno As Integer
        Dim intMes As Integer
        Dim strPolitaFN As Integer
        Dim FechaNacido As Date
        Dim FechaVeri As Date

        If Me.IsValid Then
            'aplicar politicas de seguridad
            'Valor ingresado >= SMMLV* Relación

            'rtaValorPol2 = CType(SMMLV, Double) * CType(relacion, Double)
            rtaValorPol2 = Double.Parse(SMMLV, System.Globalization.CultureInfo.InvariantCulture) * Double.Parse(relacion, System.Globalization.CultureInfo.InvariantCulture)

            'If Me.txtValorIngMensuales.Text >= rtaValorPol2 Then
            intValorValido = 1
            Me.lblRtaSueldoRelacion.Visible = False
            'Else
            '    intValorValido = 0
            '    Me.lblRtaSueldoRelacion.Visible = True
            '    Me.lblRtaSueldoRelacion.Text = "El valor ingresado al mes  es muy bajo para enviar la solicitud"
            'End If

            intAno = Me.cmdAno.SelectedValue
            intMes = Me.cmdMes.SelectedValue

            rtaValidaAno = fnLLamadoComprobar(intAno, intMes)

            strPolitaFN = Date.Now.Year - 18

            'FechaNacido = Me.cmdDias.Selection.Value & "/" & Me.cmdMes.Selection.Value & "/" & Me.cmdAno.Selection.Text

            'Date.Parse(DateString, New CultureInfo("fr-FR", False))
            FechaNacido = DateSerial(Integer.Parse(Me.cmdAno.SelectedValue), Integer.Parse(Me.cmdMes.SelectedValue), Integer.Parse(Me.cmdDias.SelectedValue))
            'FechaNacido = Date.FromOADate(Me.cmdAno.Selection.Text & Me.cmdMes.Selection.Value, 2) & Me.cmdDias.Selection.Value)
            FechaVeri = Date.Now.AddYears(-18)

            If intValorValido = 1 AndAlso rtaValidaAno = "1" Then
                ' If strPolitaFN < Me.cmdAno.Selection.Text Then
                If FechaVeri < FechaNacido Then
                    Me.Label2.Visible = True
                    Me.Label2.Text = "la edad del solicitante no cumple la Politica1"
                Else
                    Me.Label2.Visible = False
                    EnvioGuardar()
                End If

            Else

            End If

        End If
    End Sub
    Public Function fnLLamadoComprobar(ByVal intAno As Object, ByVal intMes As Object) As String
        Dim rta As String
        Dim obj1() As String
        Try

            rta = Comprobar(intAno, intMes)
            obj1 = rta.Split("||")
            If obj1(2) = True AndAlso CInt(Me.cmdMes.SelectedValue) = CInt(2) Then
                If CInt(Me.cmdMes.SelectedValue) = CInt(2) And CInt(Me.cmdDias.SelectedValue) > CInt(29) Then
                    Me.Label2.Visible = True
                    Me.Label2.Text = "Febrero solo tiene 29 días para el año," & Me.cmdAno.SelectedValue
                    rta = "0"
                Else
                    rta = "1"
                    Me.Label2.Visible = False
                End If
            Else
                If CInt(cmdDias.SelectedValue) > CInt(obj1(0)) Then
                    Me.Label6.Visible = True
                    Me.Label6.Text = "El mes de  " & cmdMes.SelectedValue & "  solo tiene  " & obj1(0)
                    rta = "0"
                Else
                    rta = "1"
                    Me.Label6.Visible = False
                End If
            End If
            'Me.Label2.Text = obj1(0) 'dias
            'Me.Label6.Text = obj1(2) 'año
            Return rta
        Catch ex As Exception
            Throw ex
        End Try


    End Function
    Public Function Comprobar(ByVal Ano As Object, ByVal Mes As Object) As String
        Dim IntRtaMes As Integer
        Try
            If Not Ano Is Nothing AndAlso Not Mes Is Nothing Then
                'Deme la respuesta dias por mes
                IntRtaMes = Date.DaysInMonth(Ano, Mes)
                Comprobar = (Day(DateSerial(Ano, 2, 29)) = 29)

                Return IntRtaMes & "||" & Comprobar

            End If

        Catch ex As Exception
            Throw ex
        End Try
    End Function
    Public Sub EnvioGuardar()
        Dim strCodigo As String

        Try

            With objModelo
                .Asesor = CULng(Me.txtAsesor.Text)
                .TipoIdentificacion = Me.cmdTipoDocumento.SelectedValue
                .NumeroIdentificacion = Me.txtNumIdentificacion.Text
                .PrimerApellido = Me.txtPrimerApellido.Text
                .SegundoApellido = IIf(Me.txtSegundoApellido.Text <> "", Me.txtSegundoApellido.Text, " ")
                .NombreCliente = Me.txtNomCliente.Text
                .SegundoNombre = Me.txtSegNomCliente.Text
                .FechaNacimiento = Me.cmdAno.SelectedValue & Me.cmdMes.SelectedValue & Me.cmdDias.SelectedValue  'yyyymmdd
                .ActividadEconomica = Me.cmdActividadEcomica.SelectedValue
                .Antiguedad = Me.txtAntiguedadActividad.Text
                .ValorIngresos = Me.txtValorIngMensuales.Text
                .ValorCuotaRecoge = Me.txtValorCoutasRecoge.Text
                .Vinculacion = "1"
                .NombreClienteComp = Me.txtPrimerApellido.Text & " " & Me.txtSegundoApellido.Text & " " & Me.txtNomCliente.Text & " " & Me.txtSegNomCliente.Text
                .Usuario = CULng(Session("UserID"))
                .Oficina = CULng(Session("UserAge"))
                .Linea = "137" '"237"
                .CanalVentas = Me.cmbCanal.SelectedValue
                .CentroProcesamineto = Me.cmbCentProcesa.SelectedValue
                .Convenio = Me.cmbConvenio.SelectedValue

                ' Valida la actividad económica 
                'If (Me.cmdActividadEcomica.SelectedValue = 1) Then
                '    .TipoContrato = Me.cmdTipoContrato.SelectedValue
				'
                'Else
                '    .TipoContrato = 4
                'End If

                .IngresosVariables = Me.txtIngresosvariables.Text
                .OtrosIngresos = Me.txtOtrosIngresos.Text

                ' Valida si compra o no cartera
                If (rdgCompraCarteraNo.Checked = True) Then
                    .CompraCartera = 2
                    .MontoCompra = 0   ' No es compra de cartera
                    .ProductoCompra = 0  ' No aplica
                Else
                    .ProductoCompra = Me.cmdProductoSolicitado.SelectedValue
                    .MontoCompra = Me.txtMontoAComprar.Text
                    .CompraCartera = 1
                End If
                .ProductoSolicitado = Me.cmdProductoSolicitado.SelectedValue
                .TipoProducto = Me.TxtPlazo.Text
            End With
            strCodigo = GetDatosRadicacion(objModelo)
            If strCodigo <> "" Then
                Response.Redirect("../Formularios/consultaRadicacion.aspx?CodRadicacion=" & strCodigo)
            Else
                Me.Label1.Visible = True
                ' Me.Label1.Text = "Problemas al ingresar la Solicitud"
            End If
        Catch ex As Exception
            Throw ex
        End Try
    End Sub
    Public Function GetDatosRadicacion(ByVal objModelo As Pichincha.Modelo.clRadicacionSolicitudes) As String
        Dim node As System.Xml.XmlNode
        Dim node2 As System.Xml.XmlNode
        Dim nodeDkey As System.Xml.XmlNode
        Dim strRespuestaWSRadicacion As String = ""
        Dim strTrama As String
        Dim strCodificacion As String
        Dim strResCambiStatus As String
        Dim strDkey As String
        Try

            strCodificacion = Chr(34)
            With objModelo
                strTrama = "<?xml version=" & strCodificacion & "1.0" & strCodificacion & "  encoding=" & strCodificacion & "utf-8" & strCodificacion & "?> " & _
                            "<VARIABLES>" & _
                                "<ASE>" & .Asesor & "</ASE>" & _
                                "<TID>" & .TipoIdentificacion & "</TID>" & _
                                "<NID>" & .NumeroIdentificacion & "</NID>" & _
                                "<AP1>" & .PrimerApellido & "</AP1>" & _
                                "<AP2>" & .SegundoApellido & "</AP2>" & _
                                "<NOM>" & .NombreCliente & "</NOM>" & _
                                "<NM2>" & .SegundoNombre & "</NM2>" & _
                                "<FHN>" & .FechaNacimiento & "</FHN>" & _
                                "<ACE>" & .ActividadEconomica & "</ACE>" & _
                                "<ANT>" & .Antiguedad & "</ANT>" & _
                                "<VLI>" & .ValorIngresos & "</VLI>" & _
                                "<VCR>" & .ValorCuotaRecoge & "</VCR>" & _
                                "<VIN>" & .Vinculacion & "</VIN>" & _
                                "<NOC>" & .NombreClienteComp & "</NOC>" & _
                                "<PLZ>" & .TipoProducto & "</PLZ>" & _
                                "<USUARIO>" & .Usuario & "</USUARIO>" & _
                                "<OFICINA>" & .Oficina & "</OFICINA>" & _
                                "<IDLINEA>" & .Linea & "</IDLINEA>" & _
                                "<TCO>" & .TipoContrato & "</TCO>" & _
                                "<INV>" & .IngresosVariables & "</INV>" & _
                                "<OTI>" & .OtrosIngresos & "</OTI>" & _
                                "<CCA>" & .CompraCartera & "</CCA>" & _
                                "<MAC>" & .MontoCompra & "</MAC>" & _
                                "<PAC>" & .ProductoCompra & "</PAC>" & _
                                "<PCD>" & .ProductoSolicitado & "</PCD>" & _
                                "<CANVEN>" & .CanalVentas & "</CANVEN>" & _
                                "<CENPRO>" & .CentroProcesamineto & "</CENPRO>" & _
                                "<MCONTC>" & .Convenio & "</MCONTC>" & _
                            "</VARIABLES>"
            End With
            My.Computer.FileSystem.WriteAllText("C:\temp\llamadoWSRadicacionPortafolio.log", strTrama, True)
            node = objWSPichinchaRadicacion.web_pb_Transaccion(strTrama)


            If node.SelectSingleNode("//ERROR").InnerText = "0" Then
                node2 = node.SelectSingleNode("//REGISTRY")
                strRespuestaWSRadicacion = node2.FirstChild.InnerText
                nodeDkey = node.SelectSingleNode("//DKEY")
                strDkey = nodeDkey.FirstChild.InnerText
                'Llamado a ejecucion del proceso automatico. de cambi ode estado.
                strResCambiStatus = objWSVFservice.ProcesarTrama(strDkey + "|1|2")
            Else
                Me.Label1.Visible = True
                Me.Label1.Text = node.SelectSingleNode("//ERRORDESC").InnerText
            End If

            Return strRespuestaWSRadicacion

        Catch ex As Exception
            Throw ex
        End Try
    End Function

    Private Sub fnTiempoSession()
        Dim strTiempo As String
        Dim strMinutos As String

        strTiempo = Page.Session.Timeout
        strMinutos = Date.Now.Minute

        If CInt(strTiempo) <> CInt(strMinutos) Then
            Response.Redirect("~/Default.aspx")
        End If

    End Sub
    Private Sub fnCargarAnos()
        For i = Date.Now.Year - 75 To Date.Now.Year - 18
            Me.cmdAno.Items.Add("" & i & "")
        Next
    End Sub
    Private Sub fnCargarUsuarioFecha()
        Try
            Me.lblUsuario.Text = Session("UserNom")
            Me.lblFechaUltIngreso.Text = Session("UserFecha")
            Me.lblAsesor.Text = Session("UserCodAsesor")
            Me.txtAsesor.Text = Session("UserCodAsesor")
            Me.lblOficina.Text = Session("UserAge")
        Catch ex As Exception
            Throw ex
        End Try

    End Sub
    'Protected Sub cmdActividadEcomica_SelectedIndexChanged(sender As Object, e As EventArgs) Handles cmdActividadEcomica.SelectedIndexChanged
    '    If Me.cmdActividadEcomica.SelectedValue = 5 Then
    '        Me.cmdTipoContrato.SelectedValue = 4
    '       Me.cmdTipoContrato.Enabled = False
    '   Else
    '        Me.cmdTipoContrato.Enabled = False
    '    End If
    'End Sub
    Protected Sub btnsalir_Click(sender As Object, e As EventArgs) Handles btnsalir.Click
        Response.Redirect("~/Default.aspx")
    End Sub

    Protected Sub btnMenu_Click(sender As Object, e As EventArgs) Handles btnMenu.Click
        Response.Redirect("~/Formularios/frmMenu.aspx")
    End Sub

    Protected Sub rdgCompraCarteraNo_CheckedChanged(sender As Object, e As EventArgs) Handles rdgCompraCarteraNo.CheckedChanged

        If (Me.rdgCompraCarteraNo.Checked = True) Then
            Me.cmdProductoAComprar.SelectedValue = 0
            Me.cmdProductoAComprar.Enabled = False
            Me.txtMontoAComprar.Text = "0"
            Me.txtMontoAComprar.Enabled = False
        Else
            Me.cmdProductoAComprar.Enabled = True
            Me.txtMontoAComprar.Enabled = True
        End If
    End Sub

    Protected Sub rdgCompraCarteraSi_CheckedChanged(sender As Object, e As EventArgs) Handles rdgCompraCarteraSi.CheckedChanged

    End Sub


    Protected Sub txtAsesor_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles txtAsesor.TextChanged
        fnCargueAsesor()
    End Sub

    Private Sub fnCargueAsesor()

        txtNombre.Text = ""
        Dim dts As DataSet = fnConsultaGeneral(1, "ia_id, ia_name", "ip_advisors", "", "ia_id=" + txtAsesor.Text)

        If Not dts Is Nothing Then
            txtNombre.Text = dts.Tables(0).Rows(0).Item(1).ToString()
        End If

    End Sub

    Private Sub fnCargueCombos()

        cmbCanal.DataValueField = "tc_key"
        cmbCanal.DataTextField = "tc_spa"
        cmbCanal.DataSource = fnConsultaGeneral(2, ", ", "", "", "CANVENTA")
        cmbCanal.DataBind()

        cmbCentProcesa.DataValueField = "b_code"
        cmbCentProcesa.DataTextField = "b_name"
        cmbCentProcesa.DataSource = fnConsultaGeneral(1, "b_code, b_name", "caf_branch", "", "b_type = 11")
        cmbCentProcesa.DataBind()

        cmbConvenio.DataValueField = "cp_key"
        cmbConvenio.DataTextField = "cp_campana"
        cmbConvenio.DataSource = fnConsultaGeneral(1, "cp_key, cp_campana", "bp_mt_campanas_preaprobados", "", "cp_state='Y' and cp_tipo_campana='CO'")
        cmbConvenio.DataBind()

    End Sub

    Private Function fnConsultaGeneral(ByVal IdMetodo As Integer, ByVal Campos As String, ByVal Tablas As String, ByVal Union As String, ByVal Condiciones As String) As DataSet

        Dim xmlDS As DataSet = Nothing

        Try
            Dim xmlData As String = objWSConGen.ConsultaGenerica(IdMetodo, Campos, Tablas, Union, Condiciones)
            Dim stream As StringReader = Nothing
            Dim reader As XmlTextReader = Nothing

            xmlDS = New DataSet()
            stream = New StringReader(xmlData)
            reader = New XmlTextReader(stream)
            xmlDS.ReadXml(reader)

        Catch ex As Exception
            xmlDS = Nothing
        End Try

        Return xmlDS
    End Function
	'        $("#cmdActividadEcomica").change(function () {
    '        if ($('#cmdActividadEcomica').val().trim() === '1') {
    '            $("#cmdTipoContrato").attr("disabled", false);
    '       }
    '       else {
    '            $("#cmdTipoContrato").attr("disabled", true);
    '            $('#cmdTipoContrato').val('4');
    '       }
    '    });
	
End Class





