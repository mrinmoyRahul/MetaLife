Imports System.Globalization
Public Class fa1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Not IsPostBack) Then


            Dim ob As New Class1
            ob.con.Open()
            ob.cmd.CommandText = "select * from Doctors"
            ob.cmd.Connection = ob.con
            ob.adp.SelectCommand = ob.cmd
            ob.adp.Fill(ob.ds)
            If ob.ds.Tables(0).Rows.Count > 0 Then
                For Each dRow As DataRow In ob.ds.Tables(0).Rows
                    'Response.Write(dRow("FirstName") + " " + dRow("LastName"))
                    DropDownList1.Items.Add(dRow("FirstName") + " " + dRow("LastName"))

                Next
            End If
        End If
    End Sub

    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        Session("PatientType") = RadioButtonList1.SelectedItem.ToString
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "insert into Appointments(patientname,doctorname,time,date) values('" & TextBox1.Text & "','" & DropDownList1.Text & "','" & TextBox3.Text & "','" & TextBox2.Text & "')"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Write("data inserted")
    End Sub

    Protected Sub TextBox2_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox2.TextChanged
        Dim dayname As String = WeekdayName(Weekday(Date.Parse(TextBox2.Text)))


        'Response.Write(dayname)
        Dim c As Integer = 0
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Doctors where FirstName+' '+LastName='" & DropDownList1.SelectedItem.ToString & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        Dim docId As Integer = ob.ds.Tables(0).Rows(0)("id")
        'Response.Write(docId)
        ob.cmd.CommandText = "select * from DoctorTimings where DoctorId='" & docId & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds1)
        'Response.Write(ob.ds1.Tables(0).Rows(0)("TimeIn"))

        For Each dRow As DataRow In ob.ds1.Tables(0).Rows
            'For index As Integer = 0 To ob.ds.Tables(0).Columns.Count - 1
            If (dRow("Day").ToString.ToUpper = dayname.ToUpper) Then
                c = 1
                'Response.Write(dRow("Day").ToString.ToUpper)

                'Response.Write("good")
                Exit For
            End If
            'Next
        Next
        If (c = 0) Then
            Label1.Text = "doctor not available on this day"
            Button1.Enabled = False
        Else
            TextBox3.Text = ob.ds1.Tables(0).Rows(0)("TimeIn").ToString
            'Response.Write(ob.ds.Tables(0).Rows(0)("TimeIn"))
            Label1.Text = ""
            Button1.Enabled = True
        End If
    End Sub

    '    Protected Sub TextBox3_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox3.TextChanged
    '        Dim apptime As DateTime = Convert.ToDateTime(TextBox3.Text)
    '        Dim ob As New Class1
    '        ob.con.Open()
    '        ob.cmd.CommandText = "select * from Doctors where FirstName+' '+LastName='" & DropDownList1.SelectedItem.ToString & "'"
    '        ob.cmd.Connection = ob.con
    '        ob.adp.SelectCommand = ob.cmd
    '        ob.adp.Fill(ob.ds)
    '        Dim docId As Integer = ob.ds.Tables(0).Rows(0)("id")
    '        Response.Write(docId)
    '        ob.cmd.CommandText = "select * from DoctorTimings where DoctorId='" & docId & "'"
    '        ob.cmd.Connection = ob.con
    '        ob.adp.SelectCommand = ob.cmd
    '        ob.adp.Fill(ob.ds)
    '        If (ob.ds.Tables(0).Rows.Count > 0) Then
    '            TextBox3.Text = ob.ds.Tables(0).Rows(0)("TimeIn")
    '        End If
    '    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles TextBox1.TextChanged
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from IndoorPatients where FirstName+' '+LastName='" & TextBox1.Text & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)

        ob.cmd.CommandText = "select * from OutdoorPatients where FirstName+' '+LastName='" & TextBox1.Text & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds1)

        If (Not (ob.ds.Tables(0).Rows.Count > 0 Or ob.ds1.Tables(0).Rows.Count > 0)) Then
            Label2.Text = "name not registered!"
        Else
            Label2.Text = ""
        End If

    End Sub
End Class