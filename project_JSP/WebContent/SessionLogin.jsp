<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   <%
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pwd", request.getParameter("pwd"));
   %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h3>LOGINED!!!!!</h3>
	<h3>Login ID: <%=(String)session.getAttribute("id") %></h3>
	<a href="SessionLogout.jsp">logout</a>
	<a href="Index.jsp">GO TO HOME</a>
</body>
</html>