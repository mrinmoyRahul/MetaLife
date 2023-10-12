<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="new_doc.aspx.vb" Inherits="Metalife.new_doc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>mETALife</title>
    <!----Header------>
    <link rel="stylesheet" href="../css/head.css">
    <!----Footer------>
    <link rel="stylesheet" href="../css/demo.css">
	<link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/form-doct-appoint.css">
    
</head>
<body>
    
    <div>
        <div class="header">
  		    <a href="index.aspx" class="logo">mETALife</a>
  		    <div class="header-right">
    		    <a class="active" href="index.aspx">Home</a>
    		    <a href="doctors.aspx">Our Doctors</a>
    		    <a href="specialities.aspx">Specialities</a>
                <a href="query.aspx">Query</a>
                <a href="about.aspx">About Us</a>
  		    </div>
	    </div>
        <br />

       

    </div>
    <!----------------------------------------------->
    <div class="container">
  <h2>Appointment Form</h2>
        <p>FirstName</p>
  <form id="Form1" runat="server">
    <div class="form-group">
      &nbsp;<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter name"></asp:TextBox>
        LastName<br />
        <br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
    </div>
    <div class="form-group">
      <label for="name">Address:</label>
     
        <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter Address"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="name">Contact Number:</label>
            
        <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter contact number"></asp:TextBox>
    </div>
    <div class="form-group">
      <label for="name">E-mail:</label>
            
        <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter E-mail"></asp:TextBox>
    </div>
    <div class="form-group">
    <label for="name">Gender:</label>
        <asp:RadioButtonList ID="RadioButtonList1" RepeatDirection="Horizontal" 
            runat="server" Width="60%">
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <asp:Button ID="Button1" runat="server" Text="submit" class="button" />
  </form>
</div>
    <!----------------------------------------------->
    
    <!------Footer Start -------------->
    <footer class="footer-distributed">
		<div class="footer-left">
			<h3>mETA<span>Life</span></h3>
				<p class="footer-links">
					<a href="index.aspx">Home</a>
					·
					<a href="doctors.aspx">Our Doctors</a>
					·
					<a href="specialities.aspx">Specialities</a>
					·
					<a href="contact.aspx">Conatct us</a>
					·
					<a href="#">FAQ</a>
				</p>
				<p class="footer-company-name">mETALife &copy; 2019</p>
		</div>
		<div class="footer-center">
			<div>
				<i class="fa fa-map-marker"></i>
				<p><span>21 Parkinson Street</span> Kolkata, WB</p>
			</div>
			<div>
				<i class="fa fa-phone"></i>
				<p>+91 90623 30628</p>
			</div>
			<div>
				<i class="fa fa-envelope"></i>
				<p><a href="mailto:support@company.com">support@metalife.com</a></p>
			</div>
		</div>
		<div class="footer-right">
			<p class="footer-company-about">
				<span>About the company</span>
				The main moto of mETALife is "Caring for the growing needs of our community".This Hospital is no place to be sick.
			</p>
			<div class="footer-icons">
				<a href="#"><i class="fa fa-facebook"></i></a>
				<a href="#"><i class="fa fa-twitter"></i></a>
				<a href="#"><i class="fa fa-linkedin"></i></a>
				<a href="#"><i class="fa fa-github"></i></a>
			</div>
		</div>
		</footer>



    <!------ Footer over--------------->
</body>
</html>


