<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
   <%
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pwd", request.getParameter("pwd"));
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:mysql://localhost:3306/waap";
	String dbUser = "root";
	String dbPWD = "tiger";
	
	request.setCharacterEncoding("utf-8");
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
<%
	try {
		Class.forname("com.mysql.jdbc.Driver");
		
		conn = DriverManager.getConnection(dbURL, dbUser, dbPWD);
		stmt = conn.prepareStatement("SELECT * FROM user WHERE USER_ID = ?");
		stmt.setId(1, id);
		
		rs = stmt.executeQuery();
		
		
	} catch() {
		
	}
%>
<form action="index.jsp" method="post" class="login">
    <h1 class="login-title">Welcome!</h1>
    <h3>Welcome to the RANFOO!</h3>
    <h3>Your ID is: <%=(String)session.getAttribute("id") %></h3>
    <input type="submit" value="Go Back to Home" class="login-button">
    <a href="SessionLogout.jsp">Logout</a>
  </form>

</body>
</html>