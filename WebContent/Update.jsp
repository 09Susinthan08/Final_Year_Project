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
    color: black;
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
<td style="text-align:center; color: black; font-family:Algerian;">FILENAME</td>
<td style="text-align:center; color: black; font-family:Algerian;">FILETYPE</td>
<td style="text-align:center; color: black; font-family:Algerian;">STATUS</td>
	</tr>
   
   <%

   String fname="";
   String ftype="";
   String status="";
   
   
   
	Connection con=null;
    con=Dbcon.CreateConnection();
	PreparedStatement ps=con.prepareStatement("SELECT * FROM blockchain.fileupload");
	ResultSet rs=ps.executeQuery();

	while(rs.next()){	
		
		fname=rs.getString(1);
		ftype=rs.getString(2);
		status=rs.getString(8);
	%>
				
<tr>
<td align="left"><%=fname%></td>
<td align="left"><%=ftype%></td>
<td align="left"><a href="Updatefile.jsp?fname=<%=fname%>&&status=<%=rs.getString(8)%>"><button>View file</button></a></td>

		</tr>	
	<%} %>
</table>
</body>
</html>