Imports System.IO
Public Class add_emp
    Inherits System.Web.UI.Page
    Dim img As New Image
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        img.Width = 100
        img.Height = 150
        img.BorderWidth = 1
        img.Attributes.Add("style", "margin-left:50px; margin-top:50px;")
        img.AlternateText = "employee image"
        Master.FindControl("sidebar").Controls.Add(img)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "insert into Employees(FirstName,LastName,Gender,Department,Password,Image) values('" & FirstName.Text & "','" & LastName.Text & "','" & RadioButtonList1.SelectedItem.ToString & "','" & DropDownList1.SelectedItem.ToString & "','" & TextBox1.Text & "','" & Session("imagepath") & "')"
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
        TextBox1.Text = otp
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
End Class