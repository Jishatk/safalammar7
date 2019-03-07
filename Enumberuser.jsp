<%-- 
    Document   : Enumberuser
    Created on : Mar 7, 2019, 12:13:20 PM
    Author     : STUDENTS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Enumbers </title>

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
						 <li>
								<a class="scroll" href="viewupdateuser.jsp">Latest updates</a>
							</li>
							<li>
								<a class="scroll" href="donate.jsp">Donate online</a>
							</li>
                                                        <li class="active">
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
			<div align="right">
                            Welcome <%=nam%>
                            </div>  	
			</div>
		</nav>
		<div class="clearfix"></div>
	</div>
        
        <div class="banner_bottom donate-log">
		<div class="donate-inner">			
                    <div class="col-md-8 donate-info"><br><br><br><br><br>
                        <center><h2><b>Emergency Numbers</b></h2></center>
         <br><br><br><br> Ambulance 108 <br><br>
         
           FireForce 101<br><br>
        
          Police 100<br><br>
        
          Women Helpline 1091<br><br>
          
           Child line 1098<br><br>
          
           <b>EMERGENCY NUMBERS - KERALA</b><br><br>           


 <b>Capital - Thiruvananthapuram</b><br><br>

 STD Code  0471<br><br>

 State   KERALA<br><br>

 Police Helpline  0471-324 3000/4000/5000<br><br> 

 Police Message Centre   94 97 900000<br><br>

 Police High Way Help Line   9846 100 100<br><br>

 Fire Station    101<br><br>

 
 

<br><br><br> Ambulance  108

<br><br><br>Women Helpline  1091
 
<br><br><br> Crime Stopper  1090
 
<br><br><br> Highway Alert  9846100100

<br><br><br> Rail Alert 9846200100


 
<br><br><br>  <b>POLICE CONTROL ROOM </b> : 100



 

<br><br><br>    1. Thiruvananthapuram City 0471-2331843


  <br><br><br> 2.Thiruvananthapuram Rural  0471-2316995


<br><br><br> 3.Kollam    0474-2746000


 

<br><br><br> 4.Pathanamthitta    0468-2222226


 

<br><br><br> 5.Alappuzha 0477-225116


 

<br><br><br> 6.Kottayam 0481-5550400


 

<br><br><br> 7.Idukki 04862-221100


 

<br><br><br> 8.Ernakulam City 0484-2359200


 

<br><br><br> 9. Ernakulam Rural 0484-2621100


 

<br><br><br> 10.Thrissur 0487-2424193


 

<br><br><br> 11.Palakkad 0491-2522340


 

<br><br><br> 12. Malappuram 0483-2734966


 

<br><br><br> 13. Kozhikode City 0495-2721831


 

<br><br><br> 14.kozhikode Rural 0496-2523091


 

   <br><br><br>15.Wayanad  04936-205808
   
   <br><br><br>16.Kannur 0497-2763337

<br><br><br> 17.Kasaragod 04994-22296



<br><br><br><b>HOSPITALS</b>

 


 

<br><br><br>Kerala Institute of Medical sciences  0471-3041400
 

<br><br><br>Holy cross 0474-2530121
 

<br><br><br>India Hospital ( G )0471-2333193
 

<br><br><br>Govt Hospital Haripad Talak 094951 19018
 

<br><br><br>Aster Medicity ( Kochi ) 0484-6699999
 
<br><br><br>Rajagiri Hospital 0484-6655000
 

<br><br><br>  Medical Trust Hospital  0484-2358001
 

<br><br><br>Shree Krishnapuram Govt, Hospital  0466-2261744
 
<br><br><br>Silverline Hospital ( Ernakulam ) 095391 18118 
<br><br><br>Government Hospital ( Pattambi ) 0466-2213769 
<br><br><br>Sunrise Hospital ( Kakkanad ) 0484-4160000 
<br><br><br>Punarnava Ayurvedic Hospital 0484-2801415 
<br><br><br>Indo - American Hospital ( Vaikom ) 04829-217800 
<br><br><br>V.G Saraf Memorial Hospital 0484-2380452 


  


     

 

<br><br><br> <b>Helpline Numbers</b>0471-3243000 , 0471-3244000  ,0471-3245000
<br><br><br> Highway Help Number  9846 100100
<br><br><br>• Railway Enquiry  9846 200100 / 139
<br><br><br>• Emergency Response Team 0471-2725646, 8089285468
<br><br><br>• Kerala Police Message Centre 94979 00000
<br><br><br> <b>KOLLAM DISTRICT EMERGENCY NUMBERS</b>

 
<br><br><br>•DISTRICT COLLECTOR – 0474 2794900,0474 2792970, 9447795500
<br><br><br>•POLICE S.P- 0474 2450168
<br><br><br>•CITY POLICE COMMISSIONER – 0474 2764422,2799099,9446402007

 

<br><br><br><b>ALAPPUZHA DISTRICT EMERGENCY NUMBERS</b>

<br><br><br>•DISTRICT COLLECTOR – 0477- 2251720,0477-2251720,9447129011


<br><br><br> <b>•ADDITIONAL DISTRICT MAGISTRATE</b> – 0477-2251549


