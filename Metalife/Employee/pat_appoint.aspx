<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee/emp_log.Master" CodeBehind="pat_appoint.aspx.vb" Inherits="Metalife.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="c1" runat="server">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../css/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
<link href="../css/style.css" rel='stylesheet' type='text/css' />
<!--fonts--> 
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <!--background-->
<h1> Medical Appointment Form </h1>
    <div class="bg-agile">
	<div class="book-appointment">
	<h2>Make an appointment</h2>
			<form id="form1" runat="server">
			<div class="left-agileits-w3layouts same">
			<div class="gaps">
				<p>Patient Name</p>
					<asp:dropdownlist ID="Dropdownlist1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" 
                    DataValueField="Name"></asp:dropdownlist>
			    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Name] FROM [Patients]"></asp:SqlDataSource>
			    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [FirstName], [LastName] FROM [Doctors]">
                </asp:SqlDataSource>
			</div>	
				<div class="gaps">	
				<p>Doctor Name</p>
					<asp:dropdownlist ID="Dropdownlist2" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="FirstName" 
                        DataValueField="FirstName"></asp:dropdownlist>
				    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [FirstName], [LastName] FROM [Doctors]">
                    </asp:SqlDataSource>
				</div>
				<!--<div class="gaps">
				<p>Email</p>
						<asp:TextBox ID="Email" runat="server"></asp:TextBox>
				</div>	-->
				<!--<div class="gaps">
				<p>Symptoms</p>
						<asp:TextBox ID="Symptoms" runat="server" TextMode="MultiLine" 
                        Height="52px" Width="223px"></asp:TextBox>
				</div>-->
			</div>
			<div class="right-agileinfo same">
			<div class="gaps">
				<p>Select Date</p>
						<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
			</div>
			<!--<div class="gaps">
				<p>Department</p>	
					<select class="form-control">
						<option></option>
						<option>Cardiology</option>
						<option>Ophthalmology</option>
						<option>Neurology</option>
						<option>Psychology</option>
						<option>Dermatology</option>
					</select>
			</div>-->
			<!--<div class="gaps">
				<p>Gender</p>	
					<select class="form-control">
						<option></option>
						<option>Male</option>
						<option>Female</option>
					</select>
			</div>-->
			<div class="gaps">
				<p>Time</p>		
					<asp:TextBox ID="datepicker1" runat="server"></asp:TextBox>	
			</div>
			</div>
			<div class="clear"></div>
						  <asp:Button ID="Button1" runat="server" Text="make an appointment" />
			</form>
		</div>
   </div>
  
		<!--//copyright-->
		<script type="text/javascript" src="../js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="../js/wickedpicker.js"></script>
			<script type="text/javascript">
			    $('.timepicker').wickedpicker({ twentyFour: false });
			</script>
		<!-- Calendar -->
				<link rel="stylesheet" href="../css/jquery-ui.css" />
				<script src="../js/jquery-ui.js"></script>
				  <script>
				      $(function () {
				          $("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
				      });
				      function datepicker1_onclick() {

				      }

                  </script>
			<!-- //Calendar -->

<!----------------------------->
<div>
</asp:Content>
