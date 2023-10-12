<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="signin.aspx.vb" Inherits="Metalife.log" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet">
    <title></title>
</head>
<body>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <div>

    <nav class="navbar navbar-default navbar-static-top">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand" href="../User/index.aspx">
				mETALife
			</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">			
			<ul class="nav navbar-nav navbar-right">
				<li><a href="../User/index.aspx" target="_blank">Visit Site</a></li>
			</ul>
			</div><!-- /.navbar-collapse -->
		</div><!-- /.container-fluid -->
	</nav>
	
        
    </div>
    <div class="login-box">
    <img src="../img/avatar.png" class="avatar">
        <h1>Employee Login Here</h1>
            <form id="form1" runat="server">
            <p>Username</p>
            <asp:TextBox ID="TextBox1" runat="server" type="text" placeholder="Enter Username"></asp:TextBox>
            <p>Password</p>
            <asp:TextBox ID="TextBox2" runat="server" type="password" placeholder="Enter Password"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" type="submit" />
            <a href="#">Forget Password</a>
            <a href="../user/index.aspx">   Jump to User Page</a>    
            </form>
    </div>      
</body>
</html>


<style>
body{
    margin: 0;
    padding: 0;
    background: url(../img/backg.jpg);
    background-size: cover;
    background-position: center;
    font-family: sans-serif;
    backround-repeat:no-repeat;
    background-attachment:fixed;
}
.login-box{
    width: 320px;
    height: 420px;
    background: rgba(0, 0, 0, 0.5);
    color: #fff;
    top: 50%;
    left: 50%;
    position: absolute;
    transform: translate(-50%,-50%);
    box-sizing: border-box;
    padding: 70px 30px;
}
.avatar{
    width: 100px;
    height: 100px;
    border-radius: 50%;
    position: absolute;
    top: -50px;
    left: calc(50% - 50px);
}
h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 20px;
}
.login-box input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}

.login-box a{
    text-decoration: none;
    font-size: 14px;
    color: #fff;
}
.login-box a:hover
{
    color: #39dc79;
}
</style>
