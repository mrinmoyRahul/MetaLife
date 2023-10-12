<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee/emp_log.Master" CodeBehind="view_app.aspx.vb" Inherits="Metalife.view_app" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
<form runat="server">
 List of Appointments<br />
    <hr />
<asp:Table ID="Table1" border="1" Width="100%" runat="server">
</asp:Table>
 Appointments History<br />
    <hr />
<asp:Table ID="Table2"  border="1" Width="100%" runat="server">
</asp:Table>
</form>
</asp:Content>
