  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="dbconn.Dbcon"%>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
 {
background-image: linear-gradient(to bottom, rgba(255,0,0,0), rgba(255,0,0,1));
height: 606px;
  }
table, th, td {
    font-family: BlackChancery;
    border: 2px dashed black;
    border-collapse: collapse;
    text-align: center;  
    color: #3f00ff;
    font-size:20px;
    padding-bottom: 5px;
    padding-right: 10px;
}

     a {
  font-size:34px;
  font-family: BlackChancery;
  display: block;
  color: black;
  text-align: center;
  margin-left:80%;
  margin-top: 3%;
}
button{
margin-left:-78px; 
font-family:The Devil Net; 
font-size:15px;
}
</style>
<body>
<table  align="center" style="margin-top: 100px; width:50%;color:black">
			<tr>
<td style="text-align:center; color:#7700ff; font-family:Algerian;">NAME</td>

<td style="text-align:center; color:#7700ff; font-family:Algerian;">CATEGORY</td>

<td style="text-align:center; color:#7700ff; font-family:Algerian;">STATUS</td>

	</tr>	
	<%

 String name="";
 String caty="";

   Connection con=null;

con=Dbcon.CreateConnection();
PreparedStatement ps1=con.prepareStatement("SELECT * FROM `blockchain`.`request`");
ResultSet rs=ps1.executeQuery();

	while(rs.next()){
		
		name=rs.getString(1);
		caty=rs.getString(2);

	%>

	<tr>
<td style="font-family:Philosopher; text-align: center; color: black;"><%=name%></td>
<td style="font-family:Philosopher; text-align: center; color: black;"><%=caty%></td>

<td align="left"><a href="Keygen.jsp?name=<%=name%>&&caty=<%=caty%>"><button>Generate Key</button></a></td>

		</tr>

	<%} %>
	</table>		
</body>
</html>