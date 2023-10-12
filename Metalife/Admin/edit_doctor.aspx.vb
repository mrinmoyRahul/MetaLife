Imports System.IO
Public Class edit_doctor
    Inherits System.Web.UI.Page
    Dim img As New Image
    Dim FirstNameCheck As Integer
    Dim LastNameCheck As Integer
    Dim AddressCheck As Integer
    Dim GenderCheck As Integer
    Dim ContactNoCheck As Integer
    Dim EmailCheck As Integer
    Dim QualificationCheck As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        img.Width = 100
        img.Height = 150
        img.BorderWidth = 1
        img.Attributes.Add("style", "margin-left:50px; margin-top:50px;")
        img.AlternateText = "doctor image"
        Master.FindControl("sidebar").Controls.Add(img)
        If (Not IsPostBack) Then
            Dim ob As New Class1
            ob.con.Open()
            ob.cmd.CommandText = "select * from Doctors where id='" & Session("DoctorEditId") & "'"
            ob.cmd.Connection = ob.con
            ob.adp.SelectCommand = ob.cmd
            ob.adp.Fill(ob.ds)
            ob.cmd.CommandText = "select * from DoctorTimings where DoctorId='" & Session("DoctorEditId") & "'"
            'ob.cmd.Connection = ob.con
            ob.adp.SelectCommand = ob.cmd
            ob.adp.Fill(ob.ds1)
            If ob.ds.Tables(0).Rows.Count > 0 Then
                FirstName.Text = ob.ds.Tables(0).Rows(0)("FirstName")
                LastName.Text = ob.ds.Tables(0).Rows(0)("LastName").ToString
                Address.Text = ob.ds.Tables(0).Rows(0)("Address").ToString
                RadioButtonList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Gender").ToString
                contactnumb.Text = ob.ds.Tables(0).Rows(0)("ContactNo").ToString
                Email.Text = ob.ds.Tables(0).Rows(0)("Email").ToString
                DropDownList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Department").ToString
                Qualification.Text = ob.ds.Tables(0).Rows(0)("Qualification").ToString
                img.ImageUrl = ob.ds.Tables(0).Rows(0)("Image").ToString
                Session("imagepath") = ob.ds.Tables(0).Rows(0)("Image").ToString
                Description.Text = ob.ds.Tables(0).Rows(0)("Description").ToString
                For j = 0 To ob.ds1.Tables(0).Rows.Count - 1
                    If CheckBox1.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox1.Checked = True
                        TextBox1.Visible = True
                        TextBox8.Visible = True
                        TextBox1.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox8.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                    If CheckBox2.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox2.Checked = True
                        TextBox2.Visible = True
                        TextBox9.Visible = True
                        TextBox2.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox9.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                    If CheckBox3.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox3.Checked = True
                        TextBox3.Visible = True
                        TextBox10.Visible = True
                        TextBox3.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox10.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                    If CheckBox4.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox4.Checked = True
                        TextBox4.Visible = True
                        TextBox11.Visible = True
                        TextBox4.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox11.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                    If CheckBox5.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox5.Checked = True
                        TextBox5.Visible = True
                        TextBox12.Visible = True
                        TextBox5.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox12.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                    If CheckBox6.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox6.Checked = True
                        TextBox6.Visible = True
                        TextBox13.Visible = True
                        TextBox6.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox13.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                    If CheckBox7.Text = ob.ds1.Tables(0).Rows(j)("Day") Then
                        CheckBox7.Checked = True
                        TextBox7.Visible = True
                        TextBox14.Visible = True
                        TextBox7.Text = ob.ds1.Tables(0).Rows(j)("TimeIn").ToString
                        TextBox14.Text = ob.ds1.Tables(0).Rows(j)("TimeOut").ToString
                    End If
                Next j
            End If
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim filename As String
        Session("imagepath") = String.Empty
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
                        Session("imagepath") = "~" + "/" + "Admin" + "/" + filename
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

        'Response.Write(imagepath)
        img.ImageUrl = "~" + "/" + "Admin" + "/" + filename

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        'Response.Write(Session("imagepath"))
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "update Doctors set FirstName='" & FirstName.Text & "',LastName='" & LastName.Text & "',Department='" & DropDownList1.SelectedItem.ToString & "',Qualification='" & Qualification.Text & "',Image='" & Session("imagepath") & "',Description='" & Description.Text & "',Gender='" & RadioButtonList1.SelectedItem.ToString & "',Address='" & Address.Text & "',Email='" & Email.Text & "',ContactNo='" & contactnumb.Text & "' where id='" & Session("DoctorEditId") & "'"
        ob.cmd.ExecuteNonQuery()
        ob.cmd.CommandText = "delete from DoctorTimings where DoctorId='" & Session("DoctorEditId") & "'"
        ob.cmd.ExecuteNonQuery()
        Response.Write(Session("DoctorEditId"))
        If CheckBox1.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox1.Text & "','" & TextBox1.Text & "','" & TextBox8.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox2.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox2.Text & "','" & TextBox2.Text & "','" & TextBox9.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox3.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox3.Text & "','" & TextBox3.Text & "','" & TextBox10.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox4.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox4.Text & "','" & TextBox4.Text & "','" & TextBox11.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox5.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox5.Text & "','" & TextBox5.Text & "','" & TextBox12.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox6.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox6.Text & "','" & TextBox6.Text & "','" & TextBox13.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        If CheckBox7.Checked = True Then
            ob.cmd.CommandText = "insert into DoctorTimings(DoctorId,Day,TimeIn,TimeOut) values('" & Session("DoctorEditId") & "','" & CheckBox7.Text & "','" & TextBox7.Text & "','" & TextBox14.Text & "')"
            ob.cmd.ExecuteNonQuery()
        End If
        'FirstName.Text.Empty.ToString()
        'Label1.Text = String.Empty
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

    
    'Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click

    '    Dim ob As New Class1
    '    ob.con.Open()
    '    ob.cmd.CommandText = "select * from Doctors where id='" & Session("DoctorEditId") & "'"
    '    ob.cmd.Connection = ob.con
    '    ob.adp.SelectCommand = ob.cmd
    '    ob.adp.Fill(ob.ds)
    '    If ob.ds.Tables(0).Rows.Count > 0 Then
    '        FirstName.Text = ob.ds.Tables(0).Rows(0)("FirstName")
    '        LastName.Text = ob.ds.Tables(0).Rows(0)("LastName").ToString
    '        Address.Text = ob.ds.Tables(0).Rows(0)("Address").ToString
    '        RadioButtonList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Gender").ToString
    '        contactnumb.Text = ob.ds.Tables(0).Rows(0)("ContactNo").ToString
    '        Email.Text = ob.ds.Tables(0).Rows(0)("Email").ToString
    '        DropDownList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Department").ToString
    '        Qualification.Text = ob.ds.Tables(0).Rows(0)("Qualification").ToString
    '        img.ImageUrl = ob.ds.Tables(0).Rows(0)("Image").ToString
    '        Description.Text = ob.ds.Tables(0).Rows(0)("Description").ToString
    '    End If
    'End Sub

    'Protected Sub FirstName_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles FirstName.TextChanged
    '    FirstNameCheck = 0
    '    For Each i In FirstName.Text.ToCharArray
    '        If (Char.IsDigit(i)) Then
    '            FirstNameCheck = 1
    '            CheckLabelFirstName.Visible = True
    '            CheckLabelFirstName.Text = "only alphabets allowed"
    '            CheckLabelFirstName.Attributes.Add("style", "color:red; font-weight:bold")
    '            Exit For
    '        End If
    '    Next
    '    If FirstNameCheck = 0 Then
    '        CheckLabelFirstName.Text = String.Empty
    '    End If
    'End Sub

    'Protected Sub LastName_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles LastName.TextChanged
    '    LastNameCheck = 0
    '    For Each i In LastName.Text.ToCharArray
    '        If (Char.IsDigit(i)) Then
    '            LastNameCheck = 1
    '            CheckLabelLastName.Visible = True
    '            CheckLabelLastName.Text = "only alphabets allowed"
    '            CheckLabelLastName.Attributes.Add("style", "color:red; font-weight:bold")
    '            Exit For
    '        End If
    '    Next
    '    If LastNameCheck = 0 Then
    '        CheckLabelLastName.Text = String.Empty
    '    End If
    'End Sub

    'Protected Sub Address_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles Address.TextChanged
    '    AddressCheck = 0
    '    Dim 
    '    For Each i In Address.Text.ToCharArray
    '        If (Char.IsLetterOrDigit(i)) Then
    '            AddressCheck = 1
    '            CheckLabelAddress.Visible = True
    '            CheckLabelAddress.Text = "only alphabets allowed"
    '            CheckLabelAddress.Attributes.Add("style", "color:red; font-weight:bold")
    '            Exit For
    '        End If
    '    Next
    '    If AddressCheck = 0 Then
    '        CheckLabelAddress.Text = String.Empty
    '    End If
    'End Sub
End Class