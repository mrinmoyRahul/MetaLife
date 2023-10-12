Public Class doctors2
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim row As HtmlGenericControl
        Dim col_sm As New HtmlGenericControl
        Dim label1 As Label
        Dim img As Image
        For i = 0 To 3
            row = New HtmlGenericControl("div")
            row.Attributes.Add("class", "row")
            For j = 0 To 3
                col_sm = New HtmlGenericControl("div")
                col_sm.Attributes.Add("class", "col-sm-3")
                'img = New Image
                'img.ImageUrl = "~/Admin/face.jpg"
                'label1 = New Label
                'label1.Text = "mrinmoy"
                'col_sm.Controls.Add(img)
                'col_sm.Controls.Add(label1)

                '-------------------- mydiv-------------------------
                mydiv = New HtmlGenericControl("div")
                mydiv.Attributes.Add("class", "responsive")
                mydiv1 = New HtmlGenericControl("div")
                mydiv1.Attributes.Add("class", "gallery")
                img = New Image
                img.AlternateText = "image"
                img.ImageUrl = ob.ds.Tables(0).Rows(j)("Image")
                mydiv2 = New HtmlGenericControl("div")
                mydiv2.Attributes.Add("class", "desc")
                Label = New Label
                Label.Text = "Dr. " + ob.ds.Tables(0).Rows(j)("FirstName") + " " + ob.ds.Tables(0).Rows(j)("LastName")
                label1 = New Label
                label1.Text = ob.ds.Tables(0).Rows(j)("Qualification")
                label2 = New Label
                label2.Text = ob.ds.Tables(0).Rows(j)("Department")
                Button = New Button
                Button.Text = "book appointment"
                'Additions:
                mydiv2.Controls.Add(Label)
                mydiv2.Controls.Add(New LiteralControl("<br />"))
                mydiv2.Controls.Add(label1)
                mydiv2.Controls.Add(New LiteralControl("<br />"))
                mydiv2.Controls.Add(label2)
                mydiv2.Controls.Add(New LiteralControl("<br />"))
                mydiv2.Controls.Add(Button)
                mydiv1.Controls.Add(img)
                mydiv1.Controls.Add(mydiv2)
                mydiv.Controls.Add(mydiv1)
                ''-----------------------mydiv--------------------------
                row.Controls.Add(col_sm)
            Next
            container.Controls.Add(row)
            container.Controls.Add(New LiteralControl("<br />"))
        Next
    End Sub

End Class