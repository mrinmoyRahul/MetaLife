Public Class WebForm7
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim mydiv As HtmlGenericControl
        Dim mydiv1 As HtmlGenericControl
        Dim mydiv2 As HtmlGenericControl
        'Dim img_div As HtmlGenericControl
        Dim row As HtmlGenericControl
        Dim col_sm As HtmlGenericControl
        Dim img As Image
        Dim label As Label
        Dim label1 As Label
        Dim label2 As Label
        Dim button As Button
        'ContentPlaceHolder mainContent = (ContentPlaceHolder)this.Master.FindControl("body");
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Doctors"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)

        If ob.ds.Tables(0).Rows.Count <> 0 Then
            'Dim exactfit As Integer = (ob.ds.Tables(0).Rows.Count) / 4
            'Dim remaining As Integer = (ob.ds.Tables(0).Rows.Count) Mod 4

            'If exactfit >= 4 Then
            '-------------------------row-------------------------------------
            ' row = New HtmlGenericControl("div")
            'row.Attributes.Add("class", "row")

            For j = 0 To ob.ds.Tables(0).Rows.Count - 1



                '--------------------col_sm--------------------------------------
                'col_sm = New HtmlGenericControl("div")
                'col_sm.Attributes.Add("class", "col-sm-3")

                '-------------------- mydiv-------------------------
                mydiv = New HtmlGenericControl("div")
                mydiv.Attributes.Add("class", "responsive")
                mydiv1 = New HtmlGenericControl("div")
                mydiv1.Attributes.Add("class", "gallery")
                'img_div = New HtmlGenericControl("div")
                'img_div.Attributes.Add("class", "rounded-circle")
                img = New Image
                img.AlternateText = "image"
                img.Attributes.Add("width", 600)
                img.Attributes.Add("height", 400)
                img.ImageUrl = ob.ds.Tables(0).Rows(j)("Image")
                'img_div.Controls.Add(img)
                mydiv2 = New HtmlGenericControl("div")
                mydiv2.Attributes.Add("class", "desc")
                label = New Label
                label.Text = "Dr. " + ob.ds.Tables(0).Rows(j)("FirstName") + " " + ob.ds.Tables(0).Rows(j)("LastName")
                label1 = New Label
                label1.Text = ob.ds.Tables(0).Rows(j)("Qualification")
                label2 = New Label
                label2.Text = ob.ds.Tables(0).Rows(j)("Department")
                button = New Button
                button.ID = ob.ds.Tables(0).Rows(j)("Id")
                button.Text = "Book appointment"
                AddHandler button.Click, AddressOf Me.button_Click
                'Additions:
                mydiv2.Controls.Add(label)
                mydiv2.Controls.Add(New LiteralControl("<br />"))
                mydiv2.Controls.Add(label1)
                mydiv2.Controls.Add(New LiteralControl("<br />"))
                mydiv2.Controls.Add(label2)
                mydiv2.Controls.Add(New LiteralControl("<br />"))
                mydiv2.Controls.Add(button)
                mydiv1.Controls.Add(img)
                mydiv1.Controls.Add(mydiv2)
                mydiv.Controls.Add(mydiv1)

                ''-----------------------mydiv--------------------------

                'col_sm.Controls.Add(mydiv)
                '-----------------------col_sm--------------------------


                'row.Controls.Add(col_sm)
                container.Controls.Add(mydiv)
            Next j
            '--------------------------------row-----------------------------------
            'container.Controls.Add(row)
            'Response.Write("mrinmoy")
        End If
        'End If
    End Sub

    Protected Sub button_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim button As Button = sender
        Session("DoctorAppointId") = button.ID
        Response.Redirect("new_doc.aspx")
    End Sub
End Class