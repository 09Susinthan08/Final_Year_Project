<%@page import="java.sql.*"%>
<%@page import="dbconn.Dbcon"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Upload Page </title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Classic Enquiry Form Responsive Widget, Audio and Video players, Login Form Web Template"/>
	<script type="application/x-javascript">
		addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
	</script>
	<link href="css7/style.css" rel='stylesheet' type='text/css' media="all">
	<link rel="stylesheet" href="css7/font-awesome.min.css" />
	<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<style>
body {margin:0;}
label
{
font-size: 20px;
color: yellow;
font-family: algerian;
    padding-top: 8px;
}
.navbar {
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}
.navbar a {
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: right;
  padding:10px 10px;
  text-decoration: none;
  font-size: 17px;
}
.navbar a:hover {
  background: #ddd;
  color: black;
}
.main {
  padding: 50px;
  margin-top: 30px;
  height: 1500px;
}
</style>
</head>
<body>
   <%
  String email2=request.getSession().getAttribute("email1").toString();
	
System.out.println("emaikl"+email2);
       %>
	<%
		  
 
 String caty="";
 String filename="";
 String filekey="";
   
	Connection con=null;

con=Dbcon.CreateConnection();
PreparedStatement ps1=con.prepareStatement("SELECT * FROM `blockchain`.`keystore` where Ownername='"+email2+"'");
	ResultSet rs=ps1.executeQuery();
	while(rs.next())
	{	
		caty=rs.getString(2);
		filekey=rs.getString(3);
	
	%>
	<%} %>  	
		<h1 class="header-w3ls">
		Upload Your File</h1>
	<div class="appointment-w3">
<form action="Upload" method="post" enctype="multipart/form-data">
                  <div class="line-w3ls"> </div>
				 <div class="login-w3ls">
					<div class="icons-agile">
					<label>OWNERNAME</label>&nbsp;&nbsp;
						 <input type="text" name="filekey" value=<%=email2%> readonly=""> 
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
					<div class="icons-agile">
					<label>CATEGORY</label>&nbsp;&nbsp;
						 <input type="text" name="filekey" value=<%=caty%> readonly=""> 
						<div class="clear"></div>
					</div>
					<div class="clear"></div>
					<div class="icons-agile">
					<label>FILEKEY</label>&nbsp;&nbsp;
						 <input type="text" name="filekey" value=<%=filekey%> readonly=""> 
						<div class="clear"></div>
					</div>
					<div class="clear"></div><br>
					 <div class="file-upload">

    			<input type="file" name="chooseFile" id="chooseFile">
  				 
		</div>
		 
					<div class="btnn">
						<input type="submit" value="Submit">
					</div>
				</div>
		</form>
		</div>
	
</body>
</html>