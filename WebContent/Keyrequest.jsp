<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="dbconn.Dbcon" %>
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
    font-family: Imprint MT Shadow;
    border: 1px dashed black;
    border-collapse: collapse;
    text-align: center;  
    color: red;
    font-size:20px;
    padding-bottom: 5px;
    padding-right: 10px;
}
button{
font-family:The Devil Net; 
font-size:17px;
}
</style>
<body>
<table  style="margin-left: 25%; padding-left: 60px; width:50%; color:white; text-align:center; font-family: initial;">
			<tr>
			<br><br><br><br><br><br><br><br><br>
<td style="text-align:center; color: white; font-family:Algerian;">OWNERNAME</th>
<td style="text-align:center; color: white; font-family:Algerian;">CATEGORY</th>
<td style="text-align:center; color: white; font-family:Algerian;">STATUS</th>
	</tr>

   <%

   String owner="";
   String caty="";
   
   
	Connection con=null;
    con=Dbcon.CreateConnection();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM blockchain.oregg");
	ResultSet rs=ps.executeQuery();

	while(rs.next()){	
		
		owner=rs.getString(1);
		caty=rs.getString(4);
	%>
				
<tr>
<td align="left"><%=owner%></td>
<td align="left"><%=caty%></td>
<td align="left"><a href="Request?owner=<%=rs.getString(1)%>&&caty=<%=rs.getString(4)%>"><button>REQUEST</button></a></td>

		</tr>	
	<%} %>
</table>
</body>
</html>