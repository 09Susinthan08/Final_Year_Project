<!DOCTYPE html>
<%@page import="dbconn.Dbcon"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.HttpSession" %>
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
   color:yellow;
	text-align:center;
	font-size:21px;
	margin-top: 115px;
    font-size: 34px;
} 
 
</style>
</head>
 <body>
   
	<%
	 
	  String fileid=request.getParameter("fname");
	  System.out.println("fileid>>>>>>>>>>"+fileid);
	  
	  
	  String content=request.getParameter("stat");
	  System.out.println("content======"+content);
	  
	  %>  
<%
     Connection con=Dbcon.CreateConnection();
     PreparedStatement ps=con.prepareStatement("DELETE blockchain.fileupload  SET Status='"+content+"' where filename='"+fileid+"'");
       ps.executeUpdate();

    out.println("FILE REJECTED SUCCESSFULLY...!!!");	
         	
%>
<BR><br>
<a href="Center.jsp" style=color:red;>LOGOUT</a>
 </body>
</html>

  