Public Class cd
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim mycell As New HtmlTableCell
        Dim j As Integer
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Doctors"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)




        Dim r1 As TableRow
        Dim c As New TableCell
        Dim r2 As TableRow
        Dim f As New TableCell
        Dim r3 As New TableRow
        Dim g As TableCell
        Dim h As New TableCell
        Dim r4 As TableRow
        Dim r5 As TableRow
        Dim r6 As TableRow
        Dim r7 As TableRow
        Dim m As New TableCell
        Dim n As New TableCell
        Dim r As TableRow
        If ob.ds.Tables(0).Rows.Count <> 0 Then
            For j = 0 To ob.ds.Tables(0).Rows.Count - 1

                r1 = New TableRow()
                c = New TableCell
                c.Text = ob.ds.Tables(0).Rows(j)("FirstName")
                r1.Cells.Add(c)
                Table1.Rows.Add(r1)

                'r2 = New TableRow()
                g = New TableCell
                g.Text = ob.ds.Tables(0).Rows(j)("LastName")
                r1.Cells.Add(g)
                Table1.Rows.Add(r1)

                r3 = New TableRow()
                h = New TableCell
                h.Text = ob.ds.Tables(0).Rows(j)("Department").ToString
                r3.Cells.Add(h)
                Table1.Rows.Add(r3)

                Response.Write(ob.ds.Tables(0).Rows(j)("id"))
                ob.cmd.CommandText = "select * from DoctorTimings where DoctorId='" & ob.ds.Tables(0).Rows(j)("id") & "'"
                ob.cmd.Connection = ob.con
                ob.adp.SelectCommand = ob.cmd
                ob.adp.Fill(ob.ds1)
                'Response.Write(ob.ds.Tables(0).Rows(j)("id"))
                Response.Write(ob.ds1.Tables(0).Rows.Count)
                For i = 0 To ob.ds1.Tables(0).Rows.Count - 1
                    r4 = New TableRow()
                    f = New TableCell
                    f.Text = ob.ds1.Tables(0).Rows(i)("Day").ToString
                    r4.Cells.Add(f)
                    'Table1.Rows.Add(r4)

                    'r5 = New TableRow()
                    m = New TableCell
                    m.Text = ob.ds1.Tables(0).Rows(i)("TimeIn").ToString
                    r4.Cells.Add(m)
                    'Table1.Rows.Add(r4)

                    'r6 = New TableRow()
                    n = New TableCell
                    n.Text = ob.ds1.Tables(0).Rows(i)("TimeOut").ToString
                    r4.Cells.Add(n)

                    Table1.Rows.Add(r4)
                Next i
                ob.ds1.Clear()
                r7 = New TableRow()
                f = New TableCell
                f.Attributes.Add("align", "center")
                Dim BookButton As New Button
                BookButton.Text = " book appointment "
                BookButton.ID = ob.ds.Tables(0).Rows(j)("id")
                AddHandler BookButton.Click, AddressOf Me.BookButton_Click
                f.Controls.Add(BookButton)
                r7.Cells.Add(f)
                Table1.Rows.Add(r7)
            Next j
        End If
    End Sub
    Protected Sub BookButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)

        

        Response.Redirect("fa.aspx")
    End Sub

End Class