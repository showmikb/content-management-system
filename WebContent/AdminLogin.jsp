<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head     >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    
   <script language="javascript" src="d.js"></script>
   
   
</head>
<body  onload="fillCategory();">

<div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">
                        <img src="assets/img/logo.png" />

                    </a>
                    
                </div>
              
                <span class="logout-spn" >
                  <a href="Logout.jsp" style="color:#fff;"><img src="logout.jpg" height=30 width=30 style="position:absolute;right:3%;top:25%"></a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                
                
                <%
                             String admincheck2=(String)session.getAttribute("admin");
                             if(admincheck2.equals("1")){
                            	%>     <li class="active-link">
                        <a href="Unlock.jsp" ><i class="fa fa-desktop "></i>Unlock locked users <!-- <span class="badge">Included</span> --></a>
                    </li>

					<li class="active-link">
                        <a href="AdminLogin.jsp" ><i class="fa fa-desktop "></i>ADD NEW LG <!-- <span class="badge">Included</span> --></a>
                    </li><% 
                             }
                              %>
        

                    

                   
                    <li class="active-link">
                        <a href="modulemang.jsp" ><i class="fa fa-desktop "></i>MODULE DETAILS <!-- <span class="badge">Included</span> --></a>
                    </li>
                    <li class="active-link">
                        <a href="reporting.jsp" ><i class="fa fa-desktop "></i>DASHBOARD <!-- <span class="badge">Included</span> --></a>
                    </li>
                   <!--  <li>
                        <a href="blank.html"><i class="fa fa-edit "></i>Blank Page  <span class="badge">Included</span></a>
                    </li>


                    <li>
                        <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o"></i>My Link Two</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                    </li>
                     <li>
                        <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                    </li> -->
                    
                </ul>
                            </div>

        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong><%String username=request.getParameter("name");  
                           out.print("Welcome  " +username); 
                             String admincheck=(String)session.getAttribute("admin");
                             if(admincheck.equals("1")){
                            	
                             }
                             else if (admincheck.equals("2")){
                            
                             }
                             else {
                            	 response.sendRedirect("index.jsp");
                             } 
                             
                             
                             
                             %> </strong> <!-- You Have No pending Task For Today. -->
                        </div>
                       
                    </div>
                    </div>
                  <!-- /. ROW  --> 
                <!--   <form name="proDetails" action="proController" method="post"> -->
            <form name="drop_list" action="<%=request.getContextPath() %>/Loginc" method="post" onsubmit="return validateForm()">
		<table align="center" border="2" cellpadding="2" cellspacing="2" >
		
	
			<tr>
				<td>LOCATION:</td>
				<td><SELECT  NAME="Location"/REQUIRED >
<Option value="">--Select--</option>
</SELECT> </td>
			</tr>
			<tr>
				<td>BATCH No: </td>
				<td>
				<INPUT TYPE="TEXT" name="batch"/REQUIRED></td>
				
				
				
				<!-- <input type="text"  name="batch" id="proId" required 
					oninvalid="this.setCustomValidity('Please Enter batch no')"
					oninput="this.setCustomValidity('')" size="30"> --></td>
			</tr>
			<tr>
				<td>LG No:</td>
				<td>
				<input type="text" name="lg"/REQUIRED>
				<!-- <input type="text" name="lg" id="proName" required
					oninvalid="this.setCustomValidity('Please Enter LG no')"
					oninput="this.setCustomValidity('')" size="30"> --></td>
			</tr>

			<tr>
			
			
<!-- <form id="frm1" action="form_action.asp" method="post"> -->
 <td> START DATE</td><td> <input type="date" name="txtbox_1" id="txtbox_1" /REQUIRED ></td>
 </tr><br>
 
  <tr> <TD> NO OF DAYS</TD><TD>  <input type="number" name="txtbox_2" id="txtbox_2" /REQUIRED></TD></tr><br><br>
<TR> <TD> END DATE </TD><TD><input type="text"  id="txtbox_3" name="txtbox_3" value=""/ REQUIRED></TD><td><input type="button" value="calculate end date" onclick="test()"></td></tr>
  






<!-- <button onclick="test()">Try it</button>

<p id="demo"></p> -->
<script>
function test() {
	var date1 = new Date(txtbox_1.value);
	var duration = new Number(txtbox_2.value);
	var dd = duration / 7;
	var mm = dd * 2+1;
	var yy = mm + duration;
	
	
	var next_date = new Date(date1.getTime() + (yy * 86400000));
	var finaldate = next_date.toLocaleDateString();
	txtbox_3.value = finaldate;
	
}

/* function test(){
var date1 = new Date(txtbox_1.value);
var date2 = new Date(txtbox_2.value);

/* var diff = (date2 - date1)/1000;
var diff = Math.abs(Math.floor(diff));

var days = Math.floor(diff/(24*60*60));
var leftSec = diff - days * 24*60*60;

var hrs = Math.floor(leftSec/(60*60));
var leftSec = leftSec - hrs * 60*60;

var min = Math.floor(leftSec/(60));
var leftSec = leftSec - min * 60; */

