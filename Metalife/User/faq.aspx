<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="faq.aspx.vb" Inherits="Metalife.fa" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!----Header------>
    <link rel="stylesheet" href="../css/head.css">
    <!----Footer------>
    <link rel="stylesheet" href="../css/demo.css">
	<link rel="stylesheet" href="../css/footer-distributed-with-address-and-phones.css">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="../css/accordian.css">
</head>
<body runat="server">
    
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
        <!------------------------------------>
        <br />
        <div>
        <h2>Frequently Asked Question</h2>
        <br />
            <button class="accordion">Q1. Are all the consultants available 24 hours?</button>
            <div class="panel">
                <p>All the consultants are full-time employees of the hospital; hence, outpatient services are available on all working days. We have doctors in the positions of medical and surgical registrars, junior and senior registrars, and junior and senior residents, thus offering 24 hours coverage in areas such as Casualty, Wards, Intensive Care Units and Post Op recovery areas. Any complaints in the odd hours are first attended to by the resident doctors and, depending upon the case, the respective consultants are called in to attend to the patients. </p>
            </div>

            <button class="accordion">Q2. What are the facilities available in the hospital?</button>
            <div class="panel">
                <p>You are required to contact the admission counter, where our executives will give you details about the various packages, bed categories and other charges. After finalization of the package and bed category, you will be given an IP (inpatient) number. On completion of all the admission formalities, you will be guided to the respective ward/room.</p>
            </div>

            <button class="accordion">Q3. Do we need to pay any advance at the time of admission?</button>
            <div class="panel">
                <p>Yes, patients are required to pay a deposit as per the category of the bed at the time of admission. In case of a surgery or a procedure, the total estimated amount has to be deposited with the hospital before the surgery.</p>
            </div>

            <button class="accordion">Q4. What is the mode of payment?</button>
            <div class="panel">
                <p>Patients can make the deposit by cash, debit or credit cards or demand draft. We do not accept cheques.</p>
            </div>

            <button class="accordion">Q5. Can the room be retained, if the patient is shifted to the ICU?</button>
            <div class="panel">
                <p>Attendants need to vacate the room if the patient is shifted to an ICU.</p>
            </div>

            <button class="accordion">Q6. Is my Mediclaim policy accepted at your hospital?</button>
            <div class="panel">
                <p>Yes, if your TPA is on the panel of our hospital. </p>
            </div>

            <button class="accordion">Q7. Do you have an ambulance service?</button>
            <div class="panel">
                <p>Yes, we have an ambulance service round-the-clock. </p>
            </div>

            <button class="accordion">Q8. How many attendant passes are issued?</button>
            <div class="panel">
                <p>To minimize crowding and noise in the patient care area, only one attendant pass is issued per patient. The pass has to be surrendered at the admission counter at the time of the discharge </p>
            </div>

            <button class="accordion">Q9. What is the procedure for discharge?</button>
            <div class="panel">
                <p>Your consultant will make an entry for discharge on your case sheet. After this, the resident doctors prepare the discharge card. Then the file is sent to the IP reception for clearance, after which the final bill is prepared, taking into account all the deposits. When the final bill is ready, payment has to be made at the admission counter. This procedure may take 2-3 hours. </p>
            </div>

            <button class="accordion">Q10. Is outside food allowed into the hospital?</button>
            <div class="panel">
                <p>We provide complimentary food for the patient from the hospital kitchen. Attendants need to make their own arrangements or eat in the cafeteria. </p>
            </div>



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


<script>
    var acc = document.getElementsByClassName("accordion");
    var i;

    for (i = 0; i < acc.length; i++) {
        acc[i].addEventListener("click", function () {
            this.classList.toggle("active");
            var panel = this.nextElementSibling;
            if (panel.style.display === "block") {
                panel.style.display = "none";
            } else {
                panel.style.display = "block";
            }
        });
    }
</script>