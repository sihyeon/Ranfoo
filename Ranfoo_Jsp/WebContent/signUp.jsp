<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" import="java.sql.*" 
    import="org.apache.commons.lang3.StringUtils"%>
    
<%
	String errorMsg = null;
	String actionURL = null;
	
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
	
	int id=0;
	try {
		id = Integer.parseInt(request.getParameter("id"));
	} catch (Exception e) {}
	
	if (id>0) {
		actionURL="index.jsp";
	%>
		alert("이미 있는 ID 입니다.");
	<%
	} else {
		actionURL="register.jsp";
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
<form action="<%=actionURL %>" class="login">
    <h1 class="login-title">Quick Sign up</h1>
    <input type="text" name="name" class="login-input" placeholder="Name" autofocus>
    <input type="text" name="userid" class="login-input" placeholder="ID" >
    <input type="password" name="pwd" class="login-input" placeholder="Password">
    <input type="password" name="pwdCheck" class="login-input" placeholder="Password Check">
    <input type="text" name="birth" class="login-input" placeholder="Birth Day: yyyy-mm-dd">
    <input type="submit" value="Sign up" class="login-button">
</form>
