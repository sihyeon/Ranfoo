<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR" import="java.sql.*" import="java.util.*"
	import="org.apache.commons.lang3.StringUtils"%>
	 
   <%
	session.setAttribute("id", request.getParameter("id"));
	session.setAttribute("pwd", request.getParameter("pwd"));
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:mysql://117.17.158.70:9922/WAAP";
	String dbUser = "next9267";
	String dbPWD = "1234";
	
	String dbid = "";
	String dbpw = "";
	request.setCharacterEncoding("utf-8");
	
	int result = 0;
	List<String> errorMsg = new ArrayList();
	
	// session�� ����� id�� password�� db�� �ִ� �����Ϳ� ���ؼ� ��ġ�ϸ� result ���� 1�� ����
	try {
		conn = DriverManager.getConnection(dbURL, dbUser, dbPWD);
		// db���� id, pw�� �����´�
		stmt = conn.prepareStatement(
				"SELECT * FROM User {WHERE USER_ID = ?}"
				);
		stmt.setString(1, id);
		
		rs = stmt.executeQuery();
		
		if(rs.next()) {
			dbid = rs.getString("USER_ID");
			dbpw = rs.getString("USER_PWD");
		}
		
		if(id == dbid && pw == dbpw) {
			result = 1;
		}
	} catch (SQLException e) {
		errorMsg.add("SQL����: " + e.getMessage());
	} finally {
		if (rs!=null) try{rs.close();} catch(SQLException e) {}
		if (stmt!=null) try{stmt.close();} catch(SQLException e) {}
		if (conn!=null) try{conn.close();} catch(SQLException e) {}
	}
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

<form action="index.jsp" method="post" class="login">

<% if(result==0) { %>
    <% session.invalidate(); %>
	<h1 class="login-title">ERROR</h1>
	<h3>You got the wrong ID or PassWord.</h3>
	<h3>Please check your ACCOUNT.</h3>
    <input type="submit" value="Go Back to Home" class="login-button">
    
<% } else if(result==1) { %>
    <h1 class="login-title">Welcome!</h1>
    <h3>Welcome to the RANFOO!</h3>
    <h3>Your ID is: <%=(String)session.getAttribute("id") %></h3>
    <input type="submit" value="Go Back to Home" class="login-button">
    <a href="SessionLogout.jsp">Logout</a>
<% } %>
  </form>

</body>
</html>