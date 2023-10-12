<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User/foot.Master" CodeBehind="appointment.aspx.vb" Inherits="Metalife.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<!----Header----->
    <link rel="stylesheet" href="../css/head.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div>
        <div class="header">
  		    <a href="index.aspx" class="logo">mETALife</a>
  		    <div class="header-right">
    		    <a href="index.aspx">Home</a>
    		    <a href="doctors.aspx">Our Doctors</a>
    		    <a href="specialities.aspx">Specialities</a>
                <a href="query.aspx">Query</a>
                <a href="about.aspx">About Us</a>
  		    </div>
	    </div>
</div>
<!----------------------------->
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
			<form action="#" method="post">
			<div class="left-agileits-w3layouts same">
			<div class="gaps">
				<p>Patient Name</p>
					<input type="text" name="Patient Name" placeholder="" required=""/>
			</div>	
				<div class="gaps">	
				<p>Phone Number</p>
					<input type="text" name="Number" placeholder="" required=""/>
				</div>
				<div class="gaps">
				<p>Email</p>
						<input type="email" name="email" placeholder="" required="" />
				</div>	
				<div class="gaps">
				<p>Symptoms</p>
						<textarea name="About Symptoms" placeholder="" required="" ></textarea>
				</div>
			</div>
			<div class="right-agileinfo same">
			<div class="gaps">
				<p>Select Date</p>		
						<input  id="datepicker1" name="Text" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">
			</div>
			<div class="gaps">
				<p>Department</p>	
					<select class="form-control">
						<option></option>
						<option>Cardiology</option>
						<option>Ophthalmology</option>
						<option>Neurology</option>
						<option>Psychology</option>
						<option>Dermatology</option>
					</select>
			</div>
			<div class="gaps">
				<p>Gender</p>	
					<select class="form-control">
						<option></option>
						<option>Male</option>
						<option>Female</option>
					</select>
			</div>
			<div class="gaps">
				<p>Time</p>		
					<input type="text" id="timepicker" name="Time" class="timepicker form-control" value="" onclick="return timepicker_onclick()">	
			</div>
			</div>
			<div class="clear"></div>
						  <input type="submit" value="Make an appointment">
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
				      function timepicker_onclick() {

				      }

                  </script>
			<!-- //Calendar -->

<!----------------------------->
<div>
    
</div>
</asp:Content>