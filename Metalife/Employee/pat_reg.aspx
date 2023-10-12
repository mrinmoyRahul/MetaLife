<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee/emp_log.Master" CodeBehind="pat_reg.aspx.vb" Inherits="Metalife.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
    <form id="form1" runat="server">
    <div class="boxed">
    <center>
    <div class="block">
    <label>Name</label>
    <asp:TextBox ID="TextBox1" runat="server" type="text"></asp:TextBox>
</div>
<div class="block">
    <label>Gender</label>
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection=Horizontal>
        <asp:ListItem>male</asp:ListItem>
        <asp:ListItem>female</asp:ListItem>
    </asp:RadioButtonList>
</div>
<div class="block">
    <label>Address</label>
    <asp:TextBox ID="TextBox2" runat="server" type="text"></asp:TextBox>
</div>
<div class="block">
    <label>E-mail</label>
    <asp:TextBox ID="TextBox3" runat="server" type="text"></asp:TextBox>
</div>

<div class="block">
    <label>Type</label>
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection=Horizontal>
        <asp:ListItem>male</asp:ListItem>
        <asp:ListItem>female</asp:ListItem>
    </asp:RadioButtonList>
</div>
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    </center>
    </div>

    
    </form>



    





    <style>
        .boxed
        {
            background-color: lightgrey;
            width: auto;
            border: 10px solid dogerblue;
            padding: 50px;
            margin: 20px;
        }
        label {
  display: inline-block;
  width: 140px;
  text-align: right;
  font-size:small;
}​
    </style>
</asp:Content>
