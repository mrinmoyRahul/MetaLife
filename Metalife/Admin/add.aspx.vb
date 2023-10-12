Imports System.IO
Public Class WebForm5
    Inherits System.Web.UI.Page
    Dim imagepath As String
    Dim img As New Image
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        img.Width = 100
        img.Height = 150
        img.BorderWidth = 1
        img.AlternateText = "doctor image"
        Master.FindControl("sidebar").Controls.Add(img)

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1

        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "insert into Doctors(FirstName,LastName,Department,Qualification,Image,Description,Gender,Address,Email,ContactNo) values('" & FirstName.Text & "','" & LastName.Text & "','" & DropDownList1.SelectedItem.ToString & "','" & Qualification.Text & "','" & Session("imagepath") & "','" & Description.Text & "','" & RadioButtonList1.SelectedItem.ToString & "','" & Address.Text & "','" & Email.Text & "','" & contactnumb.Text & "')"
        ob.cmd.ExecuteNonQuery()
        ob.cmd.CommandText = "select id from Doctors where email='" & Email.Text & "'"
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        Response.Write(Session("imagepath"))
        If CheckBox1.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox1.Text & "','" & TextBox1.Text & "','" & TextBox8.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox2.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox2.Text & "','" & TextBox2.Text & "','" & TextBox9.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox3.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox3.Text & "','" & TextBox3.Text & "','" & TextBox10.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox4.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox4.Text & "','" & TextBox4.Text & "','" & TextBox11.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox5.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox5.Text & "','" & TextBox5.Text & "','" & TextBox12.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox6.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox6.Text & "','" & TextBox6.Text & "','" & TextBox13.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox7.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & ob.ds.Tables(0).Rows(0)("id") & "','" & CheckBox7.Text & "','" & TextBox7.Text & "','" & TextBox14.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        'FirstName.Text.Empty.ToString()
        Label1.Text = String.Empty
    End Sub



    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim filename As String
        Label1.Text = String.Empty
        Try
            If (FileUpload1.HasFile) Then

                'Response.Write("wduidt")

                If (FileUpload1.PostedFile.ContentType = "image/jpeg") Then
                    'Response.Write(FileUpload1.PostedFile.ContentLength)
                    If (FileUpload1.PostedFile.ContentLength < 20000000) Then
                        filename = Path.GetFileName(FileUpload1.FileName)
                        FileUpload1.SaveAs(Server.MapPath("~/Admin/") + filename)
                        Label1.Text = "image uploaded successfully"
                    Else
                        Label1.Text = "File must be less than  10mb"
                    End If
                Else
                    Label1.Text = "File must be an image"
                End If
            End If
        Catch ex As Exception
            Label1.Text = "File can't be uploaded"
        End Try
        'Dim fileName As String = FileUpload1.PostedFile.FileName.ToString()
        'Session(imagepath) = Server.MapPath("~/Admin/") + filename
        Session("imagepath") = "~" + "/" + "Admin" + "/" + filename
        'Response.Write(imagepath)
        img.ImageUrl = "~" + "/" + "Admin" + "/" + filename

    End Sub

    Protected Sub CheckBox2_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox2.CheckedChanged
        If CheckBox2.Checked = True Then
            TextBox2.Visible = True
            TextBox9.Visible = True
        Else
            TextBox2.Visible = False
            TextBox9.Visible = False
        End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then
            TextBox1.Visible = True
            TextBox8.Visible = True
        Else
            TextBox1.Visible = False
            TextBox8.Visible = False
        End If
    End Sub

    Protected Sub CheckBox3_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox3.CheckedChanged
        If CheckBox3.Checked = True Then
            TextBox3.Visible = True
            TextBox10.Visible = True
        Else
            TextBox3.Visible = False
            TextBox10.Visible = False
        End If
    End Sub

    Protected Sub CheckBox4_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox4.CheckedChanged
        If CheckBox4.Checked = True Then
            TextBox4.Visible = True
            TextBox11.Visible = True
        Else
            TextBox4.Visible = False
            TextBox11.Visible = False
        End If
    End Sub

    Protected Sub CheckBox5_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox5.CheckedChanged
        If CheckBox5.Checked = True Then
            TextBox5.Visible = True
            TextBox12.Visible = True
        Else
            TextBox5.Visible = False
            TextBox12.Visible = False
        End If
    End Sub

    Protected Sub CheckBox6_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox6.CheckedChanged
        If CheckBox6.Checked = True Then
            TextBox6.Visible = True
            TextBox13.Visible = True
        Else
            TextBox6.Visible = False
            TextBox13.Visible = False
        End If
    End Sub

    Protected Sub CheckBox7_CheckedChanged(ByVal sender As Object, ByVal e As EventArgs) Handles CheckBox7.CheckedChanged
        If CheckBox7.Checked = True Then
            TextBox7.Visible = True
            TextBox14.Visible = True
        Else
            TextBox7.Visible = False
            TextBox14.Visible = False
        End If
    End Sub

    Protected Sub Email_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Email.TextChanged
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select * from Doctors"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)
        Dim EmailOk As Integer = 0
        If ob.ds.Tables(0).Rows.Count <> 0 Then
            For j = 0 To ob.ds.Tables(0).Rows.Count - 1
                If ob.ds.Tables(0).Rows(j)("Email") = Email.Text Then
                    Label2.Text = "email already in use"
                    EmailOk = 1
                    Button1.Enabled = False
                    Exit For
                End If
            Next
        End If
        If EmailOk = 0 Then
            Button1.Enabled = True
            Label2.Text = String.Empty
        End If
    End Sub
End Class