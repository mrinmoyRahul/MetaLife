Public Class Queries
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim box As HtmlGenericControl
        'Dim heading As HtmlGenericControl
        Dim name As Label
        Dim email As Label
        Dim department As Label
        Dim subject As HtmlGenericControl
        Dim button1 As Button
        'Dim label As Label
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Query"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)

        If ob.ds.Tables(0).Rows.Count <> 0 Then
            For j = 0 To ob.ds.Tables(0).Rows.Count - 1
                box = New HtmlGenericControl("div")
                box.Attributes.Add("class", "box")
                name = New Label
                name.Text = ob.ds.Tables(0).Rows(j)("Fname") + " " + ob.ds.Tables(0).Rows(j)("Lname")
                email = New Label
                email.Text = ob.ds.Tables(0).Rows(j)("Email")
                department = New Label
                department.Text = ob.ds.Tables(0).Rows(j)("Department")
                subject = New HtmlGenericControl("div")
                subject.InnerText = ob.ds.Tables(0).Rows(j)("Subject")
                button1 = New Button
                button1.ID = ob.ds.Tables(0).Rows(j)("Id")
                button1.Text = "delete query"
                AddHandler button1.Click, AddressOf Me.button1_Click
                'additions:
                feedback.Controls.Add(name)
                feedback.Controls.Add(New LiteralControl("<br />"))
                feedback.Controls.Add(email)
                feedback.Controls.Add(New LiteralControl("<br />"))
                feedback.Controls.Add(department)
                feedback.Controls.Add(New LiteralControl("<br />"))
                box.Controls.Add(subject)
                box.Controls.Add(New LiteralControl("<br />"))
                box.Controls.Add(button1)
                'heading = New HtmlGenericControl("h2")
                'heading.InnerHtml = ob.ds.Tables(0).Rows(j)("Depart_name")
                'box.Controls.Add(heading)
                'box.InnerText = ob.ds.Tables(0).Rows(j)("Description")
                'Response.Write(ob.ds.Tables(0).Rows(j)("Description"))
                'box.Controls.Add(label)
                'dep.Controls.Add(box)
                feedback.Controls.Add(box)
            Next j
        End If
    End Sub
    Protected Sub button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim button1 As Button = sender
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "delete from Query where id = '" & button1.ID & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Redirect("Queries.aspx")
    End Sub
End Class