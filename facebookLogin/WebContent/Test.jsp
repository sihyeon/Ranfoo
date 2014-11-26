<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Facebook Login Oauth</title>
<script src="/resource/jquery/jquery-1.11.0.js"></script>
<script type = "text/javascript">

$(document).ready(function(){
	$("#login").click(function(){
		$(location).attr('href',"Invoking");
	});
});
</script>
</head>
<body>
	<button id = "login">Facebook Login</button>
</body>
</html>