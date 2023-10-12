Imports System.IO.Ports
Public Class WebForm6
    Inherits System.Web.UI.Page
    Dim SP As New SerialPort

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        SP.PortName = "COM3"
        SP.Open()
        Dim ph_no As String
        ph_no = Char.ConvertFromUtf32(34) + TextBox2.Text + Char.ConvertFromUtf32(34)
        SP.Write("AT+CMGF=1" + Char.ConvertFromUtf32(13))
        SP.Write("AT+CMGS=" + ph_no + Char.ConvertFromUtf32(13))
        SP.Write(TextBox1.Text + Char.ConvertFromUtf32(26) + Char.ConvertFromUtf32(13))
        SP.Close()
    End Sub
End Class