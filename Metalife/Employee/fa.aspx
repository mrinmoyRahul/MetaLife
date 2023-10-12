<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="fa.aspx.vb" Inherits="Metalife.fa1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Employee Panel</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/emp/css/reset.css" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/emp/css/main.css" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/emp/css/2col.css" title="2col" />
<link rel="alternate stylesheet" media="screen,projection" type="text/css" href="../css/emp/css/1col.css" title="1col" />
<!--[if lte IE 6]><link rel="stylesheet" media="screen,projection" type="text/css" href="css/main-ie6.css" /><![endif]-->
<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/emp/css/style.css" />
<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/emp/css/mystyle.css" />
<script type="text/javascript" src="../css/emp/js/jquery.js"></script>
<script type="text/javascript" src="../css/emp/js/switcher.js"></script>
<script type="text/javascript" src="../css/emp/js/toggle.js"></script>
<script type="text/javascript" src="../css/emp/js/ui.core.js"></script>
<script type="text/javascript" src="../css/emp/js/ui.tabs.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".tabs > ul").tabs();
    });
	</script>
</head>
<body>
<div id="main">
  <!-- Tray -->
  <div id="tray" class="box">
    <p class="f-left box">
      <!-- Switcher -->
      <span class="f-left" id="switcher"> <a href="javascript:void(0);" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="../css/emp/design/switcher-1col.gif" alt="1 Column" /></a> <a href="javascript:void(0)" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="../css/emp/design/switcher-2col.gif" alt="" /></a> </span> Employee Panel: <strong>mETALife</strong> </p>
    <p class="f-right">User: <strong><a href="#">Administrator</a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="signin.aspx" id="logout">Log out</a></strong></p>
  </div>
  <!--  /tray -->
  <hr class="noscreen" />
  <!-- /header -->
  <hr class="noscreen" />
  <!-- Columns -->
  <div id="cols" class="box">
    <!-- Aside (Left Column) -->
    <div id="aside" class="box">
      <div class="padding box">
        <!-- Logo (Max. width = 200px) -->
        <p id="logo"><a href="#"><img src="../css/emp/design/anc.png" alt="" /></a></p>
        <!-- Search -->
        
         <!-- /search-options -->
         
        <!-- Create a new project -->
       </div>

       <!---------------------------------------------------------->
      <!-- /padding -->
      <ul class="box">
        <li><a href="new.aspx">Home</a></li>
        <li><a href="pr.aspx">Patients Register</a></li>
        <li><a href="pd.aspx">Patients Discharge</a></li>
        <li id="submenu-active"><a href="fa.aspx">Fix Appointment</a></li>
        <li ><a href="cd.aspx">Check Doctors</a></li>
        <li><a href="va.aspx">View Appointment</a></li>
      </ul>
    </div>
    <!-- /aside -->
    <hr class="noscreen" />
    <!-- Content (Right Column) -->
    <div id="content" class="box">
    	<!-------------------------------------------------------------------------->
      <h1>Fix Appointment</h1>
      <div class="box-model">
        <asp:Label Text="Patient Name" runat="server" />
        <form runat="server">
        
        <asp:Label ID="Label2" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        
        <asp:scriptmanager ID="Scriptmanager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/AutoComplete.asmx" />
        </Services>
        </asp:scriptmanager>

         <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter patient's name" 
            AutoPostBack="True" Width="100%"></asp:TextBox>
         <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1"
            runat="server"
            ControlToValidate="TextBox1"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
        <ajaxToolkit:AutoCompleteExtender
            ID="AutoCompleteExtender1" runat="server" TargetControlID="TextBox1" 
            ServicePath="~/AutoComplete.asmx" ServiceMethod="GetCompletionList" 
            CompletionSetCount="10">
        </ajaxToolkit:AutoCompleteExtender>
        
      
       <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
          RepeatDirection="Horizontal" AutoPostBack="True" Width="100%">
          <asp:ListItem>indoor</asp:ListItem>
          <asp:ListItem Selected="True">outdoor</asp:ListItem>
       </asp:RadioButtonList>
        <asp:Label Text="Doctor name" runat="server" /><br />
        
      <asp:DropDownList ID="DropDownList1" runat="server" Width="100%">
      </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [FirstName], [LastName] FROM [Doctors]">
        </asp:SqlDataSource>
        <asp:Label Text="Date" runat="server" /><br />
        <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" AutoPostBack="True" Width="100%"></asp:TextBox>
        <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2"
            runat="server"
            ControlToValidate="TextBox2"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
        <br />
        <asp:Label Text="Time" runat="server" /><br />
         <asp:TextBox ID="TextBox3" runat="server" ReadOnly="True" Width="100%"></asp:TextBox><br /><br />
         <asp:Button ID="Button1" runat="server" Text="Make appointment" Width="100%" Font-Size="Medium" ForeColor="White" BackColor="#669999" />
      </form>
     </div>
     
        
    </div>
    <!--------------------------------------------------->
    <!-- /content -->
  </div>
  <!-- /cols -->
  <hr class="noscreen" />
  <!-- Footer -->
  <div id="footer" class="box">
    <p class="f-left">&copy; 2019 <a href="#">mETALife</a>, All Rights Reserved &reg;</p>
    <p class="f-right">Care for the perfect life</p>
  </div>
  <!-- /footer -->
</div>
<!-- /main -->
</body>

</html>
<style type="text/css">
.messagecolor
{
    color:Red;
    font-weight:bold;
}  

.box-model
{
  width: 300px;
  border: 2px solid;
  padding: 50px;
  margin: 20px;
  margin-top:20%;
  top: 50%;
  left: 50%;
  margin-right: -50%;
  transform: translate(-50%, -50%);
  background-color:#f9f9f9;
  position:relative;
}  
    
</style>
