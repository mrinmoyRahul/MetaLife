Public Class edit_employee_list
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim mycell As New HtmlTableCell
        Dim j As Integer
        Dim s As String
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Employees"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)


        Dim c As New TableCell

        Dim f As New TableCell
        Dim g As New TableCell
        Dim h As New TableCell
        Dim r As TableRow
        If ob.ds.Tables(0).Rows.Count <> 0 Then



            For j = 0 To ob.ds.Tables(0).Rows.Count - 1

                r = New TableRow()


                c = New TableCell
                c.Text = ob.ds.Tables(0).Rows(j)("FirstName")

                Session("f") = ob.ds.Tables(0).Rows(j)("id")
                r.Cells.Add(c)

                g = New TableCell
                g.Text = ob.ds.Tables(0).Rows(j)("LastName")
                r.Cells.Add(g)

                h = New TableCell
                h.Text = ob.ds.Tables(0).Rows(j)("Department")
                r.Cells.Add(h)


                f = New TableCell
                f.Attributes.Add("align", "center")
                Dim EditButton As New Button
                EditButton.Text = " Edit "
                EditButton.ID = ob.ds.Tables(0).Rows(j)("id")
                AddHandler EditButton.Click, AddressOf Me.EditButton_Click
                f.Controls.Add(EditButton)
                r.Cells.Add(f)

                'g = New TableCell
                'g.Attributes.Add("align", "center")
                'Dim ChangeButton As New Button
                'ChangeButton.Text = " Edit "
                'ChangeButton.ID = ob.ds.Tables(0).Rows(j)("id")
                'AddHandler ChangeButton.Click, AddressOf Me.ChangeButton_Click
                'g.Controls.Add(ChangeButton)
                'r.Cells.Add(g)

                Table1.Rows.Add(r)
            Next j
        End If

    End Sub
    Protected Sub EditButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim EditButton As Button = sender
        Session("EmployeeEditId") = EditButton.ID
        Response.Redirect("edit_emp.aspx")
    End Sub
End Class

