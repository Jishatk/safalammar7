<%-- 
    Document   : login
    Created on : Dec 1, 2018, 12:21:41 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>Sign In </title>

	<!--/tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Relief Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/prettyPhoto.css" rel="stylesheet" type="text/css" />
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<link href="css/fontawesome-all.css" rel="stylesheet">
	<!-- //for bootstrap working -->
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,300i,400,400i,600,600i,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700" rel="stylesheet">

         <style>
             .navbar-nav>li>a {
        padding: 20px 10px;
        text-transform: uppercase;
        letter-spacing: 2px;
        font-size: 0.8em;
        font-weight: 600;
        
        }
        </style>
    </head>
    <body>
      <div class="top_header" id="home">
		<!-- Fixed navbar -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="nav_top_fx_w3layouts_agileits">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					    aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<div class="logo_wthree_agile">
						<h1>
							<a class="navbar-brand" href="index5.html">
								<i class="fas fa-heart" aria-hidden="true"></i> Safalam
								<span class="desc">Let's Heal the World .</span>
							</a>
						</h1>
					</div>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
						<ul class="nav navbar-nav">
							<li >
								<a href="index5.html">Home</a>
							</li>
							<li>
								<a class="scroll" href="#about">About</a>
							</li>
							<li>
								<a class="scroll" href="#gallery">Gallery</a>
							</li>
                                                        <li>
								<a class="scroll" href="viewupdateindex.jsp">Updates</a>
							</li>
                                                        <li>
								<a class="scroll" href="post.jsp">Post Your Requirements</a>
							</li>
                                                        <li>
								<a class="scroll" href="Enumbers.html">Emergency Numbers</a>
							</li>
							
                                                        
							<li class="active">
								<a class="scroll" href="login.jsp">Sign In</a>
							</li>
                                                        <li>
								<a class="scroll" href="register.jsp">Register</a>
							</li>
                                                        <li>
								<a class="scroll" href="#contact">Contact</a>
							</li>
							

						</ul>
					</div>
				</div>
				
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>

	
       <div class="banner_bottom donate-log">
		<div class="donate-inner">

			
                    <div class="col-md-8 donate-info"><br><br><br>
                        <center><h4>Sign In</h4></center>
            If you are already registered, please enter your email address and password to sign in.
            <br><br><br>
        <form action="logServlet" method="POST">
            
        <table >
           
            <tr>
                <td><label >Username</label></td>
                <td><input type="email" name="uname" value="" required/></td>
            </tr>
            <tr>
                <td><label >Password</label></td>
                <td><input type="password" name="pass" value="" required /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit"  value="Login" /></td>
            </tr>
        </table>
        </form><br><br>
        &nbsp;<< New User.<a href="register.jsp">Create Account >> </a>
                            </div>
			<div class="clearfix"></div>
		</div>
	</div>
        
         <p class="copy-right"><font style=" color: black">2019 © Safalam. All rights reserved.</font>
			</p>
    </body>
</html>
