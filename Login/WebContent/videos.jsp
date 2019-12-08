<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Videos page</title>
</head>
<body bgcolor="cyan">

	<%
	
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");		//HTTP 1.1
	
		response.setHeader("Pragma","no-cache");		//HTTP 1.0
		
		response.setHeader("Expires","0");		//Proxies
		
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>
	<div align="center">
	<h1>Videos </h1>
	<hr>
	<form action="Logout" method="post">
		<br>
		<input type="submit" value="logout">
	
	</form>
	</div>
</body>
</html>