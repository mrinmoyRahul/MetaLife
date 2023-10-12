Public Class new_doc
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "select FirstName, Lastname from Doctors where id='" & Session("DoctorAppointId") & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        Dim DoctorName As String = ob.ds.Tables(0).Rows(0)("FirstName") + " " + ob.ds.Tables(0).Rows(0)("LastName")
        'ob.con.Close()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "insert into Appointments(PatientName,DoctorName,Time,Date) values('" & TextBox1.Text + TextBox5.Text & "','" & DoctorName & "','" & DateTime.Now.ToString & "','" & DateTime.Now.Date.ToString & "')"
        ob.cmd.ExecuteNonQuery()
        'ob.cmd.CommandText = "insert into OutdoorPatients(Name,gender,Address) values('" & TextBox1.Text & "','" & RadioButtonList1.SelectedValue.ToString & "','" & TextBox2.Text & "')"
        ob.cmd.CommandText = "insert into OutdoorPatients(FirstName,LastName,Gender,Address,Email,ContactNumber) values('" & TextBox1.Text & "','" & TextBox5.Text & "','" & RadioButtonList1.SelectedValue.ToString & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & TextBox3.Text & "')"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
    End Sub
End Class