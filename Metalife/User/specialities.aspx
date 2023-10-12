<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User/foot.Master" CodeBehind="specialities.aspx.vb" Inherits="Metalife.WebForm1" %>
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
    		    <a class="active" href="specialities.aspx">Specialities</a>
                <a href="query.aspx">Query</a>
                <a href="about.aspx">About Us</a>
  		    </div>
	    </div>
</div>
    <div id="department" runat="server">
    </div>
<%--<div class="box">
    <p><h2>Neurology</h2>An emergency department (ED), also known as an accident & emergency department (A&E), emergency room (ER), emergency ward (EW) or casualty
     department, is a medical treatment facility specializing in emergency medicine, the acute care of patients who present without prior 
     appointment; either by their own means or by that of an ambulance. The emergency department is usually found in a hospital or other primary 
     care center. .</p>
</div>

<div class="box">
    <p><h2>Dentist</h2>An emergency department (ED), also known as an accident & emergency department (A&E), emergency room (ER), emergency ward (EW) or casualty
     department, is a medical treatment facility specializing in emergency medicine, the acute care of patients who present without prior appointment
     ; either by their own means or by that of an ambulance. The emergency department is usually found in a hospital or other primary care center. </p>
</div>

<div class="box">
    <p><h2>Surgeon</h2>An emergency department (ED), also known as an accident & emergency department (A&E), emergency room (ER), emergency ward (EW) or casualty 
    department, is a medical treatment facility specializing in emergency medicine, the acute care of patients who present without prior
    appointment; either by their own means or by that of an ambulance. The emergency department is usually found in a hospital or other primary 
    care center. </p>
</div>--%>


<style>
	@import "compass/css3";

.box {
    position: relative;
    margin: 0 auto 80px;
    padding: 30px 0 40px;
    max-width: 840px;
    text-align: center;
    background: #fff;
}

.box:after {
    content: "";
    position: absolute;
    left: 0;
    bottom: 0;
    width: 100%;
    height: 4px;
    -webkit-border-radius: 50%;
            border-radius: 50%;
    -webkit-box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
       -moz-box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.4);
    z-index: -1;
}
</style>



</asp:Content>
