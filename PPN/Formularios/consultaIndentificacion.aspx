<%@ Page Language="VB" AutoEventWireup="false" MasterPageFile="~/PFL.master"  CodeFile ="consultaIndentificacion.aspx.vb" Inherits="Formularios_consultaIndentificacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="Center">
        <br />
                        <asp:Label ID="lblTNombreCliente" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Nombre del Cliente:</asp:Label><br />
                        <asp:Label ID="lblNomCliente" runat="server" BreakAfter="true" Font-Bold="True" StyleReference="PageStyleSheet"></asp:Label><br />
                    </div>
                    <div align="Center">
                        <br />
                        <asp:Label ID="lblTResultado" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Resultado:</asp:Label><br />
                        <asp:Label ID="lblResultado" runat="server" BreakAfter="true" Font-Bold="True" StyleReference="PageStyleSheet" Font-Names="Roboto"></asp:Label><br />
                    </div>
                    <br />
                    <div align="left">
                        <asp:Panel ID="pnlDatos" runat="server" HorizontalAlign="Center">
                            <asp:Label ID="lblTValAprobado" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Cupo Pre-Aprobado:</asp:Label><br />
                            <asp:Label ID="lblValorAprobado" runat="server" BreakAfter="true" Font-Bold="True" StyleReference="PageStyleSheet" ForeColor="Red" Style="font-size: 22px!important;">,</asp:Label><br />
                            <br />
                            <asp:Label ID="lblTTarjeta" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Cupo Tarjeta Crédito:</asp:Label><br />
                            <asp:Label ID="lblTarjeta" runat="server" BreakAfter="true" Font-Bold="True" StyleReference="PageStyleSheet" ForeColor="Red" Style="font-size: 22px!important;">,</asp:Label><br />
                            <br />
                            <asp:Label ID="lblTExpress" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Cupo Presta Express:</asp:Label><br />
                            <asp:Label ID="lblExpress" runat="server" BreakAfter="true" Font-Bold="True" StyleReference="PageStyleSheet" ForeColor="Red" Style="font-size: 22px!important;">,</asp:Label><br />
                            <br />
                            <asp:Label ID="lblTCampana" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Campaña:</asp:Label><br />
                            <asp:Label ID="lblCampana" runat="server" BreakAfter="true" Font-Bold="True" StyleReference="PageStyleSheet" Font-Names="Roboto"></asp:Label>
                            <br />
                            <br />
                        </asp:Panel>
                        <asp:Panel ID="pnlNegacion" runat="server" HorizontalAlign="Center">
                            <asp:Label ID="lblTCauNegacion" runat="server" BreakAfter="true" Font-Bold="True" ForeColor="#666666" Font-Names="Roboto" Style="font-size: 16px!important;">Causal de Negación: </asp:Label>
                            <br />
                            <br />
                            <asp:ListBox ID="listCauNegacion" runat="server" Width="311px" Font-Names="Roboto" Font-Size="Small" BackColor="#EEEFEF" Font-Bold="False"></asp:ListBox>
                            <br />
                            <br />
                         </asp:Panel>
                        
                        </div>
                    <div align="center">
                     <asp:Panel ID="pnlError" runat="server" Visible="false">
                        <asp:Label ID="lblError" runat="server" Font-Bold="True" ForeColor="#8080FF" Font-Names="Roboto"></asp:Label>
                     </asp:Panel>
                    </div>
                    <br />

                    <div align="center">
                        <asp:Button ID="btnRegresar" runat="server" CssClass="btn btn-default" Text="Regresar" Width="85px" />
                        <asp:Button ID="btnMenu" runat="server" CssClass="btn btn-default" Text="Menú" Width="60px" CausesValidation="False" />
                        <asp:Button ID="btnsalir" runat="server" CssClass="btn btn-default" Text="Salir" Width="61px" CausesValidation="False" />
                    </div>
                    <br />
                    <div align="left">
                        <asp:Label ID="Label2" runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto">Usuario:</asp:Label>
                        <asp:Label ID="lblUsuario" runat="server" BreakAfter="False" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                    </div>
                    <div align="left">
                        <asp:Label ID="Label6" runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto">Ultimo Ingreso:</asp:Label>
                        <asp:Label ID="lblFechaUltIngreso" runat="server" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                    </div>
                    <br />
    </asp:Content>