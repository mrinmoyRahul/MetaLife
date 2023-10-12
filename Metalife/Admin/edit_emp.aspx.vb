Imports System.IO
Public Class edit_emp
    Inherits System.Web.UI.Page
    Dim img As New Image
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        img.Width = 100
        img.Height = 150
        img.BorderWidth = 1
        img.Attributes.Add("style", "margin-left:50px; margin-top:50px;")
        img.AlternateText = "employee image"
        Master.FindControl("sidebar").Controls.Add(img)
        If (Not IsPostBack) Then
            Dim ob As New Class1
            ob.con.Open()
            ob.cmd.CommandText = "select * from Employees where id='" & Session("EmployeeEditId") & "'"
            ob.cmd.Connection = ob.con
            ob.adp.SelectCommand = ob.cmd
            ob.adp.Fill(ob.ds)
            If ob.ds.Tables(0).Rows.Count > 0 Then
                FirstName.Text = ob.ds.Tables(0).Rows(0)("FirstName")
                LastName.Text = ob.ds.Tables(0).Rows(0)("LastName").ToString
                RadioButtonList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Gender").ToString
                'RadioButtonList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Gender").ToString
                'contactnumb.Text = ob.ds.Tables(0).Rows(0)("ContactNo").ToString
                'Email.Text = ob.ds.Tables(0).Rows(0)("Email").ToString
                DropDownList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Department").ToString
                Password.Text = ob.ds.Tables(0).Rows(0)("Password").ToString
                img.ImageUrl = ob.ds.Tables(0).Rows(0)("Image").ToString
                Session("imagepath") = ob.ds.Tables(0).Rows(0)("Image").ToString
                'Description.Text = ob.ds.Tables(0).Rows(0)("Description").ToString
            End If
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button3.Click
        'Dim ob As New Class1
        'ob.con.Open()
        'ob.cmd.CommandText = "select * from Employees where id='" & Session("EmployeeEditId") & "'"
        'ob.cmd.Connection = ob.con
        'ob.adp.SelectCommand = ob.cmd
        'ob.adp.Fill(ob.ds)
        'If ob.ds.Tables(0).Rows.Count > 0 Then
        '    FirstName.Text = ob.ds.Tables(0).Rows(0)("FirstName")
        '    LastName.Text = ob.ds.Tables(0).Rows(0)("LastName").ToString
        '    RadioButtonList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Gender").ToString
        '    'RadioButtonList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Gender").ToString
        '    'contactnumb.Text = ob.ds.Tables(0).Rows(0)("ContactNo").ToString
        '    'Email.Text = ob.ds.Tables(0).Rows(0)("Email").ToString
        '    DropDownList1.SelectedValue = ob.ds.Tables(0).Rows(0)("Department").ToString
        '    Password.Text = ob.ds.Tables(0).Rows(0)("Password").ToString
        '    img.ImageUrl = ob.ds.Tables(0).Rows(0)("Image").ToString
        '    Session("imagepath") = ob.ds.Tables(0).Rows(0)("Image").ToString
        '    'Description.Text = ob.ds.Tables(0).Rows(0)("Description").ToString
        'End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
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

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1

        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "update Employees set FirstName='" & FirstName.Text & "',LastName='" & LastName.Text & "',Gender='" & RadioButtonList1.SelectedItem.ToString & "',Department='" & DropDownList1.SelectedItem.ToString & "',Password='" & Password.Text & "',Image='" & Session("imagepath") & "' where id='" & Session("EmployeeEditId") & "'"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button2.Click
        Dim charset As String = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"
        Dim character As String = String.Empty
        Dim otp As String = String.Empty
        For i As Integer = 0 To 8
            Do
                Dim index As Integer = New Random().Next(0, charset.Length)
                character = charset.ToCharArray()(index).ToString()
            Loop While otp.IndexOf(character) <> -1
            otp = otp + character
        Next
        Password.Text = otp
    End Sub
End Class