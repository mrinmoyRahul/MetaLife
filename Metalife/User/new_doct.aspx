<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/User/foot.Master" CodeBehind="new_doct.aspx.vb" Inherits="Metalife.new_doct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link rel="stylesheet" href="../css/head.css">
<link rel="stylesheet" href="../css/form-doct-appoint.css">
<!---------------------------------------------->
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
<!-------------------------------------------->
<div class="container">
  <h2>Vertical (basic) Form</h2>
  <form>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password">
    </div>
    <div class="checkbox">
      <label><input type="checkbox"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</asp:Content>
