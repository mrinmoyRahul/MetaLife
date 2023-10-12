<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="pr.aspx.vb" Inherits="Metalife.pr" %>

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
      <span class="f-left" id="switcher"> <a href="javascript:void(0);" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="../css/emp/design/switcher-1col.gif" alt="1 Column" /></a> <a href="javascript:void(0)" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="../css/emp/design/switcher-2col.gif" alt="" /></a> </span>  Employee Panel: <strong>mETALife</strong> </p>
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
        <li id="submenu-active"><a href="pr.aspx">Patients Register</a></li>
        <li><a href="pd.aspx">Patients Discharge</a></li>
        <li><a href="fa.aspx">Fix Appointment</a></li>
        <li ><a href="cd.aspx">Check Doctors</a></li>
        <li><a href="va.aspx">View Appointment</a></li>
      </ul>
    </div>
    <!-- /aside -->
    <hr class="noscreen" />
    <!-- Content (Right Column) -->
    <!-------------------------------------------------------------------------->
    <div id="content" class="box">
    	
      <h1>Patients register</h1>
      <div class="wrap">
            <h2>Patient registeration</h2>
            <form runat="server">
            <asp:TextBox ID="t1" runat="server" placeholder="First Name"></asp:TextBox>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator6"
            runat="server"
            ControlToValidate="t1"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:TextBox ID="t2" runat="server" placeholder="Last Name"></asp:TextBox>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator1"
            runat="server"
            ControlToValidate="t2"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:TextBox ID="t3" runat="server" placeholder="E-mail"></asp:TextBox>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator2"
            runat="server"
            ControlToValidate="t3"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:TextBox ID="t4" runat="server" placeholder="Mobile Number"></asp:TextBox>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator3"
            runat="server"
            ControlToValidate="t4"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:TextBox ID="t5" runat="server" placeholder="Address"></asp:TextBox>
                <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator4"
            runat="server"
            ControlToValidate="t5"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" type="text" 
                RepeatDirection="Horizontal" Width="100%" CssClass="wrap3">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator5"
            runat="server"
            ControlToValidate="RadioButtonList1"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" type="text" 
                RepeatDirection="Horizontal" Width="100%" CssClass="wrap3" 
                AutoPostBack="True">
                <asp:ListItem>indoor</asp:ListItem>
                <asp:ListItem>outdoor</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator7"
            runat="server"
            ControlToValidate="RadioButtonList2"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:Label ID="Label1" runat="server" Text="ward name" Visible="False"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="WardName" 
                DataValueField="WardName" Visible="False" AppendDataBoundItems="True" 
                AutoPostBack="True">
                <asp:ListItem>select</asp:ListItem>
                
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [WardName] FROM [wards]"></asp:SqlDataSource>
            <br />
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator9"
            runat="server"
            ControlToValidate="DropDownList2"
            InitialValue="select"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />
            <asp:Label ID="Label2" runat="server" Text="Bed no." Visible="False"></asp:Label>
            <br />
            <%--<asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="Depart_name" 
                DataValueField="Depart_name" type="text" CssClass="wrap2" Width="100%">
            </asp:DropDownList>--%>
            <asp:DropDownList ID="DropDownList1" runat="server" Visible="False">
                <asp:ListItem>select</asp:ListItem>
                
            </asp:DropDownList>
            <asp:RequiredFieldValidator 
            ID="RequiredFieldValidator8"
            runat="server"
            ControlToValidate="DropDownList1"
            InitialValue="select"
            ErrorMessage="This field is required!"
            class="messagecolor"
            />

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Depart_name] FROM [Departments]"></asp:SqlDataSource>


            <asp:Button ID="Button1" runat="server" type="submit" Text="Register" />
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

<style>
.wrap
{
    max-width:450px;
    border-radius:20px;
    margin:auto;
    background:rgba(0,0,0,0.8);
    box-sizing:border-box;
    padding:40px;
    color:#fff;
    margin-top:70px;
    
       
}
h2
{
    text-align:center;
    
}
input[type=text]
{
    width:100%;
    box-sizing:border-box;
    padding:12px 5px;
    background:rgba(0,0,0,0.10);
    outline:none;
    border:none;
    border-bottom:1px dotted #fff;
    color:#fff;
    border-radius:5px;
    margin:5px;
    font-weight:bold;
}
input[type=submit]
{
    width:100%;
    box-sizing:border-box;
    padding:10px 0;
    margin-top:30px;
    outline:none;
    border:none;
    background:#60adde;
    opacity:0.7;
    color:#fff;
    border-radius:20px;
    font-size:20px;
}   
input[type=submit]:hover
{
    background:003366;
    opacity:0.7;
}
.wrap2
{
    width:100%;
    box-sizing:border-box;
    padding:12px 5px;
    background:rgba(0,0,0,0.10);
    outline:none;
    border:none;
    border-bottom:1px dotted #fff;
    color:#fff;
    border-radius:5px;
    margin:5px;
    font-weight:bold;
}
.wrap3
{
    width:100%;
    box-sizing:border-box;
    padding:12px 5px;
    background:rgba(0,0,0,0.10);
    outline:none;
    border:none;
    border-bottom:1px dotted #fff;
    color:#fff;
    border-radius:5px;
    margin:5px;
    font-weight:bold;
}    
.messagecolor
{
    color:Red;
    font-weight:bold;
}    
    
</style>
