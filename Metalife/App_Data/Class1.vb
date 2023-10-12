Imports Microsoft.VisualBasic
Imports System.Data.Sql
Imports System.Data.SqlClient
Public Class Class1
    Public con As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\DELL\Desktop\MetalifeVer1.4\MetalifeVer1.4\MetalifeVer1.4\Metalife\App_Data\metalifedata.mdf;Integrated Security=True;User Instance=True")
    Public cmd As New SqlCommand
    Public adp As New SqlDataAdapter
    Public ds As New DataSet
    Public ds1 As New DataSet
    Public MyDataReader As SqlDataReader
    Public row As DataRow
End Class
