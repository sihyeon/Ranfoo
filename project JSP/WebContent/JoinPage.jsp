<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Join page</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/join.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
  <style type="text/css">
  </style>
</head>
<body>

  <div class="container">
		<div id="header" class="ribbon" >
             <h1><a>Are you Join this Station?</a></h1>
		  <form class="form-vertical" method="post">
			<fieldset>
				<div id="legend">
					You can Join this Station in any time.
				</div>
				<div class ="form-vertical">
				<label class="col-lg-12 control-label">Join Station : 
				</label>
				</div>
				<div class = "col-lg-12">
    		<ul>
      	<li>12:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;13:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>14:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;15:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>16:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;17:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>18:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;19:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>20:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;21:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>22:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;23:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>24:00  &nbsp;&nbsp;인원:  0명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
		   <div class="btn">
		    <a href="index.html" class="Button">HOME</a>
		    </div>
		    </ul>
				</div>
				</fieldset>
		  </form>
    </div>
  </div>
</body>
<script type="text/javascript">
		function receive() {
			// Ajax로 마지막 받은 번호 이후의 메시지를 json으로 받음.
	
			$.get('StationServlet', {

			}, function(data) {
				// 전달받은 JSON을 파싱/처리
				$(data.msgs).each(
						function(i, item) {
							// 각 메시지를 해당위치에 추가
							$(".col-lg-3 control-label").append(item.station + "역  ");
						});
			});
		}
		$(function() {
			$(".mybutton").click(function() {
				
			});
		});
	</script>
</html>

