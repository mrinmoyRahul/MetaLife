<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="Queries.aspx.vb" Inherits="Metalife.Queries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    
    <div id="feedback" runat="server">
        
    </div>
    </form>
    <style>
	@import "compass/css3";

.box {
    position: relative;
    margin: 0 auto 80px;
    padding: 30px 0 40px;
    max-width: 840px;
    text-align: center;
    background: #fff;
}

.box:after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 4px;
    -webkit-border-radius: 50%;
            border-radius: 50%;
    -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
       -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
    z-index: -1;
}
</style>
</asp:Content>
