<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="va.aspx.vb" Inherits="Metalife.va" %>

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
        <li><a href="fa.aspx">Fix Appointment</a></li>
        <li ><a href="cd.aspx">Check Doctors</a></li>
        <li id="submenu-active"><a href="va.aspx">View Appointment</a></li>
      </ul>
    </div>
    <!-- /aside -->
    <hr class="noscreen" />
    <!-- Content (Right Column) -->
    <div id="content" class="box">
    	<!-------------------------------------------------------------------------->
      <h1>View Appointment</h1>
      

     <form id="Form1" runat="server">
 <h2>List of Appointments</h2>
    <hr />
<asp:Table ID="Table1" border="1" Width="100%" runat="server">
</asp:Table>
 <h2>Appointments History</h2>
    <hr />
<asp:Table ID="Table2"  border="1" Width="100%" runat="server">
</asp:Table>
</form>

      
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
