<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin/admin.Master" CodeBehind="edit_doctor.aspx.vb" Inherits="Metalife.edit_doctor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="../css/query.css">
<form id="Form1" runat="server">
<%--<asp:Button ID="Button3" runat="server" Text="Show existing data" class="button" /><br />--%>
First Name:
<asp:TextBox ID="FirstName" runat="server"  
    placeholder="Enter the doctor First name" 
    CausesValidation="True" AutoCompleteType="Enabled"></asp:TextBox>
<%--<asp:Label ID="CheckLabelFirstName" runat="server"></asp:Label>--%>
<asp:RegularExpressionValidator ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="incorrect first name" CssClass="messagecolor" ValidationExpression="^[A-Z][a-zA-Z]+$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator6"
            runat="server"
            ControlToValidate="FirstName"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
<%--<asp:RegularExpressionValidator ControlToValidate="FirstName" Display="Dynamic" ErrorMessage="mkust be of 4 letters" ValidationExpression="^[A-Z][a-zA-Z]{4,4}$" runat="server"/><br />--%>
Last Name:
<asp:TextBox ID="LastName" runat="server"  
    placeholder="Enter the doctor Last name" 
    CausesValidation="True"></asp:TextBox>
<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="LastName" Display="Dynamic" ErrorMessage="incorrect last name" CssClass="messagecolor" ValidationExpression="^[A-Z][a-zA-Z]+$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1"
            runat="server"
            ControlToValidate="LastName"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
Address:
<asp:TextBox ID="Address" runat="server"  placeholder="Enter the address" 
    CausesValidation="True"></asp:TextBox>
<br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2"
            runat="server"
            ControlToValidate="Address"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
Gender<br />
<asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
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
Contact Number:
<asp:TextBox ID="contactnumb" runat="server"  
    placeholder="Enter the Mobile Number" CausesValidation="True"></asp:TextBox>
<asp:Label ID="CheckLabelContactNumber" runat="server"></asp:Label><br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator2" ControlToValidate="contactnumb" Display="Dynamic" ErrorMessage="incorrect number" CssClass="messagecolor" ValidationExpression="^[0-9]{10,10}$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator4"
            runat="server"
            ControlToValidate="contactnumb"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
E-mail:<br />
<asp:TextBox ID="Email" runat="server" CausesValidation="True"></asp:TextBox><br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="Email" Display="Dynamic" ErrorMessage="incorrect email" CssClass="messagecolor" ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]+$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5"
            runat="server"
            ControlToValidate="Email"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
Department<br />

<asp:DropDownList ID="DropDownList1" runat="server" class="col-75" 
    DataSourceID="SqlDataSource1" DataTextField="Depart_name" 
    DataValueField="Depart_name">
        </asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [Depart_name] FROM [Departments]"></asp:SqlDataSource>
<br /><br /><br />
Qualification:
<asp:TextBox ID="Qualification" runat="server"  
    placeholder="Enter the doctor Qualification" CausesValidation="True"></asp:TextBox><br />
<asp:RegularExpressionValidator ID="RegularExpressionValidator4" ControlToValidate="Qualification" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^[^0-9]+$" runat="server"/><br />
<asp:RequiredFieldValidator 
            ID="RequiredFieldValidator7"
            runat="server"
            ControlToValidate="Qualification"
            ErrorMessage="This field is required!"
            class="messagecolor"
            /><br />
 Image:<br />
  <div>
    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Button ID="Button2" runat="server" style="height: 35px" Text="Upload" />
        <br />
        
       
    
  </div>

<br />
<asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label><br />
Days:
<br />
<asp:CheckBox ID="CheckBox1" runat="server" Text="monday" AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox1" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox8" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />
<asp:CheckBox ID="CheckBox2" runat="server" Text="tuesday" 
    AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox2" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox9" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" ControlToValidate="TextBox9" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />
<asp:CheckBox ID="CheckBox3" runat="server" Text="wednesday" 
    AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox3" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox10" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" ControlToValidate="TextBox10" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />
<asp:CheckBox ID="CheckBox4" runat="server" Text="thursday" 
    AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox4" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator12" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox11" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator13" ControlToValidate="TextBox11" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />
<asp:CheckBox ID="CheckBox5" runat="server" Text="friday" AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox5" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator14" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox12" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator15" ControlToValidate="TextBox12" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />
<asp:CheckBox ID="CheckBox6" runat="server" Text="saturday" 
    AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox6" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator16" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox13" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator17" ControlToValidate="TextBox13" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />
<asp:CheckBox ID="CheckBox7" runat="server" Text="sunday" AutoPostBack="True" />
<asp:TextBox placeholder="timein" ID="TextBox7" class="type2"
    runat="server" Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator18" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<asp:TextBox placeholder="time-out" ID="TextBox14" runat="server" class="type2" 
    Visible="False"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator19" ControlToValidate="TextBox14" Display="Dynamic" ErrorMessage="incorrect entry" CssClass="messagecolor" ValidationExpression="^([01]?[0-9]|2[0-3]):[0-5][0-9]$" runat="server"/>
<br />

<br />Description: 
<br />
<asp:TextBox ID="Description" runat="server" TextMode="MultiLine"></asp:TextBox>
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
