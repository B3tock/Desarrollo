<%@ page language="VB" autoeventwireup="false" MasterPageFile="~/PFL.master" CodeFile="~/Formularios/Consulta.aspx.vb" inherits="Formularios_Consulta" theme="PichinchaSK" %>
<%@ outputcache Location="None" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red"/>
                    
                    <div class="input-group">
                        <label class="form-label">Consultas</label>
                        <asp:DropDownList ID="cmdTipoSolicitud" Runat="server" Width="100%" CssClass="form-DropDown">
                        <asp:ListItem Text="Consulta por Solicitud" Value="1" />
                        <asp:ListItem Text="Consulta por Identificaci&#243;n" Value="2" />
                        </asp:DropDownList>
                        <span class="input-group-addon err">
                            <i>&nbsp;                         
                            </i>
                        </span>
                    </div>
                    <br />
                    <div class="input-group">
                        <label class="form-label">Número</label>
                        <asp:TextBox ID="TxtSolicitud" Runat="server" CssClass="TxtSolicitud" MaxLength="11" Size="15" Width="100%"></asp:TextBox>
                        <span class="input-group-addon err">
                            <i>&nbsp;                          
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Runat="server" ControlToValidate="TxtSolicitud" ErrorMessage="Digite el Número de Busqueda" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Runat="server" ControlToValidate="TxtSolicitud" ErrorMessage="Digite solo Números" ValidationExpression="([0-9]+)" Display="Dynamic" ForeColor="Red">*</asp:RegularExpressionValidator>
                            </i>
                        </span>
                    </div>
                    <br />
                    <br />
                        <div align="center">
                            <asp:Button ID="Command1" Text="Consultar" Runat="server" BreakAfter="true" CssClass="btn btn-default" Font-Names="Roboto" Width="100px" Height="36px"></asp:Button>
                        <asp:Button ID="btnMenu" runat="server" CssClass="btn btn-default" Text="Menu" Width="70px" Font-Names="Roboto" CausesValidation="False" Height="36px" />
                        <asp:Button ID="btnSalir" runat="server" CssClass="btn btn-default" Text="Salir" Width="70px" Font-Names="Roboto" CausesValidation="False" Height="36px" />
                            </div>
                        <br />
                        <div align="left">
                          <asp:Label ID="Label1" Runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto">Usuario:</asp:Label>
                        <asp:Label ID="lblUsuario" Runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                        
                            </div>
                        <div align="left">
                           <asp:Label ID="Label2" Runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto">Ultimo Ingreso:</asp:Label>
                        <asp:Label ID="lblFechaUltIngreso" Runat="server" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                            </div>
             
  </asp:Content>
        