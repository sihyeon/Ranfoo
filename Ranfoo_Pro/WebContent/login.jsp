<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="share/header.jsp">
		<jsp:param name="current" value="login" />
	</jsp:include>

	<div class="container">
		<div>
			<form class="form-horizontal" action="login" method="POST">
				<fieldset>
					<legend class="legend">로그인</legend>
					
					<div class="control-group">
						<label class="control-label" for="userid">ID</label>
						<div class="controls">
							<input type="text" name="userid">
						</div>
					</div>
					
					<div class="control-group">
							<label class="control-label" for="pwd">Password</label>
							<div class="controls">
								<input type="password" name="pwd">
							</div>
					</div>

					<div class="form-actions">
						<input type="submit" class="btn btn-primary" value="로그인">
						<a href="board" class="btn">게시판으로</a>
						<a href="user" class="btn">회원목록으로</a>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>