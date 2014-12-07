<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.sql.*" import="java.util.*"
	import="org.apache.commons.lang3.StringUtils"
%>
<%
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:mysql://localhost:3306/waap";
	String dbUser = "root";
	String dbPWD = "tiger";
	
	request.setCharacterEncoding("utf-8");
	String userid=request.getParameter("USER_ID");
	String pwd=request.getParameter("USER_PWD");
	String name=request.getParameter("USER_NAME");
	String birth=request.getParameter("USER_BIRTH");
	
	List<String> errorMsg = new ArrayList<String>();
	
	int result=0;
	
	if(userid==null || userid.trim().length()==0) {
		errorMsg.add("ID를 입력해주세요.");
	}
	if(pwd==null || pwd.length()==0) {
		errorMsg.add("비밀번호를 입력하세요.");
	}
	if(name==null || name.trim().length()==0) {
		errorMsg.add("이름을 입력해주세요.");
	}
	if(errorMsg.size()==0) {
		try{
			conn = DriverManager.getConnection(dbURL, dbUser, dbPWD);
			stmt = conn.prepareStatement(
					"INSERT INTO USER(USER_ID, USER_PWD, USER_NAME, USER_BIRTH) " +
					"VALUES(?, ?, ?, ?)"
					);
			stmt.setString(1, userid);
			stmt.setString(2, pwd);
			stmt.setString(3, name);
			stmt.setString(4, birth);
			
			result = stmt.executeUpdate();
			if(result != 1) {
				errorMsg.add("등록에 실패했습니다.");
			}
		} catch (SQLException e) {
			errorMsg.add("SQL에러: " + e.getMessage());
		} finally {
			if (rs!=null) try{rs.close();} catch(SQLException e) {}
			if (stmt!=null) try{stmt.close();} catch(SQLException e) {}
			if (conn!=null) try{conn.close();} catch(SQLException e) {}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/loginstyle.css" />
</head>

<form action="index.jsp" method="post" class="login">
<%	if(errorMsg.size() > 0) { %>
	<h1>Sorry...</h1>
	<h3>There is some problem</h3>
	<h4>Errors:</h4>
	<ul>
		<%for(String msg: errorMsg) { %>
			<li><%=msg %></li>
		<%} %>
	</ul>
	<a href="index.jsp">Go back to Home</a>
<%	} else if(result == 1) { %>
    <h1 class="login-title">Welcome!</h1>
    <h3>Welcome to the RANFOO!</h3>
    <h3>Thanks for join us</h3>
    <a href="index.jsp">Go back to Home</a>
    <a href="loginpage.jsp">Login</a>
<%	} %>
  </form>

</html>