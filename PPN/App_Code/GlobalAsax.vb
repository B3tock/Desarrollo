Imports Microsoft.VisualBasic
Imports System.Security.Principal

Namespace Pichincha.Presentation

    Public Class GlobalAsax
        Inherits HttpApplication


        Protected Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Error
            If Session("UserID") Is Nothing _
            OrElse Session("UserID") = "" _
            And Me.Request.Params("ReturnUrl") = Nothing Then
                Server.Transfer("../default.aspx")
                Return
            Else
                Server.Transfer("..\PaginaError.aspx")
            End If

        End Sub



    End Class

End Namespace