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
input
{
border-style: dotted;
font-family: times new roman;
    font-size:20px;
}
body
 {
background-image: linear-gradient(to bottom, rgba(255,0,0,0), rgba(255,0,0,1));
height: 606px;
  }
table, th, td {
    font-family: Times new roman;
    border: 3px double black;
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
<%
String oname=request.getParameter("name");
System.out.println("Owner"+oname);

String cate=request.getParameter("caty");
System.out.println("Category"+cate);

%>
<%

Random r= new Random(); 
String key="234ABCDEFGH560IJKLMNOPQRS789TUVWXYZ1";
char c=key.charAt(r.nextInt(key.length()));
char c1=key.charAt(r.nextInt(key.length()));
char c2=key.charAt(r.nextInt(key.length()));
char c3=key.charAt(r.nextInt(key.length()));
char c4=key.charAt(r.nextInt(key.length()));

String Secretkey=""+c+""+c1+""+c2+""+c3+""+c4;
System.out.print(Secretkey);


%>
<table  align="center" style="margin-top: 100px; width:50%;color:black">
			<tr>
    <th style="text-align: center; font-family:USSR STENCIL;">OWNERNAME</th> 
    <th style="text-align: center; font-family:USSR STENCIL;">CATEGORY</th>
    <th style="text-align: center; font-family:USSR STENCIL;">KEY</th>
    <th style="text-align: center; font-family:USSR STENCIL;">STATUS</th>
	
	</tr>	
	<%-- <%
		  
 String name="";
 String caty="";

   
	Connection con=null;

con=Dbcon.CreateConnection();
PreparedStatement ps1=con.prepareStatement("SELECT * FROM `blockchain`.`request`");
	

	ResultSet rs=ps1.executeQuery();

	while(rs.next()){
		
		name=rs.getString(1);
		caty=rs.getString(2);
	
	
	%> --%>
	<tr>
		<td style="font-family:Philosopher; text-align: center; color:red;"><%=oname%></td>
		<td style="font-family:Philosopher; text-align: center; color:red;"><%=cate%></td>

<td style="font-family:Times new roman; text-align: center; color:red;"><input type="text" value="<%=Secretkey%>"></td>

<td align="left"><a href="Keygenerate?ownername=<%=oname%>&&skey=<%=Secretkey%>&&caty=<%=cate%>"><button>Send key to owner</button></a></td>

		</tr>
		
<%-- 	<%} %>  --%>
</table>	
</body>
</html>