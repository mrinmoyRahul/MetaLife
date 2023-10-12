Public Class log1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        'Dim mycell As New HtmlTableCell
        Dim j As Integer
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select Name , Pass from adminlog where Name='" & TextBox1.Text & "' and Pass='" & TextBox2.Text & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        'Response.Write(ob.ds.Tables(0).Rows.Count)
        If ob.ds.Tables(0).Rows.Count <> 0 Then
            Response.Redirect("home.aspx")
        End If
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class