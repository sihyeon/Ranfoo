<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
   <%
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pwd", request.getParameter("pwd"));
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="UTF-8">
    <head>
		<meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" type="text/css" href="css/loginstyle.css" />
    </head>
<body>

<form action="Index.jsp" method="post" class="login">
    <h1 class="login-title">Welcome!</h1>
    <h3>Welcome to the RANFOO!</h3>
    <h3>Your ID is: <%=(String)session.getAttribute("id") %></h3>
    <input type="submit" value="Go Back to Home" class="login-button">
    <a href="SessionLogout.jsp">Logout</a>
  </form>
  
	<h3>LOGINED!!!!!</h3>
	<h3>Login ID: <%=(String)session.getAttribute("id") %></h3>
	<a href="SessionLogout.jsp">logout</a>
	<a href="Index.jsp">GO TO HOME</a>
</body>
</html>