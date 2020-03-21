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
    border: 1px solid black;
    border-collapse: collapse;
    text-align: center;  
    color: black;
    font-size:20px;
    padding-bottom: 5px;
    padding-right: 10px;
}
button{
font-family:Times new roman; 
font-size:17px;
}
</style>
<body>
<table  style="margin-left: 25%; padding-left: 60px; width:50%; color:white; text-align:center; font-family: initial;">
			<tr>
			<br><br><br><br><br><br><br><br><br>
<td style="text-align:center; color: black; font-family: Times new roman;">FILENAME</td>
<td style="text-align:center; color: black; font-family: Times new roman;">FILETYPE</td>
<td style="text-align:center; color: black; font-family: Times new roman;">STATUS</td>
	</tr>
   
   <%

   String fname="";
   String ftype="";
   String status="";
   
   
   
	Connection con=null;
    con=Dbcon.CreateConnection();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM blockchain.fileupload where Status='Not Accepted'");
	ResultSet rs=ps.executeQuery();

	while(rs.next()){	
		
		fname=rs.getString(1);
		ftype=rs.getString(2);
		status=rs.getString(8);
	%>
				
<tr>
<td align="left"><%=fname%></td>
<td align="left"><%=ftype%></td>
<td align="left"><%=status%></td>

		</tr>	
	<%} %>
</table>
</body>
</html>