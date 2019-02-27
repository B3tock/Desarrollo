

<script runat="server">

Sub CalChanged(sender as Object,e as EventArgs)
        lab1.Text = "You selected " & c1.SelectedDate
        MsgBox("aca")
        Form.Action = "f2"
End Sub

    Protected Sub hola(ByVal sender As Object, ByVal e As System.EventArgs)
       
    End Sub
</script>

<form id="f1" runat="server">
<asp:Calendar id="c1"
  OnSelectionChanged="CalChanged" runat="server" />
    <asp:TextBox id="TextBox1" runat="server"  OnTextChanged="hola">
    </asp:TextBox>
</form>

<form id="f2" runat="server">
<asp:Label id="lab1" runat="server" />
</form>