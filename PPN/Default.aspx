<%@ page language="VB" autoeventwireup="false"  CodeFile="~/Default.aspx.vb" inherits="_Default" theme="PichinchaSK" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/> 
    <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
    <title>Portafolio</title>
   
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />    
    <link href="bootstrap/dist/css/ClientU.min.css" rel="stylesheet" type="text/css" />    
    <link href="bootstrap/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    </head>

<body class="login-page" style="background-color: white !important;">
    <form id="form1" runat="server">
     <div class="login-box">  
       
           <div class="box box-info">
                <div class="box-header with-border" style="background-color: #FFDC00; text-align:center;">
                    <img src="images/LogoPichincha.png" />
                </div>

           <div class="form-border">
                <br />  
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    <div class="input-group">
                        <span class="input-group-addon">
                            <img src="Images/login.png" /></span>
                        <asp:TextBox ID="txtUser" runat="server" Width="100%" CssClass="form-control" placeholder="Usuario:" AutoCompleteType="Disabled"></asp:TextBox>
                        <span class="input-group-addon err">
                            <i>&nbsp;  
                            <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUser" ErrorMessage="Digite el usuario" Wrapping="NoWrap" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </i>
                        </span>
                    </div>
                    <br />

                    <div class="input-group">
                        <span class="input-group-addon">
                            <img src="Images/password.png" /></span>
                        <asp:TextBox ID="txtContrasena" runat="server" Width="100%" CssClass="form-control" placeholder="Contraseña:" AutoCompleteType="Disabled" TextMode="Password"></asp:TextBox>
                        <span class="input-group-addon err">
                            <i>&nbsp;                          
                             <asp:RequiredFieldValidator ID="rfvContrasena" runat="server" ControlToValidate="txtContrasena" ErrorMessage="Digite  la contraseña" Display="Dynamic" ForeColor="Red">*</asp:RequiredFieldValidator>
                            </i>
                        </span>

                    </div>
                    <br />

                    <asp:Label ID="Label2" runat="server" Visible="False" Font-Names="Roboto" ForeColor="Red">Label</asp:Label>

                    <br />
                    <div align="center">
                        <asp:Button ID="Command1" runat="server" Text="Ingresar &nbsp; &nbsp;  ►" class="btn btn-default" />

                        <br />
                        <br />
                    </div>
   </div>
          </div>

    </div> 
    
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>   
    <script src="bootstrap/dist/js/app.min.js" type="text/javascript"></script>   
    <script src="bootstrap/dist/js/pages/dashboard.js" type="text/javascript"></script>
        
 </form>
  </body>
       
</html>
