<%@ page language="VB" autoeventwireup="false" CodeFile="~/PaginaError.aspx.vb" inherits="PaginaError" theme="PichinchaSK" %>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head id="Head1" runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="initial-scale=1, maximum-scale=1" />
        <title>Portafolio</title>

        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="bootstrap/dist/css/ClientU.min.css" rel="stylesheet" type="text/css" />
        <link href="bootstrap/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    </head>

    <body class="login-page" style="background-color: white !important;">

        <form id="form2" runat="server">

            <div class="login-box">

                <div class="box box-info">
                    <div class="box-header with-border" style="background-color: #F7C000; text-align: center;">
                        <img src="images/LogoPichincha.png" />

                    </div>
                    <div class="form-border">
                        <br />
                        <div class="input-group">
                            <img src="Images/error_pagina.gif" width="100px" height="100px" />
                            <asp:Label ID="lblError" runat="server"></asp:Label>
                        </div>
                        <br />

                        <br />
                        <br />
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