<br><br><br>•POLICE S.P – 0477-2251326,9447122630


 

<br><br><br><b>PATHANAMTHITTA DISTRICT EMERGENCY NUMBERS</b>

 
<br><br><br>•DISTRICT COLLECTOR-0468-2222505,0468-2222505,9447029008
<br><br><br>•ADDITIONAL DISTRICT MAGISTRATE-04868-4444507
<br><br><br>•POLICE S.P 0468-4444636

 

<br><br><br><b>KOTTAYAM  DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR – 0481-2562001,2303303,9447029007
<br><br><br>•ADDITIONAL DISTRICT MAGISTRATE – 2564800,9446600888
<br><br><br>•POLICE S.P- 2564700,9744753355

  

<br><br><br><b>ERNAKULAM  DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COOLECTOR-0484-2423001,2422282,2372902,9447729012
<br><br><br>•ADDITIONAL MAGISTRATE-0484-2433382,9895269385
<br><br><br>•CITY POLICE COMMISSIONER-0484-2394770,9447094770
<br><br><br>•POLICE S.P -0484-2623550,9447115607

 

<br><br><br><b>IDUKKI DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR-0486-2233103,2233101,9447032252
<br><br><br>•ADDITIONAL DISTRICT MAGISTRATE-0486-2233056
<br><br><br>•POLICE S.P -04862-233006,232354,233004,9447066677

 

<br><br><br><b> THRISSUR DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR-0487-2361020,2362210,9447129013
<br><br><br>•ADDITIONAL MAGISTRATE-0487-2360626
<br><br><br>•CITY POLICE COMMISSIONER-0487-2361000,9447015608
<br><br><br>•POLICE S.P -0487-2323011

<br><br><br><b>PALAKKAD DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR-0491-2505266,2505566,2533026,9387288266
<br><br><br>•ADDITIONAL DISTRICT MAGISTRATE-0491-2505008
<br><br><br>•POLICE S.P-0491-2534011

 

<br><br><br><b>MALAPPURAM  DISTRICT EMERGENCY NUMBERS</b>

 
<br><br><br>•POLICE S.P-0483-2734377,9447016610,9745769146
<br><br><br>•DISTRICT COLLECTOR-0483-2734355,2734355,9446539017
<br><br><br>•ADDITIONAL MAGISTRATE-0483-273442

 

<br><br><br><b>KOZHIKODE  DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR-0495-2371400,233370582,238350,9447171400
<br><br><br>•ADDITIONAL DISTRICT MAGISTRATE-0495-2371062
<br><br><br>•CITY POLICE COMMISSIONER-0495-2722911
<br><br><br>•POLICE S.P 0496-2523100

 

<br><br><br><b>WAYANAD DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR-0493-6202230,6203450,6202300
<br><br><br>•ADDITIONAL MAGISTRATE – 04936-202532,9447097702

 

<br><br><br><b>KANNUR DISTRICT EMERGENCY NUMBERS</b>
<br><br><br>•DISTRICT COLLECTOR - 0497-2700243,9447029015
<br><br><br>ADDITIONAL DISTRICT MAGISTRATE- 0497-2700577
<br><br><br>•POLICE S.P- 0497-2763332

 

<br><br><br><b>KASARAGODE DISTRICT EMERGENCY NUMBERS</b>

 
<br><br><br>•POLICE S.P – 04994-257401,9447030401



<br><br><br>Helpline of NDMC Control Room New Delhi 1267
 <br><br><br>Ambulance Service New Delhi 1066
 <br><br><br>Helpline for Women New Delhi 1092
 <br><br><br>ORBO C.N.Centre, AIIMS ( for donation of organs) New Delhi 1060

 
 <br><br><br> <b>BLOOD BANKS IN DELHI/NCR</b>

 

<br><br><br>AIIMS New Delhi 011- 26593726, 26594438
 <br><br><br>White Cross Blood Bank  New Delhi 011- 26831063, 26844140
 <br><br><br>Batra Hospital and Medical Research Centre  New Delhi 011- 29958747, 29957487, 29956509, 26053333, 29958447 Extension- 2036, 3089
 <br><br><br>Majeedia Hospital New Delhi 011-  64788237, 64788249
 <br><br><br>Apollo Blood Bank New Delhi 011- 26825707, 26925858, 26925801,Extension- 2015
 <br><br><br>Lions Blood Bank  New Delhi 011- 42258080, 42258494
 <br><br><br>Sir Ganga Ram Hospital New Delhi 011 - 25750000, 25751111, 25861463,Extension- 11870
 <br><br><br>Indian Red Cross Society New Delhi 011 - 23711551 

 

 <br><br><br> <b>24 HOUR AMBULANCE IN DELHI</b>

 

<br><br><br>All India Institute of Medical Sciences (AIIMS) New Delhi 011- 26588776
 <br><br><br>Centralized Accident Trauma Service (CATS)  New Delhi 102, 1099
 <br><br><br>Escort Hospital  New Delhi 011- 26825000
 <br><br><br>Moolchand Hospital  New Delhi 011- 42000000

  </div>
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
