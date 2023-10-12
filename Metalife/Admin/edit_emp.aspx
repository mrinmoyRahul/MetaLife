<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="edit_emp.aspx.vb" Inherits="Metalife.edit_emp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="../css/query.css">
<form id="Form1" runat="server">
<%--<asp:Button ID="Button3" runat="server" class="button" Text="click to see current details" /><br />--%>
First Name:
<asp:TextBox ID="FirstName" runat="server"  placeholder="Enter the employee First name"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="incorrect first name" CssClass="messagecolor" ValidationExpression="^[A-Z][a-zA-Z]+$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator6"
            runat="server"
            ControlToValidate="FirstName"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />

Last Name:
<asp:TextBox ID="LastName" runat="server"  placeholder="Enter the employee Last name"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="LastName" Display="Dynamic" ErrorMessage="incorrect last name" CssClass="messagecolor" ValidationExpression="^[A-Z][a-zA-Z]+$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1"
            runat="server"
            ControlToValidate="LastName"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
Gender<br />
<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection=Horizontal>
        <asp:ListItem>male</asp:ListItem>
        <asp:ListItem>female</asp:ListItem>
    </asp:RadioButtonList>
    <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3"
            runat="server"
            ControlToValidate="RadioButtonList1"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
Department<br />

<asp:DropDownList ID="DropDownList1" runat="server" class="col-75">
    <asp:ListItem>Technical</asp:ListItem>
    <asp:ListItem>Non-Technical</asp:ListItem>
</asp:DropDownList><br /><br /><br />
Image:<br />
 
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button4" runat="server" style="height: 35px" Text="Upload" />
        <br />
        
       
<br />
<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
<br />
<br />
Set password:<br />
<asp:TextBox ID="Password" runat="server" Width=75%></asp:TextBox>

<asp:Button ID="Button2" runat="server" Text="Generate" BackColor="BurlyWood"/>
<br />
<asp:Button ID="Button1" runat="server" Text="submit" class="button" />

</form>

<style>
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
}
.button{
  background-color: #1e90ff; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  width:100%;
  margin-top:8px;
}
.messagecolor
{
    color:Red;
    font-weight:bold;
}

</style>
</asp:Content>
