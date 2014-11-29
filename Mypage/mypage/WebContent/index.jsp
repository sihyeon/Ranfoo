<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage Test</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/base.css" rel="stylesheet">
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
	<body>
<div class="user">
	<h2>회원 정보</h2>
	<ul id="uData">
		<li>이름: 홍길동</li>
		<li>나이: </li>
		<div class= "button-group">
		<button type ="button" class="btn btn-default dropdown-toggle" 
		data-toggle="dropdown" id="dropdownMenu1" aria-expanded="true">Check<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
		<li role="presentation"><a role="menuitem" tabindex="-1" href="#">10대</a></li>
		<li><a role="presentation"><a role="menuitem" tabindex="-1" href="#">20대</a></li>
		<li><a role="presentation"><a role="menuitem" tabindex="-1" href="#">30대</a></li>
		<li><a role="presentation"><a role="menuitem" tabindex="-1" href="#">40대</a></li>
		<li><a role="presentation"><a role="menuitem" tabindex="-1" href="#">50대</a></li>
		<li><a role="presentation"><a role="menuitem" tabindex="-1" href="#">60대</a></li>
		</ul>
		</div>
		<li>생일:</li>
		<div class="button-group"><button type ="button" class="btn btn-default dropdown-toggle" 
		data-toggle="dropdown">Check<span class="caret"></span>
		</button>
		<ul class="dropdown-menu" role="menu">
		<li><a href="#">1월</a></li>		
		<li><a href="#">2월</a></li>		
		<li><a href="#">3월</a></li>		
		<li><a href="#">4월</a></li>		
		<li><a href="#">5월</a></li>		
		<li><a href="#">6월</a></li>		
		<li><a href="#">7월</a></li>		
		<li><a href="#">8월</a></li>		
		<li><a href="#">9월</a></li>		
		<li><a href="#">10월</a></li>		
		<li><a href="#">11월</a></li>		
		<li><a href="#">12월</a></li>			
		</ul>
		</div>
	</ul>
</div>
<br>
<div class="introduce">
  <h2>자기 소개</h2>
  <textarea rows="10" cols="100%"></textarea>
  <button type="button" class="btn btn-save default">save</button>
</div>
<br>
<div class="join">
  <h2>신청 현황</h2>
  <ol>
    <li>신청지: 강남역</li>
    <li>시간: 15:00</li>
    <li>신청인원: 15명</li>
    <button type="button" class="btn btn-chat default">Chat!</button>
  </ol>
  <ol>
    <li>신청지: 범계역</li>
    <li>시간: 17:00</li>
    <li>신청인원: 1명</li>
    <button type="button" class="btn btn-chat default">Chat!</a>
  </ol>
</div>
</body>
</html>