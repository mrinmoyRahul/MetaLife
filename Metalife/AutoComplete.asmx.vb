Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports Microsoft.VisualBasic
Imports System.Data.Sql
Imports System.Data.SqlClient
' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://tempuri.org/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
<System.Web.Script.Services.ScriptService()> _
Public Class AutoComplete
    Inherits System.Web.Services.WebService


    <WebMethod(EnableSession:=True)> _
    Public Function GetCompletionList(ByVal prefixText As String, ByVal count As Integer)
        'Dim c1 As Char
        'Dim c2 As Char
        'Dim c3 As Char
        If (Session("PatientType") = "") Then
            Session("PatientType") = "outdoor"
        End If

        If (count = 0) Then
            count = 10
        End If
        'Dim ob As New Class1
        'ob.con.Open()
        'ob.cmd.CommandText = "select * from OutdoorPatient"
        'ob.cmd.Connection = ob.con
        'ob.adp.SelectCommand = ob.cmd
        'ob.adp.Fill(ob.ds)
        Dim con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\DELL\Desktop\MetalifeVer1.4\MetalifeVer1.4\MetalifeVer1.4\Metalife\App_Data\metalifedata.mdf;Integrated Security=True;User Instance=True")
        Dim cmd As New SqlCommand
        Dim adp As New SqlDataAdapter
        Dim ds As New DataSet

        If (Session("PatientType").ToString = "outdoor") Then


            con.Open()
            cmd.CommandText = "select * from OutdoorPatients where FirstName like '" & prefixText & "%'"
            cmd.Connection = con
            adp.SelectCommand = cmd
            adp.Fill(ds)
            con.Close()

            Dim items As New List(Of String)

            For i As Integer = 0 To ds.Tables(0).Rows.Count - 1

                items.Add(ds.Tables(0).Rows(i)("FirstName").ToString + " " + ds.Tables(0).Rows(i)("LastName").ToString)

            Next i
            Return items.ToArray()
        End If

        If (Session("PatientType").ToString = "indoor") Then
            con.Open()
            cmd.CommandText = "select * from IndoorPatients where FirstName like '" & prefixText & "%'"
            cmd.Connection = con
            adp.SelectCommand = cmd
            adp.Fill(ds)
            con.Close()

            Dim items As New List(Of String)

            For i As Integer = 0 To ds.Tables(0).Rows.Count - 1

                items.Add(ds.Tables(0).Rows(i)("FirstName").ToString + " " + ds.Tables(0).Rows(i)("LastName").ToString)

            Next i
            Return items.ToArray()
        End If
    End Function
End Class