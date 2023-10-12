Public Class contact
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        ob.cmd.CommandText = "insert into Query(Fname,Lname,Email,Department,Subject) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & DropDownList1.SelectedItem.ToString & "','" & TextBox4.Text & "')"
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Write("data inserted")
    End Sub
End Class