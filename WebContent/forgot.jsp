<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <title>Reset Password</title>
   
        <link rel="stylesheet" href="css/style.css">
        <script src="js/gen_validatorv4.js" type="text/javascript"></script>
</head>
<body style="background-image:url(fms1.jpg);background-repeat:no-repeat;background-size:100% 195%">
   
            <%HttpSession session1=request.getSession();
String s=(String)session1.getAttribute("invalidupkey");
%>
<div class="container">
	<section id="content">
<form action="<%=request.getContextPath()%>/Loginc" method="post">  


<input type="hidden" name="action" value="forgot"/>
<h1>Retrieve Password</h1>
			<div>
				<input type="text" placeholder="Username" required="" id="name" name="name" value=""/>
			</div>
			<div>
			<select name="secretq" id="select" >
			  <option value="pet">What is your favourite pet ?</option>
			  <option value="movie">What is your favourite movie?</option>
			  <option value="phone">What is your first phone number?</option>
			  <option value="player">Who is your favourite player?</option>
			  <option value="0" selected>--Select your Secret question--</option>
			</select>
			</div>
			<div>
				<input type="text" placeholder="Your Answer" required="" id="secretans" name="answer" value=""/>
			</div>
			
			<div>
				<input type="submit" value="Reset" />
			
				<!--  <a href="register.jsp">Register  Here</a> -->
				 <!-- <a href="#">Lost your password?</a> -->
			</div>
			
</form>  
</body>
</html>