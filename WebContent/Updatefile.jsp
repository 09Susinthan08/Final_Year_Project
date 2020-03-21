<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbconn.Dbcon" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<html lang="en">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="assets/css/bootstrap.css" rel="stylesheet" />
<link href="assets/css/font-awesome.min.css" rel="stylesheet" />
<link href="assets/css/font-awesome-animation.css" rel="stylesheet" />
<link href="assets/css/prettyPhoto.css" rel="stylesheet" />
<link href="assets/css/style.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'> 
<head>
<style>
   body {
     background-image: linear-gradient(to bottom, rgba(255,0,0,0), rgba(255,0,0,1));
     color:magenta;
	text-align:center;
	font-size:21px;
} 
 textarea {
margin-top: 2%;
  width: 50%;
 height: 214px; 
}
label
{
margin-top: 131px;
color: black;
font-weight: bold;
font-family: algerian;
}
span
{
margin-top: 131px;
color: black;
font-weight: bold;
font-family: algerian;
}
button
{
color: red;
font-size: 25px;
font-weight: bold;
font-family: USSR STENCIL;
}
}
</style>
</head>
 <body>
	<%
	 
	  String fname=request.getParameter("fname");
	  System.out.println("FN==="+fname);
	  
	  String sts=request.getParameter("status");
	  System.out.println("STS==="+sts);
	  
	  %>
	  
<%

String filecontent="";
String status="";

      Connection con=null;
      con=Dbcon.CreateConnection();
      PreparedStatement ps=con.prepareStatement("SELECT filecontent, Status FROM `blockchain`.`fileupload` where filename='"+fname+"' AND Status='"+sts+"'");
      ResultSet rs=ps.executeQuery();
 
      while(rs.next())
    {
    	
    	  filecontent=rs.getString(1);
    	
    
%>
<%} %>
<center>
<label>FILENAME:</label>
<input name="fname" value="<%=fname%>" style="margin-top: 100px; font-family: Philosopher;" readonly ><BR>
<label>STATUS:</label>
<input name="status" value="<%=sts%>" style="margin-top: 100px; font-family: Philosopher;">
<br><span>FILE CONTENT:</span>
<br><textarea style="font-family: Philosopher" name='filecontent'><%=filecontent%></textarea>
 <br><br>
<a href="Updatesuccess.jsp?fname=<%=fname%>&&stat=<%=sts%>"></a><button>ACCEPT CONTENT</button>
<a href="Deletesuccess.jsp?fname=<%=fname%>&&stat=<%=sts%>"></a><button>REJECT CONTENT</button>
</center>
 </body>
</html>