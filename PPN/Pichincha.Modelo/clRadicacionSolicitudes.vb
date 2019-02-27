Imports Microsoft.VisualBasic

Public Class clRadicacionSolicitudes

    Dim intAsesor As Long
    Dim intTipoIdentificacion As Integer
    Dim intNumeroIdentificacion As Integer
    Dim strPrimerApellido As String
    Dim strSegundoApellido As String
    Dim strNombreCliente As String
    Dim strSegundoNombre As String ' nueva variable
    Dim strFechaNacimiento As String
    Dim intPersonasCargo As Integer
    Dim intActividadEconomica As Integer
    Dim intAntiguedad As Integer
    Dim intValorIngresos As Integer
    Dim intValorArrienHipo As Integer
    Dim intCuotaOtrosCreditos As Integer
    Dim intTipoProducto As Integer 'Se elimino la varible y ahora se recibe  el plazo
    Dim intValorCuotaRecoge As Integer
    Dim strVinculacion As Integer
    Dim strNombreClienteComp As String
    Dim intUsuario As Integer
    Dim intOficina As Integer
    Dim intLinea As Integer
    Dim intTipoContrato As Integer
    Dim intIngresosVariables As Integer
    Dim intOtrosIngresos As Integer
    Dim intCompraCartera As Integer
    Dim intMontoCompra As Integer
    Dim intProductoCompra As Integer
    Dim intProductoSolicitado As Integer
    Dim intCanalVentas As Integer
    Dim intCentroProcesamineto As Integer
    Dim intConvenio As Integer

    Property Asesor() As Long
        Get
            Return intAsesor
        End Get
        Set(ByVal value As Long)
            intAsesor = value
        End Set
    End Property
    Property TipoIdentificacion() As Integer
        Get
            Return intTipoIdentificacion
        End Get
        Set(ByVal value As Integer)
            intTipoIdentificacion = value
        End Set
    End Property
    Property NumeroIdentificacion() As Integer
        Get
            Return intNumeroIdentificacion
        End Get
        Set(ByVal value As Integer)
            intNumeroIdentificacion = value
        End Set
    End Property
    Property PrimerApellido() As String
        Get
            Return strPrimerApellido
        End Get
        Set(ByVal value As String)
            strPrimerApellido = value.ToUpper
        End Set
    End Property
    Property SegundoApellido() As String
        Get
            Return strSegundoApellido
        End Get
        Set(ByVal value As String)
            strSegundoApellido = value.ToUpper
        End Set
    End Property
    Property NombreCliente() As String
        Get
            Return strNombreCliente
        End Get
        Set(ByVal value As String)
            strNombreCliente = value.ToUpper
        End Set
    End Property
    Property SegundoNombre() As String
        Get
            Return strSegundoNombre
        End Get
        Set(ByVal value As String)
            strSegundoNombre = value.ToUpper
        End Set
    End Property
    Property FechaNacimiento() As String
        Get
            Return strFechaNacimiento
        End Get
        Set(ByVal value As String)
            strFechaNacimiento = value
        End Set
    End Property
    Property PersonasCargo() As Integer
        Get
            Return intPersonasCargo
        End Get
        Set(ByVal value As Integer)
            intPersonasCargo = value
        End Set
    End Property
    Property ActividadEconomica() As Integer
        Get
            Return intActividadEconomica
        End Get
        Set(ByVal value As Integer)
            intActividadEconomica = value
        End Set
    End Property
    Property Antiguedad() As Integer
        Get
            Return intAntiguedad
        End Get
        Set(ByVal value As Integer)
            intAntiguedad = value
        End Set
    End Property
    Property ValorIngresos() As Integer
        Get
            Return intValorIngresos
        End Get
        Set(ByVal value As Integer)
            intValorIngresos = value
        End Set
    End Property
    Property ValorArrienHipo() As Integer
        Get
            Return intValorArrienHipo
        End Get
        Set(ByVal value As Integer)
            intValorArrienHipo = value
        End Set
    End Property
    Property CuotaOtrosCreditos() As Integer
        Get
            Return intCuotaOtrosCreditos
        End Get
        Set(ByVal value As Integer)
            intCuotaOtrosCreditos = value
        End Set
    End Property
    Property TipoProducto() As Integer
        Get
            Return intTipoProducto
        End Get
        Set(ByVal value As Integer)
            intTipoProducto = value
        End Set
    End Property
    Property ValorCuotaRecoge() As Integer
        Get
            Return intValorCuotaRecoge
        End Get
        Set(ByVal value As Integer)
            intValorCuotaRecoge = value
        End Set
    End Property
    Property NombreClienteComp() As String
        Get
            Return strNombreClienteComp
        End Get
        Set(ByVal value As String)
            strNombreClienteComp = value.ToUpper
        End Set
    End Property
    Property Vinculacion() As Integer
        Get
            Return strVinculacion
        End Get
        Set(ByVal value As Integer)
            strVinculacion = value
        End Set
    End Property
    Property Usuario() As Long
        Get
            Return intUsuario
        End Get
        Set(ByVal value As Long)
            intUsuario = value
        End Set
    End Property
    Property Oficina() As Long
        Get
            Return intOficina
        End Get
        Set(ByVal value As Long)
            intOficina = value
        End Set
    End Property
    Property Linea() As Integer
        Get
            Return intLinea
        End Get
        Set(ByVal value As Integer)
            intLinea = value
        End Set
    End Property
    Property TipoContrato() As Integer
        Get
            Return intTipoContrato
        End Get
        Set(ByVal value As Integer)
            intTipoContrato = value
        End Set
    End Property
    Property IngresosVariables() As Integer
        Get
            Return intIngresosVariables
        End Get
        Set(ByVal value As Integer)
            intIngresosVariables = value
        End Set
    End Property
    Property OtrosIngresos() As Integer
        Get
            Return intOtrosIngresos
        End Get
        Set(ByVal value As Integer)
            intOtrosIngresos = value
        End Set
    End Property
    Property CompraCartera() As Integer
        Get
            Return intCompraCartera
        End Get
        Set(ByVal value As Integer)
            intCompraCartera = value
        End Set
    End Property
    Property MontoCompra() As Integer
        Get
            Return intMontoCompra
        End Get
        Set(ByVal value As Integer)
            intMontoCompra = value
        End Set
    End Property
    Property ProductoCompra() As Integer
        Get
            Return intProductoCompra
        End Get
        Set(ByVal value As Integer)
            intProductoCompra = value
        End Set
    End Property
    Property ProductoSolicitado() As Integer
        Get
            Return intProductoSolicitado
        End Get
        Set(ByVal value As Integer)
            intProductoSolicitado = value
        End Set
    End Property

    Property CanalVentas() As Integer
        Get
            Return intCanalVentas
        End Get
        Set(ByVal value As Integer)
            intCanalVentas = value
        End Set
    End Property

    Property CentroProcesamineto() As Integer
        Get
            Return intCentroProcesamineto
        End Get
        Set(ByVal value As Integer)
            intCentroProcesamineto = value
        End Set
    End Property

    Property Convenio() As Integer
        Get
            Return intConvenio
        End Get
        Set(ByVal value As Integer)
            intConvenio = value
        End Set
    End Property
End Class



