<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title></title>
	<script src="js/jquery-1.8.2.min.js"></script>
	<script src="js/json2.js"></script>
	</head>
	<body>
		<div>
			<div id="messages"></div>
			<div id="error" style="display: none"></div>
			<form id="chat_form">
				<table border="0" width="600" height="200">
				<tr height='20' align='center'>
					<td width="400">대화창</td><td width="200">대화참여자</td>
				</tr>
				<tr height="150" align="center">
					<td>
						<textarea id="chatArea" rows="10" cols="54" width="400" readonly></textarea>
					</td>
					<td>
				    	<textarea id="userList" rows='10' cols="26" width="200" readonly></textarea>
					</td>
				</tr>
				<tr height='30' align='left'>
					<td colspan='2'>
					<input type="text" id="name" size="15" value="${current_name}">
					<input type="text" id="msg" size="50">
					<input type="button" id="send" value='send'>
					<img src="images/ajax-loader.gif" style="display: none;" id="loading">
					</td>
				</tr>
				</table>
				</form>
		</div>
	</body>
	<script type="text/javascript">
		var last_id = -1; // unknown
		var timer = null;
	
		function receive() {
			// Ajax로 마지막 받은 번호 이후의 메시지를 json으로 받음.
	
			$.get('ChatServlet', {
				last : last_id
			}, function(data) {
				// 전달받은 JSON을 파싱/처리
	
				if (data.msgs.length > 0 && last_id < data.last) {
					last_id = data.last;
					$(data.msgs).each(
							function(i, item) {
								// 각 메시지를 해당위치에 추가
								 //var txt = $("textarea#chatArea").append(item.name + ":").append(item.content);
								// txt.val( txt.val() + "\n\n"); 
								$("#chatArea").append(item.name + ": ").append(item.content).append("\n");
								$("#userList").append(item.name).append("\n");
							});
	
					// 새로운 메시지가 있을 경우, 입력 폼이 보이도록 스크롤
					$('html,body').animate({
						scrollTop : $("#chat_form").offset().top
					}, 1000);
				}
			});
		}
		$(function() {
			$("#send").click(function() {
				// 이름이나 내용이 없으면 포커스를 옮기고 종료
				if ($("#name").val().length == 0) {
					alert("이름을 입력하여 주세요.");
					$("#name").focus();
					return;
				}
				if ($("#msg").val().length == 0) {
					alert("내용을 입력하여 주세요.");
					$("#msg").focus();
					return;
				}
	
				// Ajax로 글 내용 전달
				$.post('ChatServlet', {
					name : $("#name").val(),
					content : $("#msg").val()
				}, function(data) {
					if (data.indexOf("ERROR") != -1) {
						// 에러가 있으면 내용 출력
						$("#error").text(data).fadeIn();
	
					} else {
						$("#error").fadeOut();
					}
				});
	
				// 글을 쓴 후에는 메시지창의 내용을 없앰.
				$("#msg").val("");
			});
	
			// 메시지 창에서 Enter를 누르면 SEND버튼을 누르도록.
			$('#msg').keydown(function(event) {
				if (event.keyCode == 13)
					$("#send").click();
			});
	
			// Ajax 진행 중임을 표시
			$('#loading').ajaxStart(function() {
				$(this).show();
			});
			$('#loading').ajaxComplete(function() {
				$(this).hide();
			});
	
			receive();
	
			// 1초마다 새로운 메시지를 받도록 지정
			setInterval(receive, 1000);
	
		});
	</script>
</html>
