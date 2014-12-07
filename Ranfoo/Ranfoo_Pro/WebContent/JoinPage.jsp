<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="station.*" %>
<%@page import="java.util.*" %>
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
				<% 
					Connection conn = null;
					PreparedStatement stmt = null;
					ResultSet rs = null;
					
					String dbUrl = "jdbc:mysql://localhost:3306/station";
					String dbUser = "id02";
					String dbPassword = "pwd02";
					
					try {
						Class.forName("com.mysql.jdbc.Driver");
						
						conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
						stmt = conn.prepareStatement("SELECT * FROM station");
						rs = stmt.executeQuery();
	
						while (rs.next()) {
				%>
				<label class="col-lg-12 control-label">Join Station : <%= rs.getString("station") %>
				</label>
				</div>
				<div class = "col-lg-12">
    		<ul>
      	<li>12:00  &nbsp;&nbsp;인원:  <%= rs.getInt("12Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;13:00  &nbsp;&nbsp;인원:  <%= rs.getInt("13Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>14:00  &nbsp;&nbsp;인원:  <%= rs.getInt("14Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;15:00  &nbsp;&nbsp;인원:  <%= rs.getInt("15Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>16:00  &nbsp;&nbsp;인원:  <%= rs.getInt("16Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;17:00  &nbsp;&nbsp;인원:  <%= rs.getInt("17Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>18:00  &nbsp;&nbsp;인원:  <%= rs.getInt("18Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;19:00  &nbsp;&nbsp;인원:  <%= rs.getInt("19Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>20:00  &nbsp;&nbsp;인원:  <%= rs.getInt("20Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;21:00  &nbsp;&nbsp;인원:  <%= rs.getInt("21Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>22:00  &nbsp;&nbsp;인원:  <%= rs.getInt("22Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a>
      	&nbsp;&nbsp;&nbsp;&nbsp;23:00  &nbsp;&nbsp;인원:  <%= rs.getInt("23Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<li>24:00  &nbsp;&nbsp;인원:  <%= rs.getInt("24Member") %>명   &nbsp;&nbsp;<a href="chat.jsp" class="myButton">Join</a></li><br/>
      	<% 
						}
					}catch (ClassNotFoundException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} finally {
						// 무슨 일이 있어도 리소스를 제대로 종료
						if (rs != null) try{rs.close();} catch(SQLException e) {}
						if (stmt != null) try{stmt.close();} catch(SQLException e) {}
						if (conn != null) try{conn.close();} catch(SQLException e) {}
					}
      	%>
		   <div class="btn">
		    <a href="index.jsp" class="Button">HOME</a>
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
	
		$.get('StationServlet', {
		},
			function(i, item) {
				$("#station").append("병점").append(item.station);
				alert("Hello");
		});
	}
</script>
</html>

