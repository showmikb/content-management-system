<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
    <title>Registration</title>
   
        <link rel="stylesheet" href="css/style.css">
        <script src="js/gen_validatorv4.js" type="text/javascript"></script>
</head>
  <body style="background-image:url(fms1.jpg);background-repeat:no-repeat;background-size:100% 152%">
            <%HttpSession session1=request.getSession();
String s=(String)session1.getAttribute("invalidupkey");
%>
<div class="container">
	<section id="content">
		<form id="myform" action="Loginc" method="post">
		<input type="hidden" name="action" value="register">
			<h1>Register Form</h1>
			<div>
				<input type="text" placeholder="Username" required="" id="name" name="name" value=""/>
			</div>
			<div>
				<input type="password" placeholder="Password" required="" id="password" name="password" value=""/>
			</div>
			<div>
				<input type="password" placeholder="Confirm password" required="" id="password" name="cpassword" value=""/>
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
				<input type="text" placeholder="Secret answer" required="" id="sanswer" name="sanswer" value=""/>
			</div>
			
			<div style=" color:red">
			<%if(s!=null)
				{%><%=s %>
				<% }%>
			</div>
			<%session1.setAttribute("invalidupkey",null); %>
			<div>
				<input type="submit" value="Register" onclick="return Validate()" />
			
				<!--  <a href="register.jsp">Register  Here</a> -->
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
 
 function Validate() {
	 
	 var username = document.getElementById("name").value;
     var password = document.getElementById("password").value;
     var confirmPassword = document.getElementsByName("cpassword")[0].value;
     if (password != confirmPassword) {
         alert("Passwords do not match.");
         return false;
     }
     
     re = /^\w+$/;
     if(!re.test(username)) {
       alert("Error: Username must contain only letters, numbers and underscores!");
       
       return false;
     }
     
     //start
     
     
      if(password == username) {
        alert("Error: Password must be different from Username!");
        
        return false;
      }
      re = /[0-9]/;
      if(!re.test(password)) {
        alert("Error: password must contain at least one number (0-9)!");
        
        return false;
      }
      re = /[a-z]/;
      if(!re.test(password)) {
        alert("Error: password must contain at least one lowercase letter (a-z)!");
        
        return false;
      }
      re = /[A-Z]/;
      if(!re.test(password)) {
        alert("Error: password must contain at least one uppercase letter (A-Z)!");
        
        return false;
      }
     
     
     
     //end
     
     
     return true;
 }
 
 
 
 
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