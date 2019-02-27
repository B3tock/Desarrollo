<%@ page language="VB" autoeventwireup="false" MasterPageFile="~/PFL.master" CodeFile="~/Formularios/consultaRadicacion.aspx.vb" inherits="Formularios_consultaRadicacion" theme="PichinchaSK" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                    <div class="input-group">
                        
                    <asp:Label ID="lblRespuesta" Runat="server" BreakAfter="False" Font-Names="Roboto">Solicitud radicada exitosamente con el N&#250;mero :</asp:Label> 
                     <asp:Label ID="Label2" Runat="server" Font-Bold="True" StyleReference="error"></asp:Label>
                    </div>
                    <br />
                    <br />
                    <div align="center">
                         <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-default" CausesValidation="false" Width="84px"  onclick="btnVolver_Click" Height="36px"/> 
                        </div>
                        <br />
                        <div align="left">
                          <asp:Label ID="Label3" Runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto">Usuario:</asp:Label>  
                          <asp:Label ID="lblUsuario" Runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label> 
                            </div>
                     
                            <div align="left">
                             <asp:Label ID="Label4" Runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto">Ultimo Ingreso:</asp:Label>  
                              <asp:Label ID="lblFechaUltIngreso" Runat="server" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                        </div>

    </asp:Content>