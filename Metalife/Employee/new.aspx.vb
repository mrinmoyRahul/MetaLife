Public Class _new
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        ob.con.Open()
        'If (Session("PatientType") = "outdoor") Then
        ob.cmd.CommandText = "select * from OutdoorPatients where FirstName+' '+LastName ='" & TextBox1.Text & "'"
        'End If
        If (Session("PatientType") = "indoor") Then
            ob.cmd.CommandText = "select * from IndoorPatients where FirstName+' '+LastName ='" & TextBox1.Text & "'"
        End If

        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        If (ob.ds.Tables(0).Rows.Count <> 0) Then
            TextBox2.Text = ob.ds.Tables(0).Rows(0)("FirstName")
            TextBox3.Text = ob.ds.Tables(0).Rows(0)("LastName")
            TextBox4.Text = ob.ds.Tables(0).Rows(0)("Gender")
            TextBox5.Text = ob.ds.Tables(0).Rows(0)("Address")
            TextBox6.Text = ob.ds.Tables(0).Rows(0)("Email")
            TextBox7.Text = ob.ds.Tables(0).Rows(0)("ContactNumber")
            info.Visible = True
            message.Visible = False
            If (Session("PatientType") = "indoor") Then
                TextBox8.Text = ob.ds.Tables(0).Rows(0)("WardName")
                TextBox9.Text = ob.ds.Tables(0).Rows(0)("BedNumber")
                TextBox8.Visible = True
                TextBox9.Visible = True
                Label7.Visible = True
                Label8.Visible = True
            Else
                TextBox8.Visible = False
                TextBox9.Visible = False
                Label7.Visible = False
                Label8.Visible = False
            End If
        Else
            info.Visible = False
            message.Visible = True
        End If
    End Sub
    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Session("PatientType") = RadioButtonList1.SelectedItem.ToString
        'Response.Write(Session("PatientType"))
    End Sub
End Class