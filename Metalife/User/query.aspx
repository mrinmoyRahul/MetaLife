<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="query.aspx.vb" Inherits="Metalife.contact" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-----Header--->
    <link rel="stylesheet" href="../css/head.css">
    <!-----query--->
    <link rel="stylesheet" href="../css/query.css">
    <!----Footer------>
    <link rel="stylesheet" href="../css/demo.css">
	<link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!----Header start------->
        <div class="header">
  		    <a href="index.aspx" class="logo">mETALife</a>
  		    <div class="header-right">
    		    <a href="index.aspx">Home</a>
    		    <a href="doctors.aspx">Our Doctors</a>
    		    <a href="specialities.aspx">Specialities</a>
                <a class="active" href="query.aspx">Query</a>
                <a href="about.aspx">About Us</a>
  		    </div>
	    </div>
        <br />
        <!----Header over------->

        <!----Query start------->
                <div class="row">
                    <div class="col-25">
                        <label for="fname">First Name</label>
                    </div>
                    <div class="col-75">
                   
                        <asp:TextBox ID="TextBox1" type="text" runat="server" placeholder="Your name"></asp:TextBox>
                    </div>
                    
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Last Name</label>
                    </div>
                    <div class="col-75">
                        
                        <asp:TextBox ID="TextBox2" type="text" runat="server" placeholder="Your name"></asp:TextBox>
                     </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">E-Mail</label>
                    </div>
                    <div class="col-75">
                      
                        <asp:TextBox ID="TextBox3" type="text" runat="server" placeholder="Your e-mail"></asp:TextBox>
                     </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="dept">Department</label>
                    </div>
                    <div class="col-75">
                        <asp:DropDownList ID="DropDownList1" runat="server" 
                            DataSourceID="SqlDataSource1" DataTextField="Depart_name" 
                            DataValueField="Depart_name">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT [Depart_name] FROM [Departments]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="subject">Subject</label>
                    </div>
                    <div class="col-75">
                       
                        <asp:TextBox ID="TextBox4" type="text" runat="server" 
                            placeholder="Your Subject" TextMode="MultiLine"></asp:TextBox>
                    </div>
                </div><br />
                <div class="row">
                    <asp:Button ID="Button1" type="button" runat="server" Text="Submit" />
                </div>
        
            </form>
        </div>
        <!-------Query over--------->

        <!--Footer------------>
        <div>
        
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
					<a href="faq.aspx>FAQ</a>
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
		</footer>        <!----Footer over--------->
    </div>
    </form>
</body>
</html>
