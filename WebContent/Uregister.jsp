<!DOCTYPE html>
<html lang="en">
<head>
	<title>Classic Enquiry Form a Flat Responsive Widget Template :: w3layouts </title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Classic Enquiry Form Responsive Widget,Samsung, LG, Sony Ericsson, Motorola Web Design"/>
	<script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
	</script>
	<link href="css10/style.css" rel='stylesheet' type='text/css' media="all">
	<link rel="stylesheet" href="css10/font-awesome.min.css" />
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
</head>
<body>
	<h1 class="header-w3ls">
		User register form</h1>
	<div class="appointment-w3">
		<form action="Uregg" method="post">
                  <div class="line-w3ls"> </div>
				<div class="login-w3ls">
					<div class="icons-agile">
						<span class="fa fa-user" aria-hidden="true"></span>
						<input type="text" name="name" placeholder="Name" required="">
						
						<div class="clear"></div>
					</div>
					<div class="icons-agile ">
						<span class="fa fa-envelope" aria-hidden="true"></span>
						<input type="email" name="email" placeholder="Email" required="">

						<div class="clear"></div>
					</div>
					<div class="icons-agile ">
						<span class="fa fa-phone" aria-hidden="true"></span>
						<input type="number" name="number" placeholder="Number" required="">

						<div class="clear"></div>
					</div>
					<div class="icons-agile ">
						<span class="fa fa-key" aria-hidden="true"></span>
						<input type="password" name="password" placeholder="Password" required="">

						<div class="clear"></div>
					</div>
				<br><br>	
					<div class="icons-agile ">
						<span class="fa fa-key" aria-hidden="true"></span>
						<input type="password" name="conpassword" placeholder="Repeat Password" required="">

						<div class="clear"></div>
					</div>

					<div class="clear"></div>
					<div class="btnn">
						<input type="submit" value="Submit">
					</div>
				</div>
		</form>
	</div>

<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<script>
	$('#chooseFile').bind('change', function () {
  var filename = $("#chooseFile").val();
  if (/^\s*$/.test(filename)) {
    $(".file-upload").removeClass('active');
    $("#noFile").text("No file chosen..."); 
  }
  else {
    $(".file-upload").addClass('active');
    $("#noFile").text(filename.replace("C:\\fakepath\\", "")); 
  }
});
</script>
</body>
</html>