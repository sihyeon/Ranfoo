<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
         <link rel="stylesheet" type="text/css" href="css/loginstyle.css" />
</head>
<body>

<form action="SessionLogin.jsp" method="post" class="login">
    <h1 class="login-title">Welcome to the Ranfoo</h1>
    <input type="text" name="id" class="login-input" placeholder="Email Adress" autofocus>
    <input type="password" name="pwd" class="login-input" placeholder="Password">
    <input type="submit" value="Lets Go" class="login-button">
  <p class="login-lost"><a href="signUp.jsp">아직 RANFOO의 회원이 아니신가요?</a></p>
  </form>

	
</body>
</html>
