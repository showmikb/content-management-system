<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
</head>
<body>

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
                  <a href="index.jsp" style="color:#fff;"><img src="logout.jpg" height=30 width=30 style="position:absolute;right:3%;top:25%"></a>  

                </span>
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                 

					<li class="active-link">
                        <a href="AdminLogin.jsp" ><i class="fa fa-desktop "></i>HOME <!-- <span class="badge">Included</span> --></a>
                    </li>


                    <li class="active-link">
                        <a href="<%=request.getContextPath()%>/ViewController?source=viewforgroup" ><i class="fa fa-desktop "></i>VIEW FOR GROUP <!-- <span class="badge">Included</span> --></a>
                    </li>
                   

                    <li>
                        <a href="<%=request.getContextPath()%>/UserLocation?action=addgroup"><i class="fa fa-table "></i>ADD NEW GROUP  <!-- <span class="badge">Included</span> --></a>
                    </li>
                    <li>
                        <a href="<%=request.getContextPath()%>/ViewController?source=viewallfac"><i class="fa fa-table "></i>View Faculty  <!-- <span class="badge">Included</span> --></a>
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
                    <!-- <div class="col-lg-12">
                     <h2>ADMIN DASHBOARD</h2>   
                    </div> -->
                </div>              
                 <!-- /. ROW  -->
              
                <div class="row">
                    <div class="col-lg-12 ">
                        <div class="alert alert-info">
                             <strong>Welcome Admin ! </strong> <!-- You Have No pending Task For Today. -->
                        </div>
                       
                    </div>
                    </div>
                    <img src= "images.jpg" alt="images.jpg" style=" position:absolute;top:25%;left:30%;bottom:80%;height:10%; width:10%"></img>
                  <!-- /. ROW  --> 
                           <%--  <div class="row text-center pad-top">
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
              <a Style="position:absolute;left:55%;top:100%;bottom:0%;color:#0e7cff" href="<%=request.getContextPath()%>/AdminLogin.jsp"><h4>Go to home</h4></a>
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