/* 	var iWeeks, iDateDiff, iAdjust = 0, finaldate = 0 ;

    if (date2 < date1 ) return -1; // error code if dates transposed
    var iWeekday1 = date1.getDay(); // day of week
    var iWeekday2 = date2.getDay();
    iWeekday1 = (iWeekday1 == 0) ? 7 : iWeekday1; // change Sunday from 0 to 7
    iWeekday2 = (iWeekday2 == 0) ? 7 : iWeekday2;
    if ((iWeekday1 > 5) && (iWeekday2 > 5)) iAdjust = 1; // adjustment if both days on weekend
    iWeekday1 = (iWeekday1 > 5) ? 5 : iWeekday1; // only count weekdays
    iWeekday2 = (iWeekday2 > 5) ? 5 : iWeekday2;

    // calculate differnece in weeks (1000mS * 60sec * 60min * 24hrs * 7 days = 604800000)
    iWeeks = Math.floor((date2.getTime() - date1.getTime()) / 604800000)

    if (iWeekday1 <= iWeekday2) {
      iDateDiff = (iWeeks * 5) + (iWeekday2 - iWeekday1)
    } else {
      iDateDiff = ((iWeeks + 1) * 5) - (iWeekday1 - iWeekday2)
    }

    iDateDiff -= iAdjust // take into account both days on weekend

    finaldate = (iDateDiff + 1); // add 1 because dates are inclusive

txtbox_3.value = finaldate;
    } */ 
</script>
				<!-- <td>Start Date:</td>
				<td>
				<input type="date" name="startdate" required/>
				
				<input type="date" name="startdate" id="proPrice" required
					oninvalid="this.setCustomValidity('Please Enter Start Date')"
					oninput="this.setCustomValidity('')" size="20"></td>

				<tr>
				<td>No. of working days:</td>
				<td>
				<input type="text" name="noofdays" required/>
				
				
				<input type="text" name="noofdays" id="proQty" required
					oninvalid="this.setCustomValidity('Please Enter Product Quantity')"
					oninput="this.setCustomValidity('')" size="10"></td>
			</tr>
						<tr>
				<td>End Date:</td>
				<td>
				<input  type="date" name="enddate"  required/>
				
				
				<input type="date" name="enddate" id="proQty" required
					oninvalid="this.setCustomValidity('Please Enter Start Date')"
					oninput="this.setCustomValidity('')" size="20"></td>
			</tr> -->
			<tr>
			
			 
			<td> <button onclick="test()">save</button>
                                 <p id="demo"></p></td>
			
				<!-- <td><input type="submit" value="Add"></td> -->
				<td><input type="reset" value="Reset"></td>
			</tr>
		</table>
		<input type="hidden" name="action" value="alog">
	</form>
	
                            <%-- <div class="row text-center pad-top">
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="upload.jsp" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Upload holiday file</h4>
                      </a>
                      </div>
                     
                     
                  </div> 
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="addlocation.jsp" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Add Location</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="addnewsubject.jsp" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>Add Subject</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="<%=request.getContextPath()%>/UserLocation?action=getfacultysubject" >
 <i class="fa fa-users fa-5x"></i>
                      <h4>Add Faculty</h4>
                      </a>
                      </div>
                     
                     
                  </div> --%>
                  <!-- <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-key fa-5x"></i>
                      <h4>Admin </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>
                     
                     
                  </div>
              </div>
                 /. ROW  
                <div class="row text-center pad-top">
                 
                 <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="addnewsubject.jsp" >
 <i class="fa fa-clipboard fa-5x"></i>
                      <h4>All Docs</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-gear fa-5x"></i>
                      <h4>Settings</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-wechat fa-5x"></i>
                      <h4>Live Talk</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-bell-o fa-5x"></i>
                      <h4>Notifications </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-rocket fa-5x"></i>
                      <h4>Launch</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-user fa-5x"></i>
                      <h4>Register User</h4>
                      </a>
                      </div>
                     
                     
                  </div> 
              </div>   
                  /. ROW     
                 <div class="row text-center pad-top">
                   
                 
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>New Issues</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-users fa-5x"></i>
                      <h4>See Users</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-key fa-5x"></i>
                      <h4>Admin </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="#" >
 <i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4>
                      </a>
                      </div>
                     
                     
                  </div>
              </div>
                 /. ROW   
                 <div class="row text-center pad-top">
                 <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-rocket fa-5x"></i>
                      <h4>Launch</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                 <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-clipboard fa-5x"></i>
                      <h4>All Docs</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-gear fa-5x"></i>
                      <h4>Settings</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-wechat fa-5x"></i>
                      <h4>Live Talk</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-bell-o fa-5x"></i>
                      <h4>Notifications </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  
                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-user fa-5x"></i>
                      <h4>Register User</h4>
                      </a>
                      </div>
                     
                     
                  </div> 
              </div>   
                  /. ROW   
                <div class="row text-center pad-top">
                   
                 
                  
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-lightbulb-o fa-5x"></i>
                      <h4>New Issues</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-users fa-5x"></i>
                      <h4>See Users</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-key fa-5x"></i>
                      <h4>Admin </h4>
                      </a>
                      </div>
                     
                     
                  </div>
                  <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-comments-o fa-5x"></i>
                      <h4>Support</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                     <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-circle-o-notch fa-5x"></i>
                      <h4>Check Data</h4>
                      </a>
                      </div>
                     
                     
                  </div>
                    <div class="col-lg-2 col-md-2 col-sm-2 col-xs-6">
                      <div class="div-square">
                           <a href="blank.html" >
 <i class="fa fa-envelope-o fa-5x"></i>
                      <h4>Mail Box</h4>
                      </a>
                      </div>
                     
                     
                  </div> -->
              
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
    <div class="footer">
      
    
            <div class="row">
                <div class="col-lg-12" >
                    &copy;Copyright@AO Team | Design by: AO Team 
                </div>
            </div>
        </div>
          

     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   

</body>
</html>