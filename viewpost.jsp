<%-- 
    Document   : viewpost
    Created on : Feb 2, 2019, 4:10:16 PM
    Author     : user
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViewPost</title>

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
             .donate-inner {
                margin: 0 auto;
                width: 90%;
            }
            #tbl {
                 font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 90%;
                margin-left:-50px;
            }
            #tbl td, #tbl th {
              border: 1px solid #ddd;
              padding: 4px;
            }

            #tbl tr:nth-child(even){background-color: #f2f2f2;}

            #tbl tr:hover {background-color: #ddd;}

            #tbl th {
              padding-top: 12px;
              padding-bottom: 12px;
              text-align: left;
              background-color: #0087b4;
              color: white;
            }
        </style>
    
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
							<a class="navbar-brand" href="index.html">
								<i class="fas fa-heart" aria-hidden="true"></i> Safalam
								<span class="desc">Let's Heal the World.</span>
							</a>
						</h1>
					</div>
				</div>
            <div id="navbar" class="navbar-collapse collapse">
					<div class="nav_right_top">
						<ul class="nav navbar-nav">
							<li class="active">
								<a href="admin.jsp">Home</a>
							</li>
                                                         <li>
								<a class="scroll" href="Viewupdates.jsp">Add news</a>
							</li>
							<li>
								<a class="scroll" href="viewdonor.jsp">View donor</a>
							</li>
                                                        <li>
								<a class="scroll" href="viewdonation.jsp">View donation</a>
                                                           
							</li>                                                       
							                                                            
                                                           <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Volunteer
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a class="scroll" href="addvolunteer.jsp">Add volunteer</a>
									</li>
									<li>
										<a class="scroll" href="viewvolunteer.jsp">View volunteer</a>
									</li>
                                                                        
								</ul>
							</li>
                                                        <li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dealer
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a class="scroll" href="adddealer.jsp">Add Dealer</a>
									</li>
									<li>
										<a class="scroll" href="viewdealer.jsp">View Dealer</a>
									</li>
                                                                        <li>
										<a class="scroll" href="messages.jsp">Messages to dealers</a>
									</li>
								</ul>
							</li>
                                                        <li>
								<a class="scroll" href="viewpost.jsp">View Post</a>
							</li>
                                                        <li>
								<a class="scroll" href="signout.jsp">Sign Out</a>
							</li>
						</ul>
					</div>
				</div>
                            <div align="right" >     Welcome <%=nam%>
                            </div> 
                            </div>
		</nav>
		<div class="clearfix"></div>
	</div>
         <div class="banner_bottom donate-log">
            <div class="donate-inner"><br><br><br><br><br><br>

		
                        <center><h4>Posts</h4></center><br>
          <form action="postassign.jsp" method="post">              
        <table id="tbl">
            <tr><th></th><th>Name</th><th>City</th><th>Mobile</th><th>Disdetails</th><th>Things</th><th>Status</th><th>Dealer Assigned</th><th>Action</th></tr>   
       <%
            String dname="";int rid=0;String dn="";
            List dlr=new ArrayList(); 
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url="jdbc:sqlserver://localhost:1433;databaseName=safalam;user=sa;password=password123";
            Connection con=DriverManager.getConnection(url);
            String q="select * from  posts where status like 'Not verified%'";            
            Statement ps=con.createStatement();
            ResultSet rs=ps.executeQuery(q);
            while(rs.next()){
                dlr.clear();
                rid=rs.getInt("refid");
              String q1= "select name,dlrid from  adddealer where district=?"; 
              PreparedStatement st=con.prepareStatement(q1);
              st.setString(1, rs.getString("district"));
              ResultSet rs1=st.executeQuery();
              while(rs1.next()) {
                  dname=rs1.getString("name");
                dlr.add(rs1.getString("name")+","+rs1.getInt("dlrid"));    
              } 
               
         %>
        
            <tr><td><input type="hidden" value="<%=rid%>" name="rid"></td><td><%=rs.getString("uname")%></td><td><%=rs.getString("place")%></td><td><%=rs.getString("mob")%></td><td><%=rs.getString("descrpt")%></td><td><%=rs.getString("needs")%></td>
             <td><%=rs.getString("status")%></td><td>
                 <select name="dname"><option value="select">select</option>
                     <%for(Object s :dlr) { dn=(String)s;%>
                     <option value="<%=(String)s%>"><%=(String)s%></option><% } %>
                 </select></td><td><input type="submit" value="Assign" /></td></tr> 
        <%
             }
             
          %>   
        </table>
           </form>            
         <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
			<div class="clearfix"></div>
		</div>
	</div> 
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
