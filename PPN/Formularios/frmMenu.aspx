<%@ page language="VB" autoeventwireup="false" MasterPageFile="~/PFL.master" CodeFile="~/Formularios/frmMenu.aspx.vb" inherits="Formularios_frmMenu" theme="PichinchaSK" %>


    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                    <div align="center">
                        <asp:Button ID="btnRadicacion" runat="server" CssClass="btn btn-default" Text="Radicacion" Width="100%" />
                    </div>
                    <br />
                    <div align="center">
                        <asp:Button ID="Consultas" runat="server" CssClass="btn btn-default" Text="Consultas" Width="100%" />
                    </div>
                    <br />
                    <div align="center">
                        <asp:Button ID="btnsalir" runat="server" CssClass="btn btn-default" Text="Salir" Width="100%" />
                    </div>

                    <br />

                    <div align="center">
                        <asp:Label ID="lblUsuario" runat="server" BreakAfter="False" Font-Bold="True" Font-Names="Roboto"></asp:Label>
                    </div>
                    <div align="center">
                        <asp:Label ID="lblFechaUltIngreso" runat="server" Font-Bold="True" ForeColor="#FF8000" Font-Names="Roboto"></asp:Label>
                    </div>
        <br />
  </asp:Content>