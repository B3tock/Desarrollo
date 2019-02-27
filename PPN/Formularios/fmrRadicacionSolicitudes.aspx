<%@ Page Language="VB" AutoEventWireup="false" CodeFile="~/Formularios/fmrRadicacionSolicitudes.aspx.vb" Inherits="Formularios_fmrRadicacionSolicitudes" MaintainScrollPositionOnPostback="true" Theme="PichinchaSK" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
    <title>Portafolio</title>
    <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/dist/css/ClientU.min.css" rel="stylesheet" type="text/css" />
    <link href="../bootstrap/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
    <script src="../scripts/busquedaCombo.js"></script>
    <script src="../scripts/jquery-1.11.3.min.js"></script>

</head>

<body style="background-color: white !important;">
    <form id="form1" runat="server">
        <div class="form-box">
            <div class="box box-info">
                <div class="box-header with-border" style="background-color: #FFDC00; text-align: center;">
                    <img src="../images/LogoPichincha.png" />
                </div>
                <div class="form-border">
                    <br />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    <div class="box-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class = "input-group">
                                    <label class="form-label">Tipo de Documento:</label>
                                    <asp:DropDownList ID="cmdTipoDocumento" runat="server" BreakAfter="False" Width="100%" CssClass="form-DropDown" Height="22px">
                                        <asp:ListItem Value="1">CC</asp:ListItem>
                                        <asp:ListItem Value="2">CE</asp:ListItem>
                                    </asp:DropDownList>
                                        <span class="input-group-addon err"><i>&nbsp;</i></span>
                                        </div>
                                    </div>
                                 </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Nro. Documento:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtNumIdentificacion" runat="server" MaxLength="11" Size="11" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                          
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Digite el Número de Identificación" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="CustomValidator" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:CustomValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtNumIdentificacion" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Primer Apellido:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtPrimerApellido" runat="server" MaxLength="15" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Digite el Primer Apellido" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPrimerApellido" ErrorMessage="Digite solo letras" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([a-zA-ZñÑ ]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                                </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Segundo Apellido:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtSegundoApellido" runat="server" MaxLength="15" Style="margin-bottom: 0px" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                            
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSegundoApellido" ErrorMessage="Digite solo letras" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([a-zA-ZñÑ ]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Primer Nombre:</label>

                                    <div class="input-group">
                                        <asp:TextBox ID="txtNomCliente" runat="server" MaxLength="20" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNomCliente" ErrorMessage="Digite el Nombre del Cliente" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtNomCliente" ErrorMessage="Digite solo letras" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([a-zA-ZñÑ ]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Segundo Nombre:</label>

                                    <div class="input-group">
                                        <asp:TextBox ID="txtSegNomCliente" runat="server" MaxLength="20" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator44" runat="server" ControlToValidate="txtSegNomCliente" ErrorMessage="Digite solo letras" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([a-zA-ZñÑ ]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Fecha de Nacimiento: Dia-Mes-Año  </label>
                                    <br />
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmdDias" runat="server" BreakAfter="False" CausesValidation="True" Width="100%" CssClass="form-DropDown" Height="26px">
                                            <asp:ListItem Selected="True"></asp:ListItem>
                                            <asp:ListItem Value="01">1</asp:ListItem>
                                            <asp:ListItem Value="02">2</asp:ListItem>
                                            <asp:ListItem Value="03">3</asp:ListItem>
                                            <asp:ListItem Value="04">4</asp:ListItem>
                                            <asp:ListItem Value="05">5</asp:ListItem>
                                            <asp:ListItem Value="06">6</asp:ListItem>
                                            <asp:ListItem Value="07">7</asp:ListItem>
                                            <asp:ListItem Value="08">8</asp:ListItem>
                                            <asp:ListItem Value="09">9</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="11">11</asp:ListItem>
                                            <asp:ListItem Value="12">12</asp:ListItem>
                                            <asp:ListItem Value="13">13</asp:ListItem>
                                            <asp:ListItem Value="14">14</asp:ListItem>
                                            <asp:ListItem Value="15">15</asp:ListItem>
                                            <asp:ListItem Value="16">16</asp:ListItem>
                                            <asp:ListItem Value="17">17</asp:ListItem>
                                            <asp:ListItem Value="18">18</asp:ListItem>
                                            <asp:ListItem Value="19">19</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="21">21</asp:ListItem>
                                            <asp:ListItem Value="22">22</asp:ListItem>
                                            <asp:ListItem Value="23">23</asp:ListItem>
                                            <asp:ListItem Value="24">24</asp:ListItem>
                                            <asp:ListItem Value="25">25</asp:ListItem>
                                            <asp:ListItem Value="26">26</asp:ListItem>
                                            <asp:ListItem Value="27">27</asp:ListItem>
                                            <asp:ListItem Value="28">28</asp:ListItem>
                                            <asp:ListItem Value="29">29</asp:ListItem>
                                            <asp:ListItem Value="30">30</asp:ListItem>
                                            <asp:ListItem Value="31">31</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldDia" runat="server" ControlToValidate="cmdDias" ErrorMessage="Seleccione los días de Nacimiento" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                        <asp:DropDownList ID="cmdMes" runat="server" BreakAfter="False" CausesValidation="True" Height="26px" Width="100%" CssClass="form-DropDown">
                                            <asp:ListItem Selected="True"></asp:ListItem>
                                            <asp:ListItem Value="01">Enero</asp:ListItem>
                                            <asp:ListItem Value="02">Febrero</asp:ListItem>
                                            <asp:ListItem Value="03">Marzo</asp:ListItem>
                                            <asp:ListItem Value="04">Abril</asp:ListItem>
                                            <asp:ListItem Value="05">Mayo</asp:ListItem>
                                            <asp:ListItem Value="06">Junio</asp:ListItem>
                                            <asp:ListItem Value="07">Julio</asp:ListItem>
                                            <asp:ListItem Value="08">Agosto</asp:ListItem>
                                            <asp:ListItem Value="09">Septiembre</asp:ListItem>
                                            <asp:ListItem Value="10">Octubre</asp:ListItem>
                                            <asp:ListItem Value="11">Noviembre</asp:ListItem>
                                            <asp:ListItem Value="12">Diciembre</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldMes" runat="server" ControlToValidate="cmdMes" ErrorMessage="Selecciones el Mes de Nacimiento" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>


                                        <asp:DropDownList ID="cmdAno" runat="server" CausesValidation="True" Height="26px" Style="margin-left: 0px" Width="100%" CssClass="form-DropDown">
                                            <asp:ListItem Selected="True"></asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldAno" runat="server" ControlToValidate="cmdAno" ErrorMessage="Seleccione el Año de Nacimiento" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">&nbsp;</label>
                                    <div class="input-group">
                                        <label class="form-label">&nbsp;</label>
                                        &nbsp;
                                        <asp:Label ID="Label6" runat="server" ForeColor="Red" stylereference="error" Visible="False"></asp:Label>
                                        &nbsp;
                                        <asp:Label ID="Label2" runat="server" Font-Size="Small" ForeColor="Red" stylereference="error" Visible="False"></asp:Label>


                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label class="form-label">Actividad Económica:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmdActividadEcomica" runat="server" Width="100%" CssClass="form-DropDown">
                                            <asp:ListItem Value="1">Empleado Empresa Privada</asp:ListItem>
                                            <asp:ListItem Value="2">Pensionado</asp:ListItem>
                                            <asp:ListItem Value="4">Comerciante</asp:ListItem>
                                            <asp:ListItem Value="5">Independiente</asp:ListItem>
                                            <asp:ListItem Value="11">Profesional Independiente</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldActividad" runat="server" ControlToValidate="cmdActividadEcomica" ErrorMessage="Seleccione Actividad Económica" Font-Size="Smaller" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Antigüedad en la Actividad(Meses):</label>

                                    <div class="input-group">
                                        <asp:TextBox ID="txtAntiguedadActividad" runat="server" breakafter="False" MaxLength="3" Size="3" Title="Meses" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAntiguedadActividad" ErrorMessage="Digite la Antiguedad en la Actividad" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtAntiguedadActividad" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Tipo Contrato:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmdTipoContrato" runat="server" Width="100%" CssClass="form-DropDown" Height="26px">
                                            <asp:ListItem Value="4">No Aplica</asp:ListItem>
                                            <asp:ListItem Value="1">Indefinido</asp:ListItem>
                                            <asp:ListItem Value="2">Fijo</asp:ListItem>
                                            <asp:ListItem Value="7">Prestación de Servicios</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                           <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="cmdTipoContrato" ErrorMessage="Seleccione Tipo de Contrato" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Ingresos Mes:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtValorIngMensuales" runat="server" MaxLength="10" Size="15" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtValorIngMensuales" ErrorMessage="Digite Valor de Ingresos Mensuales" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtValorIngMensuales" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>

                                        </span>
                                        <asp:Label ID="lblRtaSueldoRelacion" runat="server" ForeColor="Red" StyleReference="error" Visible="False"></asp:Label>

                                    </div>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Ingresos Variables:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtIngresosvariables" runat="server" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                               <asp:RequiredFieldValidator ID="RequiredFieldIngresosVariables" runat="server" ControlToValidate="txtIngresosvariables" ErrorMessage="Digite Valor de Ingresos variables" Font-Size="Smaller" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="txtIngresosvariables" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Otros Ingresos:</label>

                                    <div class="input-group">
                                        <asp:TextBox ID="txtOtrosIngresos" runat="server" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldOtrosIngresos" runat="server" ControlToValidate="txtOtrosIngresos" ErrorMessage="Digite Valor de Otros Ingresos" Font-Size="Smaller" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server" ControlToValidate="txtOtrosIngresos" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Producto Solicitado:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmdProductoSolicitado" runat="server" Height="26px" Width="100%" CssClass="form-DropDown">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Value="1">Tarjeta de Credito</asp:ListItem>
                                            <asp:ListItem Value="2">Crédito Líbre Inversión</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="cmdProductoSolicitado" ErrorMessage="Seleccione Producto Solicitado" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Compra de Cartera</label>
                                    &nbsp;  &nbsp;  &nbsp;  &nbsp; 
                                      <asp:RadioButton ID="rdgCompraCarteraSi" runat="server" GroupName="val" Text="Si" />
                                    &nbsp; 
                                        <asp:RadioButton ID="rdgCompraCarteraNo" runat="server" Checked="True" GroupName="val" Text="No" />

                                    <br />

                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Producto a Comprar:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmdProductoAComprar" runat="server" Enabled="False" Height="26px" Width="100%" CssClass="form-DropDown">
                                            <asp:ListItem Value="0">No Aplica</asp:ListItem>
                                            <asp:ListItem Value="1">Tarjeta de Credito</asp:ListItem>
                                            <asp:ListItem Value="2">Crédito de Consumo</asp:ListItem>
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                            
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Monto a Comprar:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtMontoAComprar" runat="server" Enabled="False" Width="100%">0</asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator13" runat="server" ControlToValidate="txtMontoAComprar" ErrorMessage="Digite solo números en el campo Monto a Comprar" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                                <asp:CustomValidator ID="CustomValidator2" runat="server" ClientValidationFunction="validarMonto" ControlToValidate="txtMontoAComprar" ErrorMessage="El valor Del monto Debe Ser mayor a 0" Font-Size="Smaller" Display="Dynamic" ForeColor="Red">*</asp:CustomValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Plazo (Meses):</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="TxtPlazo" runat="server" BreakAfter="False" Height="25px" MaxLength="2" Size="3" Title="Meses" Width="100%"></asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="TxtPlazo" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)" Display="Dynamic">*</asp:RegularExpressionValidator>
                                                <asp:CustomValidator ID="CustomValidatorPlazo" runat="server" ClientValidationFunction="  validarMonto" ControlToValidate="TxtPlazo" ErrorMessage="El Valor Del plazo debe ser mayor a 0" Font-Size="Smaller" Display="Dynamic" ForeColor="Red">*</asp:CustomValidator>
                                                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TxtPlazo" ErrorMessage="Digite Plazo Mayor a 0, Máximo 60" Font-Size="Smaller" ForeColor="Red" MaximumValue="60" MinimumValue="1" Type="Integer" Display="Dynamic">*</asp:RangeValidator>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TxtPlazo" ErrorMessage="Digite Valor de plazo" Font-Size="Smaller" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:Label ID="lblVAlorRecoge" runat="server" Visible="False">Valor Cuotas que Recoge:</asp:Label>
                                        <asp:TextBox ID="txtValorCoutasRecoge" runat="server" MaxLength="10" Size="15" Visible="False" Width="100%">0</asp:TextBox>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtValorCoutasRecoge" ErrorMessage="Digite Valor Cuotas que Recoge" Font-Size="Smaller" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtValorCoutasRecoge" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)">*</asp:RegularExpressionValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate> 
                              <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Cod. Asesor</label>
                                    <div class="input-group">
                                   
                                                    <asp:TextBox ID="txtAsesor" runat="server" Width="100%" AutoPostBack="True"></asp:TextBox> 
                                                     <span class="input-group-addon err">
                                                        <i>                         
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAsesor" ErrorMessage="Digite Código del Asesor" Font-Size="Smaller" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtAsesor" ErrorMessage="Digite solo números" Font-Size="Smaller" ForeColor="Red" ValidationExpression="([0-9]+)">*</asp:RegularExpressionValidator>
                                                        </i>
                                                    </span>  
                                                                                
                                    </div>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Nombre</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="txtNombre" runat="server" Width="100%" Enabled="False"></asp:TextBox> 
                                           <span class="input-group-addon err">
                                            <i>                           
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNombre" ErrorMessage="Asesor Inválido" Font-Size="Smaller" ForeColor="Red">*</asp:RequiredFieldValidator>
                                                 </i>
                                        </span>   
                                    </div>
                                </div>
                            </div>
                         </ContentTemplate>
                     </asp:UpdatePanel> 

                             <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Canal de Venta:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmbCanal" runat="server" Height="26px" Width="100%" CssClass="form-DropDown" AppendDataBoundItems="true">
                                        <asp:ListItem></asp:ListItem> 
                                             </asp:DropDownList>
                                      <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="cmbCanal" ErrorMessage="Seleccione Canal" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>

                             <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Centro de Procesamiento:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmbCentProcesa" runat="server" Height="26px" Width="100%" CssClass="form-DropDown" AppendDataBoundItems="true">
                                        <asp:ListItem></asp:ListItem> 
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="cmbCentProcesa" ErrorMessage="Seleccione Centro Procesamiento" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div>
                            </div>                           

                             <div class="col-md-6">
                                <div class="form-group">
                                    <label class="form-label">Marca o Convenio TC:</label>
                                    <div class="input-group">
                                        <asp:DropDownList ID="cmbConvenio" runat="server" Height="26px" Width="100%" CssClass="form-DropDown" AppendDataBoundItems="true">
                                        <asp:ListItem></asp:ListItem> 
                                        </asp:DropDownList>
                                        <span class="input-group-addon err">
                                            <i>&nbsp;                           
                                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="cmbConvenio" ErrorMessage="Seleccione Marca o Convenio" Font-Size="Smaller" ForeColor="Red" Display="Dynamic">*</asp:RequiredFieldValidator>
                                            </i>
                                        </span>
                                    </div>
                                </div><br />
                            </div>                           

                            <div class="col-md-3">
                                <div class="form-group">
                                    <div class="input-group">
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div align="center">
                                    <asp:Button ID="Command1" runat="server" CssClass="btn btn-default" Text="Enviar" Width="70px" />
                                    <asp:Button ID="btnMenu" runat="server" CausesValidation="False" CssClass="btn btn-default" Text="Menu" Width="70px" />
                                    <asp:Button ID="btnsalir" runat="server" CausesValidation="False" CssClass="btn btn-default" Text="Salir" Width="70px" />
                                </div>
                            </div>
                        
                        <div class="col-md-3">
                            <div class="form-group">
                                <div class="input-group">
                                </div>
                            </div>
                        </div>
                        </div>
                        <br />
                        <div class="col-md-6">
                            <br />
                            <div class="form-group">
                                <div class="input-group">
                                    <div style="text-align: left">
                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" StyleReference="error" Visible="False"></asp:Label>
                                    </div>

                                    <div style="text-align: left">
                                        <asp:Label ID="Label3" runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto">Usuario:</asp:Label>
                                        <asp:Label ID="lblUsuario" runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                                    </div>

                                    <div style="text-align: left">
                                        <asp:Label ID="Label4" runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto">Ultimo Ingreso:</asp:Label>
                                        <asp:Label ID="lblFechaUltIngreso" runat="server" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <br />
                            <div class="form-group">
                                <div class="input-group">
                                    <div style="text-align: left">
                                        <asp:Label ID="lblCodAsesor" runat="server" BreakAfter="False" ForeColor="#666666" Font-Bold="True" Font-Names="Roboto">Asesor:</asp:Label>
                                        <asp:Label ID="lblAsesor" runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                                    </div>
                                    <div style="text-align: left">
                                        <asp:Label ID="lblCodOficina" runat="server" BreakAfter="False" ForeColor="#666666" Font-Bold="True" Font-Names="Roboto">Oficina:</asp:Label>
                                        <asp:Label ID="lblOficina" runat="server" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


        <script src="../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="../bootstrap/dist/js/app.min.js" type="text/javascript"></script>
        <script src="../bootstrap/dist/js/pages/dashboard.js" type="text/javascript"></script>

      

    </form>
</body>
<script type="text/javascript" language="javascript">
    $(document).ready(function () {

        $("#rdgCompraCarteraSi").click(function () {
            $("#cmdProductoAComprar").attr("disabled", false);
            $("#txtMontoAComprar").attr("disabled", false);

        });

        $("#rdgCompraCarteraNo").click(function () {
            $("#cmdProductoAComprar").attr("disabled", true);
            $("#txtMontoAComprar").attr("disabled", true);
        });

        $("#txtMontoAComprar").focusout(function () {
            if ($('#txtMontoAComprar').val() === '') {
                $('#txtMontoAComprar').val('0');

            }

        });
    });
</script>
</html>
