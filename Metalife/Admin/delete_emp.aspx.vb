Public Class delete_emp
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim mycell As New HtmlTableCell
        Dim j As Integer
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Employees"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)


        Dim c As New TableCell
        Dim d As New TableCell
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

                d = New TableCell
                d.Text = ob.ds.Tables(0).Rows(j)("Gender")
                r.Cells.Add(d)

                h = New TableCell
                h.Text = ob.ds.Tables(0).Rows(j)("Department")
                r.Cells.Add(h)


                f = New TableCell
                f.Attributes.Add("align", "center")
                Dim RemButton As New Button
                RemButton.Text = " Remove "
                RemButton.ID = ob.ds.Tables(0).Rows(j)("id")
                AddHandler RemButton.Click, AddressOf Me.RemButton_Click
                f.Controls.Add(RemButton)
                r.Cells.Add(f)


                Table1.Rows.Add(r)
            Next j
        End If
    End Sub
    Protected Sub RemButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim rembutton As Button = sender
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "delete from Employees where id = '" & rembutton.ID & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Redirect("delete_emp.aspx")
    End Sub

End Class