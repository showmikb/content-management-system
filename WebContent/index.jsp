<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <title>Faculty Management System</title>
   
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <script src="js/gen_validatorv4.js" type="text/javascript"></script>
        
</head>
   <body style="background-image:url(fms1.jpg);background-repeat:no-repeat;background-size:100% 200%">
            <%HttpSession session1=request.getSession();
String s=(String)session1.getAttribute("invalidupkey");
%>

<div class="container">
	<section id="content">
		<form id="myform" action="Loginc" method="post">
		<input type="hidden" name="action" value="login">
		<h1>Faculty Management System</h1>
			<h1>Login </h1>
			<div>
				<input type="text" placeholder="Username" required="" id="name" name="name" value=""/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" id="password" name="password" value=""/>
        
          <input type="checkbox"  onchange="document.getElementById('password').type = this.checked ? 'text' : 'password'"> Show password
            
         <script>
         document.getElementById("eye").addEventListener("click", function(e){
             var pwd = document.getElementById("pwd");
             if(pwd.getAttribute("type")=="password"){
                 pwd.setAttribute("type","text");
             } else {
                 pwd.setAttribute("type","password");
             }
         });

         </script>
			</div>
			<div style=" color:red">
			<%if(s!=null)
				{%><%=s %>
				<% }%>
			</div>
			<%session1.setAttribute("invalidupkey",null); %>
			<div>
				<input type="submit" value="Log in" />
				
				 <%
	String status=(String)request.getAttribute("status");
	if(status!=null && status.equals("Invalid username and password")){
		out.println("<center><font color='red'>Error : "+status+"</font></center>");	
	}
%>
			 <a href ="forgot.jsp">Forgot Password</a>
			  <a href="Register.jsp">Register Here</a>
				 <!-- <a href="#">Lost your password?</a> -->
			</div>
		</form>
		<script  type="text/javascript">
 var frmvalidator = new Validator("myform");
 frmvalidator.addValidation("name","req","Please enter your First Name");
 frmvalidator.addValidation("name","minlen=5",
        "Min length for FirstName is 5");
 
 frmvalidator.addValidation("password","req");
 frmvalidator.addValidation("password","minlen=8");
 
 
 
 
 
 
</script>
		<!-- form -->
		<!-- <div class="button">
			<a href="#">Download source file</a>
		</div>button -->
	</section><!-- content -->
</div><!-- container -->
</body>
    
        <script src="js/index.js"></script>

</body>
</html>