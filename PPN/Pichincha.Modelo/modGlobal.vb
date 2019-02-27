Imports System.Configuration

Public Module modGlobal

    Dim reader As New AppSettingsReader()

    Public appM As String = reader.GetValue("app", String.Empty.GetType)
    Public EdadMax As String = reader.GetValue("EdadMax", String.Empty.GetType)
    Public SMMLV As String = reader.GetValue("SMMLV", String.Empty.GetType)
    Public RtaRadicacion As String = reader.GetValue("RtaRadicacion", String.Empty.GetType)
    Public relacion As String = reader.GetValue("relacion", String.Empty.GetType)
    Public UserId As String = reader.GetValue("UserId", String.Empty.GetType)

End Module
