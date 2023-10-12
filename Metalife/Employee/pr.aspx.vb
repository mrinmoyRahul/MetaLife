Public Class pr
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub RadioButtonList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles RadioButtonList2.SelectedIndexChanged
        If RadioButtonList2.SelectedItem.ToString = "indoor" Then
            Label1.Visible = True
            Label2.Visible = True
            DropDownList1.Visible = True
            DropDownList2.Visible = True
            'DropDownList2.SelectedValue = "select"
        End If
        If RadioButtonList2.SelectedItem.ToString = "outdoor" Then
            Label1.Visible = False
            Label2.Visible = False
            DropDownList1.Visible = False
            DropDownList2.Visible = False
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.Connection = ob.con
        If RadioButtonList2.SelectedItem.ToString = "outdoor" Then
            ob.cmd.CommandText = "insert into OutdoorPatients(FirstName,LastName,Gender,Address,Email,ContactNumber) values('" & t1.Text & "','" & t2.Text & "','" & RadioButtonList1.SelectedItem.ToString & "','" & t5.Text & "','" & t3.Text & "','" & t4.Text & "')"
        Else
            ob.cmd.CommandText = "insert into IndoorPatients(FirstName,LastName,Gender,Address,Email,ContactNumber,WardName,BedNumber) values('" & t1.Text & "','" & t2.Text & "','" & RadioButtonList1.SelectedItem.ToString & "','" & t5.Text & "','" & t3.Text & "','" & t4.Text & "','" & DropDownList2.SelectedItem.ToString & "','" & DropDownList1.SelectedValue & "')"
        End If
        ob.cmd.ExecuteNonQuery()
        ob.con.Close()
        Response.Write("data inserted")

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        DropDownList1.Items.Clear()
        Dim c As Integer = 0
        Dim ob As New Class1
        ob.con.Open()
        ob.cmd.CommandText = "select TotalBeds from wards where WardName='" & DropDownList2.SelectedItem.ToString() & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds)

        ob.cmd.CommandText = "select BedNumber from IndoorPatients where WardName='" & DropDownList2.SelectedItem.ToString() & "'"
        ob.cmd.Connection = ob.con
        ob.adp.SelectCommand = ob.cmd
        ob.adp.Fill(ob.ds1)

        

        For i As Integer = 1 To ob.ds.Tables(0).Rows(0)("TotalBeds")
            c = 0
            For Each dRow As DataRow In ob.ds1.Tables(0).Rows
                'Response.Write(dRow("FirstName") + " " + dRow("LastName"))
                'DropDownList1.Items.Add(dRow("FirstName") + " " + dRow("LastName"))
                If dRow("BedNumber") = i Then
                    c = 1
                    Exit For
                End If
            Next
            If c = 0 Then
                DropDownList1.Items.Add(i)
            End If
        Next
    End Sub
End Class