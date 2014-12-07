<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.sql.*" 
    import="org.apache.commons.lang3.StringUtils"%>
    
<%
	String errorMsg = null;
	
	Connection conn = null;
	PreparedStatement stmt = null;
	ResultSet rs = null;
	
	String dbURL = "jdbc:mysql://localhost:3306/waap";
	String dbUser = "root";
	String dbPWD = "tiger";
	
	request.setCharacterEncoding("utf-8");
	
	String userid = "";
	String name = "";
	String pwd = "";
	String birth = "";
	
	List<String> errorMsg = new ArrayList<String>();
	
	int id=0;
	try {
		id = Integer.parseInt(request.getParameter("id"));
	} catch (Exception e) {}
	
	if (id>0) { %>
		alert("이미 있는 ID 입니다.");
	<%
	} else {
		userid=request.getParameter("USER_ID");
		pwd=request.getParameter("USER_PWD");
		name=request.getParameter("USER_NAME");
		birth=request.getParameter("USER_BIRTH");
		
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
				if (rs!=null) try{rs.close();} catch(SQLExeption e) {}
				if (stmt!=null) try{stmt.close();} catch(SQLExeption e) {}
				if (conn!=null) try{conn.close();} catch(SQLExeption e) {}
			}
		}
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
<form class="login">
    <h1 class="login-title">Quick Sign up</h1>
    <input type="text" class="login-input" placeholder="Name" autofocus>
    <input type="text" class="login-input" placeholder="Email Adress" >
    <input type="password" class="login-input" placeholder="Password">
    <input type="password" class="login-input" placeholder="Password Check">
    <input type="text" class="login-input" placeholder="Birth Day: yyyy-mm-dd">
    <input type="submit" value="Sign up" class="login-button">
</form>
