<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="new.aspx.vb" Inherits="Metalife._new" %>
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
<link rel="stylesheet" media="screen,projection" type="text/css" href="../css/search.css" />
<script type="text/javascript" src="../css/emp/js/jquery.js"></script>
<script type="text/javascript" src="../css/emp/js/switcher.js"></script>
<script type="text/javascript" src="../css/emp/js/toggle.js"></script>
<script type="text/javascript" src="../css/emp/js/ui.core.js"></script>
<script type="text/javascript" src="../css/emp/js/ui.tabs.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $(".tabs > ul").tabs();
    });
//    function button_onclick() {

//    }

</script>
</head>
<body>
<div id="main">
  <!-- Tray -->
  <div id="tray" class="box">
    <p class="f-left box">
      <!-- Switcher -->
      <span class="f-left" id="switcher"> <a href="javascript:void(0);" rel="1col" class="styleswitch ico-col1" title="Display one column"><img src="../css/emp/design/switcher-1col.gif" alt="1 Column" /></a> <a href="javascript:void(0)" rel="2col" class="styleswitch ico-col2" title="Display two columns"><img src="../css/emp/design/switcher-2col.gif" alt="" /></a> </span> Employee Panel: <strong>mETALife</strong> </p>
    <p class="f-right">User: <strong><a href="#">Administrator</a></strong> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong><a href="#" id="logout">Log out</a></strong></p>
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
        <li id="submenu-active"><a href="new.aspx">Home</a></li>
        <li><a href="pr.aspx">Patients Register</a></li>
        <li><a href="pd.aspx">Patients Discharge</a></li>
        <li><a href="fa.aspx">Fix Appointment</a></li><li ><a href="#">Check Doctors</a></li>
        <li><a href="va.aspx">View Appointment</a></li>
      </ul>
    </div>
    <!-- /aside -->
    <hr class="noscreen" />
    <!-- Content (Right Column) -->
    <div id="content" class="box">
    	<!-------------------------------------------------------------------------->
      <h1>Home Dashboard</h1>
      Search By Name:
        <%--<div class="s01">
      <form runat="server">
        
        <div class="inner-form">
          <div class="input-field first-wrap">
           <input id="search" type="text" placeholder="Enter patient name" />
           <asp:textbox ID="Textbox1" runat="server" placeholder="Enter patient's name"></asp:textbox>
          </div>
          
          <div class="input-field third-wrap">
           <button class="btn-search" type="button" id="SearchButton" 
                  onclick="return button_onclick()">Search</button>
                  <asp:Button ID="Button1" runat="server" Text="Search" class="btn-search" />
          </div>
        </div>
      </form>
    </div>--%>


    <div class="s01">
      <form runat="server">
      <asp:scriptmanager ID="Scriptmanager1" runat="server">
        <Services>
            <asp:ServiceReference Path="~/AutoComplete.asmx" />
        </Services>
    </asp:scriptmanager>
     <div class="inner-form">
        <div class="input-field first-wrap">
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter patient's name"></asp:TextBox>
        </div>
        <ajaxToolkit:AutoCompleteExtender
            ID="AutoCompleteExtender1" runat="server" TargetControlID="TextBox1" 
            ServicePath="~/AutoComplete.asmx" ServiceMethod="GetCompletionList" 
            CompletionSetCount="10">
        </ajaxToolkit:AutoCompleteExtender>
        <div class="input-field third-wrap">
      <asp:Button ID="Button1" runat="server" Text="Search" class="btn-search"/>
      </div>
      </div>
      <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
          RepeatDirection="Horizontal" AutoPostBack="True">
          <asp:ListItem>indoor</asp:ListItem>
          <asp:ListItem Selected="True">outdoor</asp:ListItem>
      </asp:RadioButtonList>
       
        <div id="info" visible="false" runat="server">
        
        <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Text="Contact Number"></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <%--<div visible="false" id="WardInfo" runat="server">--%>
            <asp:Label ID="Label7" runat="server" Text="Ward Number"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            <asp:Label ID="Label8" runat="server" Text="Bed Number"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
       <%-- </div>--%>
        </div>
        <div id="message" visible="false" runat="server">
            <asp:Label Text="No data Found!" runat="server" />
        </div>
         </form>
     </div>
        <br />

      
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

