Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim box As HtmlGenericControl
        Dim heading As HtmlGenericControl
        Dim label As Label

        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Departments"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)

        If ob.ds.Tables(0).Rows.Count <> 0 Then
            For j = 0 To ob.ds.Tables(0).Rows.Count - 1
                box = New HtmlGenericControl("div")
                box.Attributes.Add("class", "box")
                label = New Label
                label.Text = ob.ds.Tables(0).Rows(j)("Description")
                heading = New HtmlGenericControl("h2")
                heading.InnerHtml = ob.ds.Tables(0).Rows(j)("Depart_name")
                box.Controls.Add(heading)
                'box.InnerText = ob.ds.Tables(0).Rows(j)("Description")
                'Response.Write(ob.ds.Tables(0).Rows(j)("Description"))
                box.Controls.Add(label)
                department.Controls.Add(box)
               
            Next j
        End If
    End Sub

End Class