Public Class va
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim mycell As New HtmlTableCell
        Dim j As Integer
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Appointments"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)


        Dim c As New TableCell
        Dim f As New TableCell
        Dim g As New TableCell
        Dim h As New TableCell
        Dim i As New TableCell
        Dim r As TableRow
        If ob.ds.Tables(0).Rows.Count <> 0 Then
            For j = 0 To ob.ds.Tables(0).Rows.Count - 1

                r = New TableRow()

                c = New TableCell
                c.Text = ob.ds.Tables(0).Rows(j)("PatientName")
                r.Cells.Add(c)

                g = New TableCell
                g.Text = ob.ds.Tables(0).Rows(j)("DoctorName")
                r.Cells.Add(g)

                h = New TableCell
                h.Text = ob.ds.Tables(0).Rows(j)("Time").ToString
                r.Cells.Add(h)

                i = New TableCell
                i.Text = ob.ds.Tables(0).Rows(j)("Date").ToString
                r.Cells.Add(i)

                f = New TableCell
                f.Attributes.Add("align", "center")
                Dim RemButton As New Button
                RemButton.Text = " Visited "
                RemButton.ID = ob.ds.Tables(0).Rows(j)("id")
                AddHandler RemButton.Click, AddressOf Me.RemButton_Click
                f.Controls.Add(RemButton)
                r.Cells.Add(f)


                Table1.Rows.Add(r)
            Next j
        End If
        ob.con.Close()

        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "select * from VisitedAppointments"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds1)
        If ob.ds1.Tables(0).Rows.Count <> 0 Then
            For j = 0 To ob.ds1.Tables(0).Rows.Count - 1

                r = New TableRow()

                h = New TableCell
                h.Text = ob.ds1.Tables(0).Rows(j)("id")
                r.Cells.Add(h)

                c = New TableCell
                c.Text = ob.ds1.Tables(0).Rows(j)("PatientName")
                r.Cells.Add(c)

                g = New TableCell
                g.Text = ob.ds1.Tables(0).Rows(j)("DoctorName")
                r.Cells.Add(g)

                f = New TableCell
                f.Text = ob.ds1.Tables(0).Rows(j)("Time").ToString
                r.Cells.Add(f)

                i = New TableCell
                i.Text = ob.ds1.Tables(0).Rows(j)("Date").ToString
                r.Cells.Add(i)

                Table2.Rows.Add(r)
            Next j
        End If

    End Sub
    Protected Sub RemButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        Dim rembutton As Button = sender
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "select * from Appointments where id='" & rembutton.ID & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        Response.Write(ob.ds.Tables(0).Rows(0)(1))

        ob.cmd.CommandText = "insert into VisitedAppointments(id,PatientName,DoctorName,Time,Date) values('" & ob.ds.Tables(0).Rows(0)(0) & "','" & ob.ds.Tables(0).Rows(0)(1) & "','" & ob.ds.Tables(0).Rows(0)(2) & "','" & ob.ds.Tables(0).Rows(0)(3).ToString & "','" & ob.ds.Tables(0).Rows(0)(4) & "')"
        ob.cmd.ExecuteNonQuery()

        ob.cmd.CommandText = "delete  from Appointments where id='" & rembutton.ID & "'"
        ob.cmd.ExecuteNonQuery()


        Response.Redirect("va.aspx")
    End Sub
End Class