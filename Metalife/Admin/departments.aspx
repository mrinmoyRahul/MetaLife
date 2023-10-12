<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="departments.aspx.vb" Inherits="Metalife.departments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Departments List</h3>
    <form id="Form1" runat="server">
    <asp:Table ID="Table1" Border="1" Width="100%" runat="server">
    </asp:Table>
    <h3>Add Department</h3>
    <asp:TextBox ID="TextBox1" runat="server" Palceholder="New Department"></asp:TextBox>
    <h3>Description</h3>
    <asp:TextBox ID="TextBox2" runat="server" Palceholder="New Department" 
        TextMode="MultiLine"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Add" />
    </form>
</asp:Content>

