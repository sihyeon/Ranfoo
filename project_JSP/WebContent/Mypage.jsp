<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>My page</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/mypage.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="js/bootstrap.min.js"></script>
</head>
<body>
  <div class="container">
	<%	if (request.getMethod() == "POST") { %>
		 <div class="well">
		  <ul>
		    <li>이름 : <%=request.getParameter("name")%></li>
		    <li>비밀번호 : <%=request.getParameter("pwd")%></li>
		    <li>E-mail : <%=request.getParameter("email")%></li>
		    <li>나이대 : <%=request.getParameter("age")%></li>
		    <li>성별 : <%=request.getParameter("gender")%></li>
		    <li>신청한 역 내역 :
		      <ul>
		      <% 
		      if (request.getParameter("favorites") != null) {
		        for(String name: request.getParameterValues("favorites")) {
		          out.println("<li>" + name + "</li>");
		        }
		      }
		      %>
		      </ul> 
		    </li>
		    <li>자기 소개 : <%=request.getParameter("memo")%></li>
	    </ul>
		 </div>
  <%} else { %>
    <div>
			<form class="form-horizontal">
  <fieldset>
    <legend>Edit your information</legend>
    <div class="form-group">
      <label for="inputEmail" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="inputEmail" placeholder="Name">
      </div>
    </div>
    
     <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
       <div class="col-lg-10">
        <input type="password" class="form-control" id="inputPassword" placeholder="Password">
        </div>
    </div><!-- form-group -->
    
    <div class="form-group">
      <label class="col-lg-2 control-label">Gender</label>
      <div class="col-lg-10">
        <div class="checkbox">
          <label>
            <input type="checkbox" value="M" checked=""> Male
          </label>
          <label>
          	<input type = "checkbox" value="F">Female
          </label>
        </div>
      </div>
    </div><!-- form-group -->
     
    <div class="form-group">
      <label class="col-lg-2 control-label">Ages</label>
      <div class="col-lg-10">
        <div class="radio">
          <label>
          <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked="">
            10대
          </label>
        </div>
        
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
            20대
          </label>
        </div>
        
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios3" value="option3">
            30대
          </label>
        </div>
        
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios4" value="option4">
            40대
          </label>
        </div>
        
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios5" value="option5">
            50대
          </label>
        </div>
        
        <div class="radio">
          <label>
            <input type="radio" name="optionsRadios" id="optionsRadios6" value="option6">
            60대
          </label>
        </div>
      </div>
    </div>
    
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Introduce yourself</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="textArea"></textarea>
        <span class="help-block">ex ) 당신이 좋아하는 음식의 종류</span>
      </div>
    </div>
    
    <div class="form-group">
      <label for="select" class="col-lg-2 control-label">Joined Station</label>
      <div class="col-lg-10">
     
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
  </fieldset>
</form>
	<h3>LOGINED!!!!!</h3>
	<h3>Login ID: <%=(String)session.getAttribute("id") %></h3>
    </div>
	<% } %>
  </div>
</body>
</html>

