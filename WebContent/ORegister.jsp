<!DOCTYPE html>
<html>
<head>
<title>Dragging register form a Flat Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Dragging register form Responsive, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> 
addEventListener("load", function() { setTimeout(hideURLbar, 0); 
},	
false); function hideURLbar()
{ window.scrollTo(0,1); 
} 
</script>
<link rel="stylesheet" href="css1/style.css">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' 
rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>		
</head>
<body>
<h1>Registration Form</h1>
<div class="agile-its">
	<h2>Register Here</h2>
	<div class="w3layouts">
		<div class="photos-upload-view">
			<form  action="Oregg" method="post" autocomplete="off">
						<div class="agileinfo-row">
							<div class="ferry ferry-from">
								<label>User Name</label>
								<input type="text" name="name" placeholder="Name" required="">
							</div>
							<div class="ferry ferry-from">
								<label>Your Email</label>
								<input type="email" name="email" placeholder="Email" onblur="validateEmail(this);" required="">
							</div>
							<div class="ferry ferry-from">
								<label>Your Mobile Number</label>
								<input type="tel" name="num" placeholder="Phone Number" pattern="^\d{10}$"  title="Enter a 10 digit mobile number" required="">
							</div>
							<div class="ferry ferry-from">
								<label>Select category</label>
						         <select name="area"  required="">
                                            <option value="select" style="color:black;">Select your Category</option>
                                            <option value="fileupload" style="color:black;">File upload</option>
                                            <option value="filedownload" style="color:black;">File download</option>
								</select>
							</div>
							<div class="ferry ferry-from">
								<label>Password</label>
								<input type="password" name="password" id="password" placeholder="Create Password" required="">
							</div>
							<div class="ferry ferry-from">
								<label>Confirm Password</label>
								<input type="password" name="cpassword" id="confirm_password" placeholder="Confirm Password" required="">
						                    	
							</div><span id='message'></span>
							<div class="clear"></div>
						</div>
					<div class="wthree-text">  
						<div class="wthreesubmitaits">
							<input type="submit" name="submit" value="Register">
						</div>  
					</div>
			</form>			
		</div>
	</div>
</div>
<script>
		function validateEmail(emailField){
		       var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		       if (reg.test(emailField.value) == false) 
		         {
		            alert('Invalid Email Address');
		            return false;
		         }
		        return true;
                   }
	</script>
		
						<script>
						$('#password, #confirm_password').on('keyup', function () {
							  if ($('#password').val() == $('#confirm_password').val()) {
							    $('#message').html('Matching').css('color', 'green');
							  } else 
							    $('#message').html('Not Matching').css('color', 'red');
							});
			</script>
					<script type="text/javascript">
    function validateForm() {
        return checkPhone();
    }
    function checkPhone() {
        var phone = document.forms["myForm"]["phone"].value;
        var phoneNum = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/; 
            if(phone.value.match(phoneNum)) {
                return true;
            }
            else {
                document.getElementById("phone").className = document.getElementById("phone").className + " error";
                return false;
            }
        }
</script>
<script src="js1/filedrag.js"></script>
<script type="text/javascript" src="js1/jquery.min.js"></script>
</body>
</html>