<%-- 
    Document   : newsdetail
    Created on : Feb 15, 2019, 10:31:24 AM
    Author     : STUDENTS
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dealerhome </title>

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

    
    </head>
    <body>
         <%
                HttpSession sess=request.getSession(true);
                String nam=(String)sess.getAttribute("uname");
         %>
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
							<a class="navbar-brand" href="userhome.jsp">
								<i class="fas fa-heart" aria-hidden="true"></i> Safalam
								<span class="desc">Let's Heal the World.</span>
							</a>
						</h1>
					</div>
				</div>
        <div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
						<ul class="nav navbar-nav">
							<li >
								<a href="userhome.jsp">Home</a>
                                                        </li>
							
                                                         <li class="active">
								<a class="scroll" href="viewupdateuser.jsp">Latest updates</a>
							</li>
							<li>
								<a class="scroll" href="donate.jsp">Donate online</a>
							</li>
                                                        <li>
								<a class="scroll" href="Enumberuser.jsp">Emergency numbers</a>
                                                           
							</li>
                                                       <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">MyAccount
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a class="scroll" href="myacc.jsp">Edit Profile</a>
									</li>
									<li>
										<a class="scroll" href="mydonation.jsp">MyDonations</a>
									</li>
                                                        
								</ul>
							</li>
                                                        <li>
								<a class="scroll" href="signout.jsp">Sign Out</a>
							</li>
						</ul>
					</div>
				</div>
                        <div align="right"       >     Welcome <%=nam%>
                            </div>  
                          
                            </div>
                            
		</nav>
                
                <div class="clearfix"></div><div></div>
	</div><br><br><br><br><br><br>
       <%
        int id=Integer.parseInt(request.getParameter("id"));
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url="jdbc:sqlserver://localhost:1433;databaseName=safalam;user=sa;password=password123";
        
        String q="select * from lateup where refid=?";
        Connection con=DriverManager.getConnection(url);
        PreparedStatement ps=con.prepareStatement(q);
        ps.setInt(1, id);
        ResultSet rs=ps.executeQuery();
        while(rs.next()){
       %>
      
       <div class="banner_bottom donate-log">
		<div class="donate-inner">
       <form action="donatefor.jsp" method="post">
       <div style="font-size:large; colour: #313A3D;border-style: hidden;width:600px;height:650px; margin-left:100px">
           <h3><%=rs.getString("title")%></h3> &nbsp;- <%=rs.getString("place")%><br>
        <img src="images/<%=rs.getString("pic")%>" width="300" height="300"/><br>
        <%=rs.getString("ddate")%><br><p><%=rs.getString("description")%></p><br>
         <input type="hidden" value="<%=rs.getString("refid")%>" name="rfid" /><br>
         <input type="hidden" value="<%=rs.getString("title")%>" name="dis"/><br>
        <input type="submit" value="Donate" />
       </div>
        </form>
        <br>
        
       <%
           }
        %>  
        <br>
                </div>
       </div> <br> <br>
        <p class="copy-right"><font style=" color: black">2019 © Safalam. All rights reserved.</font>
			</p>                    
          <script type="text/javascript" src="js/jquery-2.2.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<!-- script for responsive tabs -->
	<script src="js/easy-responsive-tabs.js"></script>
	<script>
		$(document).ready(function () {
			$('#horizontalTab').easyResponsiveTabs({
				type: 'default', //Types: default, vertical, accordion           
				width: 'auto', //auto or any width like 600px
				fit: true, // 100% fit in a container
				closed: 'accordion', // Start closed if in accordion view
				activate: function (event) { // Callback function if tab is switched
					var $tab = $(this);
					var $info = $('#tabInfo');
					var $name = $('span', $info);
					$name.text($tab.text());
					$info.show();
				}
			});
			$('#verticalTab').easyResponsiveTabs({
				type: 'vertical',
				width: 'auto',
				fit: true
			});
		});
	</script>
	<!--// script for responsive tabs -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			// Slideshow 4
			$("#slider4").responsiveSlides({
				auto: true,
				pager: true,
				nav: false,
				speed: 500,
				namespace: "callbacks",
				before: function () {
					$('.events').append("<li>before event fired.</li>");
				},
				after: function () {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script type="text/javascript" src="js/all.js"></script>
	<script>
		$('ul.dropdown-menu li').hover(function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeIn(500);
		}, function () {
			$(this).find('.dropdown-menu').stop(true, true).delay(200).fadeOut(500);
		});
	</script>

	<!-- js -->
	<script type="text/javascript" src="js/simplyCountdown.js"></script>
	<link href="css/simplyCountdown.css" rel='stylesheet' type='text/css' />
	<script>
		var d = new Date();
		simplyCountdown('simply-countdown', {
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
		simplyCountdown('simply-countdown-custom', {
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
		$('#simply-countdown-losange').simplyCountdown({
			year: d.getFullYear(),
			month: d.getMonth() + 2,
			day: 25
		});
	</script>
	<!--js-->
	<!--/tooltip -->
	<script>
		$(function () {
			$('[data-toggle="tooltip"]').tooltip({
				trigger: 'manual'
			}).tooltip('show');
		});

		// $( window ).scroll(function() {   
		// if($( window ).scrollTop() > 10){  // scroll down abit and get the action   
		$(".progress-bar").each(function () {
			each_bar_width = $(this).attr('aria-valuenow');
			$(this).width(each_bar_width + '%');
		});

		//  }  
		// });
	</script>
	<!--//tooltip -->
	<!-- Smooth-Scrolling-JavaScript -->
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function ($) {
			$(".scroll, .navbar li a, .footer li a").click(function (event) {
				$('html,body').animate({
					scrollTop: $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //Smooth-Scrolling-JavaScript -->
	<script type="text/javascript">
		$(document).ready(function () {
			/*
									var defaults = {
							  			containerID: 'toTop', // fading element id
										containerHoverID: 'toTopHover', // fading element hover id
										scrollSpeed: 1200,
										easingType: 'linear' 
							 		};
									*/

			$().UItoTop({
				easingType: 'easeOutQuart'
			});

		});
	</script>


	<a href="#home" class="scroll" id="toTop" style="display: block;">
		<span id="toTopHover" style="opacity: 1;"> </span>
	</a>

	<!-- jQuery-Photo-filter-lightbox-Gallery-plugin -->
	<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
	<script src="js/jquery.quicksand.js" type="text/javascript"></script>
	<script src="js/script.js" type="text/javascript"></script>
	<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>                 
                              
    </body>
</html>
