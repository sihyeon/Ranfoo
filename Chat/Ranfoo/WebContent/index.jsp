<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%> <%@ page import="chat.*,java.util.*,java.net.*,java.io.*" %>
<!DOCTYPE html>
<html>
	<head>
        <meta charset="UTF-8">
        <title>chat</title>
        <script src="js/jquery-1.8.2.min.js"></script>
    </head>
	<body>
		int div = ChatUtil.str2int(request.getParameter("div"));
		switch(div){
		case 3000:
			chatServerNum = ChatUtil.null2void(request.getParameter("chatServerNum"));
			chatServer = (ChatServer)chatServerStorage.get(chatServerNum);

			message = new Message(3010, ChatUtil.getIndex(), ipAddr, alias, msg);
			chatServer.addMsg(message);

			returnMessage(message, response);
			break;
			
		//client에서 message를 주기적으로 요청
		case 4000:
			chatServerNum = ChatUtil.null2void(request.getParameter("chatServerNum"));
			chatServer = (ChatServer)chatServerStorage.get(chatServerNum);
			message = chatServer.getMsg(index);
			returnMessage(message, response);			
			break;
		default:
			returnMessage(null, response);
			break;
		}
	}
	</body>
</html>