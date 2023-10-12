<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Metalife.index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>mETALife</title>
    <!----Header------>
    <link rel="stylesheet" href="../css/head.css">
    <!----Footer------>
    <link rel="stylesheet" href="../css/demo.css">
	<link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="Stylesheet" href="../css/slider.css" />
    
</head>
<body>
    <form id="form1" runat="server">
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
    <div class="w3-content w3-display-container" style="max-width:1500px">
  <img class="mySlides" src="../img/host/a13.jpg" style="width:100%">
  <img class="mySlides" src="../img/host/b2.jpg" style="width:100%">
  <img class="mySlides" src="../img/host/c1.jpg" style="width:100%">
  <div class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle" style="width:100%">
    <div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
    <div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(1)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(2)"></span>
    <span class="w3-badge demo w3-border w3-transparent w3-hover-white" onclick="currentDiv(3)"></span>
  </div>
</div>

<script>
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
        showDivs(slideIndex += n);
    }

    function currentDiv(n) {
        showDivs(slideIndex = n);
    }

    function showDivs(n) {
        var i;
        var x = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        if (n > x.length) { slideIndex = 1 }
        if (n < 1) { slideIndex = x.length }
        for (i = 0; i < x.length; i++) {
            x[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" w3-white", "");
        }
        x[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " w3-white";
    }
</script>
    <!----------------------------------------------->
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
					<a href="about.aspx">About us</a>
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
</body>
</html>


