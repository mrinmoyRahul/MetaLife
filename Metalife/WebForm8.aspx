<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm8.aspx.vb" Inherits="Metalife.WebForm8" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <asp:scriptmanager ID="Scriptmanager1" runat="server">
        <Services>
            <asp:ServiceReference Path="AutoComplete.asmx" />
        </Services>
    </asp:scriptmanager>
        <asp:TextBox ID="TextBox1" runat="server" AutoCompleteType="None" AutoPostBack="True"></asp:TextBox>
        <ajaxToolkit:AutoCompleteExtender
            ID="AutoCompleteExtender1" runat="server" TargetControlID="TextBox1" 
            ServicePath="AutoComplete.asmx" ServiceMethod="GetCompletionList" 
            CompletionSetCount="12">
        </ajaxToolkit:AutoCompleteExtender>
    </div>
    </form>
</body>
</html>
