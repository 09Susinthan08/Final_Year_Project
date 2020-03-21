<!DOCTYPE html>
<html lang="en">
<head>
<title>Decor Interior an Interior and Furniture Category Bootstrap Responsive website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Decor Interior Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css0/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css0/style.css" type="text/css" rel="stylesheet" media="all">   
<link rel="stylesheet" href="css0/flexslider.css" type="text/css" media="all" property="" /> 
<link href="css0/font-awesome.css" rel="stylesheet"> 
 <link href='//fonts.googleapis.com/css?family=Redressed' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
</head>
<body> 
	<div id="nav-overlay" class="nav-w3right">
		<span class="menu-trigger trigger fa fa-plus" rel="nav-overlay"></span>
		<div >
			<nav class="w3ls-nav">
				<ul>
					<li><a href="">Home</a></li>
					<li><a href="Keymain.jsp">Inbox</a></li>
					<li><a href="Logout.jsp">Logout</a></li> 
				</ul>
			</nav>
		</div>
	</div>   
	<div class="banner" >
		<div class="banner-layer">
			<div class="header-agileits"> 
				<div class="w3ls-logo">
					<h1><a href=""><span>Key</span>Generator</a></h1>
				</div>  
				<div class="clearfix"> </div> 
			</div>
			<script src="js0/jquery-3.1.1.slim.min.js"></script> 
			<script>
				$(document).ready(function() {
					$('.trigger').click(function() {
					  var $this = $(this),
					  notThis = $this.hasClass('open'),
					  thisNav = $this.attr("rel");
					  //close if you click another menu trigger
					  if (!notThis) {
						 $('.triggered-area, .trigger').removeClass('open');
						 if ( $( '.trigger' ).hasClass( "block-scroll" ) ){
							$('html').removeClass('disable-scroll');
							$('#overlay-mobile').removeClass('visible');
						 }
					  }
					  //open the nav
					  $this.toggleClass('open');
					  $("#"+thisNav).toggleClass('open');
					  if ( $( this ).hasClass( "block-scroll" ) ){
						 $('html').toggleClass('disable-scroll');
						 $('#overlay-mobile').toggleClass('visible');
					  }
					});  
				});
			</script>
			<div class="banner-text-info"> 
				<div class="container">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="banner-w3lstext">
									<h2>Decor Interior</h2>
									<h6>Facilisis nec</h6>
								</div>
							</li>
							<li>
								<div class="banner-w3lstext">
									<h3>Lorem ipsum </h3>
									<h6>Facilisis nec</h6>
								</div>
							</li>
							<li>
								<div class="banner-w3lstext">
									<h3>Gravida conv</h3>
									<h6>Facilisis nec</h6>
								</div>
							</li>
						</ul> 
					</div> 	 
				</div>
			</div>
		</div>
	</div>

	<script src="js0/jquery-2.2.3.min.js"></script>  
	<script src="js0/jarallax.js"></script>
	<script src="js0/SmoothScroll.min.js"></script>
	<script type="text/javascript" src="js0/move-top.js"></script>
	<script type="text/javascript" src="js0/easing.js"></script>	
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
			
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<script defer src="js0/jquery.flexslider.js"></script>
	<script type="text/javascript">
		$(window).load(function(){
		  $('.flexslider').flexslider({
			animation: "slide",
			start: function(slider){
			  $('body').removeClass('loading');
			}
		  });
		});
	</script>
    <script src="js0/bootstrap.js"></script>
</body>
</html>