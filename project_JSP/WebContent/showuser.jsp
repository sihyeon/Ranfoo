<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"
	import="org.apache.commons.lang3.StringUtils"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${title}</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="share/header.jsp">
		<jsp:param name="current" value="${header}" />
	</jsp:include>

	<div class="container">
		<div>
			<h3>
				<c:out value="${user.name}"></c:out>
			</h3>
			<ul>
				<li>ID: <c:out value="${user.userid}" /></li>
				<li>이름: <c:out value="${user.name}" /></li>
				<c:choose>
					<c:when test="${user.level == 1}">
						<li>권한: 관리자</li>
					</c:when>
					<c:otherwise>
						<li>권한 : 일반회원</li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>

		<div class="form-actions">
			<a href="user" class="btn">목록으로</a> <a
				href="user?op=update&id=${user.id}" class="btn btn-primary">수정</a>
			<a href="#" class="btn btn-danger" data-action="delete"
				data-id="${user.id}">삭제</a>
		</div>
		<script>
	  $(function{
	    $("a[data-action='delete']").click(function() {
	      if (confirm("정말로 삭제하시겠습니까?")) {
	        location = 'user?op=delete&id=' + $(this).attr('data-id');
	      }
	      return false;
	    });
	  });
	</script>
	</div>
</body>
</html>