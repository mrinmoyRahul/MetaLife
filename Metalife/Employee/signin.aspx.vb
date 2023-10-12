Public Class log
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim mycell As New HtmlTableCell
        Dim j As Integer
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select FirstName , Password from Employees where FirstName='" & TextBox1.Text & "' and Password='" & TextBox2.Text & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        'Response.Write(ob.ds.Tables(0).Rows.Count)
        If ob.ds.Tables(0).Rows.Count <> 0 Then
            Response.Redirect("new.aspx")
        End If
    End Sub
End Class