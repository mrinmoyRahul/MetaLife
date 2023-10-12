<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee/emp_log.Master" CodeBehind="pat_discharge.aspx.vb" Inherits="Metalife.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
    <form id="Form1" runat="server">
    <!--<fieldset>
    <legend>List of Patient</legend>-->
    List of Patients<br />
    <hr />
    <asp:Table ID="Table1" border=1 width="100%" runat="server">
    </asp:Table>
    <br />
    <!--</fieldset>
    <fieldset>
    <legend>List of discharged Patient</legend>-->
     List of Discharged Patients<br />
    <hr />
    <asp:Table ID="Table2" border=1 width="100%" runat="server">
    </asp:Table>
    
   <!--</fieldset>-->
</form>
</asp:Content>
