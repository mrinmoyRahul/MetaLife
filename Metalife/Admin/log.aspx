<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="log.aspx.vb" Inherits="Metalife.log1" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
    <link rel="stylesheet" href="../css/adm-style.css">
  </head>
  <body>
  <form runat="server">
  <div class="header">
  		    <a href="home.aspx" class="logo">mETALife</a>
  </div>
<div class="login-box">
  <h1>Login</h1>
  <div class="textbox">
    <i class="fas fa-user"></i>
   <asp:TextBox ID="TextBox1" runat="server" type="text" Placeholder="Username"></asp:TextBox>
  </div>

  <div class="textbox">
    <i class="fas fa-lock"></i>
      <asp:TextBox ID="TextBox2" runat="server" type="password" Placeholder="Password" TextMode="Password"></asp:TextBox>
  </div>
    <asp:Button ID="Button1" runat="server" Text="Signin" class="btn"/>
</div>
</form>
  </body>
</html>

<style>
/* Style the header with a grey background and some padding */
.header {
  overflow: hidden;
  padding: 20px 10px;
}

/* Style the header links */
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

/* Style the logo link (notice that we set the same value of line-height and font-size to prevent the header to increase when the font gets bigger */
.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

/* Change the background color on mouse-over */
.header a:hover {
  background-color: #ddd;
  color: black;
}
</style>

