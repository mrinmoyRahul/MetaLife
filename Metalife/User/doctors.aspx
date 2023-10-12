﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="doctors.aspx.vb" Inherits="Metalife.WebForm7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../css/head.css">
     <link rel="stylesheet" href="../css/demo.css">
	<link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
</head>
<body>
    <div>
        <div class="header">
  		    <a href="index.aspx" class="logo">mETALife</a>
  		    <div class="header-right">
    		    <a href="index.aspx">Home</a>
    		    <a class="active" href="doctors.aspx">Our Doctors</a>
    		    <a href="specialities.aspx">Specialities</a>
                <a href="query.aspx">Query</a>
                <a href="about.aspx">About Us</a>
  		    </div>
	 </div>
    <form id="form1" runat="server">
        <div id="container" class="container" runat="server">
    
        </div>
    
        <div class="clearfix">
        </div>
    </form>
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
					<a href="about.aspx">About Us</a>
					·
					<a href="faq.aspx">FAQ</a>
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
    </div>
</body>
</html>

<style>
div.gallery {
  border: 1px solid #ccc;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}

* {
  box-sizing: border-box;
}

.responsive {
  padding: 0 6px;
  float: left;
  width: 24.99999%;
}

@media only screen and (max-width: 700px) {
  .responsive {
    width: 49.99999%;
    margin: 6px 0;
  }
}

@media only screen and (max-width: 500px) {
  .responsive {
    width: 100%;
  }
}

.clearfix:after {
  content: "";
  display: table;
  clear: both;
}
</style>

