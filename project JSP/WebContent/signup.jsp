<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="share/header.jsp">
		<jsp:param name="current" value="signup" />
	</jsp:include>

	<div class="container">
		<div>
			<form class="form-horizontal" action="user" method="POST">
				<fieldset>
					<legend class="legend">회원가입</legend>
					<c:if test="${method == 'PUT'}">
						<input type="hidden" name="id" value="${user.id }" />
						<input type="hidden" name="_method" value="PUT" />
					</c:if>
					
					<div class="control-group">
						<label class="control-label" for="userid">ID</label>
						<div class="controls">
							<input type="text" name="userid" value="${board.userid}">
						</div>
					</div>
					
					<div class="control-group">
							<label class="control-label" for="pwd">Password</label>
							<div class="controls">
								<input type="password" name="pwd" value="${board.pwd}">
							</div>
					</div>
					
					<div class="control-group">
							<label class="control-label" for="pwd_confirm">Password 확인</label>
							<div class="controls">
								<input type="password" name="pwd_confirm" value="${board.pwd}">
							</div>
					</div>

					<div class="control-group">
						<label class="control-label" for="name">이름</label>
						<div class="controls">
							<input type="text" name="name" value="${user.name}">
						</div>
					</div>

					<div class="form-actions">
						<a href="user" class="btn">목록으로</a>
						<c:choose>
							<c:when test="${method=='POST'}">
								<input type="submit" class="btn btn-primary" value="가입">
							</c:when>
							<c:otherwise>
								<input type="submit" class="btn btn-primary" value="수정">
							</c:otherwise>
						</c:choose>
					</div>
				</fieldset>
			</form>
		</div>
	</div>
</body>
</html>