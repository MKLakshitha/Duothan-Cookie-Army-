<!DOCTYPE html>
<html dir="ltr" lang="en">        
<%@page import="java.sql.*" %>
<%@page import="com.Kavindu.*"%>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Flexy lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Flexy admin lite design, Flexy admin lite dashboard bootstrap 5 dashboard template">
    <meta name="description"
        content="Flexy Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Phoenix Cab Service</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/Flexy-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../assets/images/Phoenix.svg">
    <!-- Custom CSS -->
    <link href="../assets/libs/chartist/dist/chartist.min.css" rel="stylesheet">
    <link href="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="../dist/css/style.min.css" rel="stylesheet">
      <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
<!-- help me -->

  <meta content="" name="description">
  <meta content="" name="keywords">
  <script src="https://kit.fontawesome.com/83325a7e2a.js" crossorigin="anonymous"></script>
  <!-- Favicons -->
  <link href="assets/img/Phoenix.svg" rel="icon">
  <link href="assets/img/Phoenix.svg" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Poppins:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/Template-CreditCardPayment/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/Template-CreditCardPayment/font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="assets/Template-CreditCardPayment/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="assets/Template-CreditCardPayment/bootstrap/js/bootstrap.min.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body >

   <header id="header" class="header d-flex align-items-center fixed-top">
    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
       
      <a href="index.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
       <img src="assets/img/Phoenix.svg" alt=""> 
       <h1 style ="width:300px;">Phoenix <br>Cab Service</h1>
      </a>
      <%!String role; %>
    <%


    HttpSession sessionUser = request.getSession(false);
    String user= sessionUser.getAttribute("user").toString();
  

try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/cab_management_system?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","");
			st= (Statement) con.createStatement();

		    sql ="select * from users where memberID='"+sessionUser.getAttribute("MemberID")+"'";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
			
			if(rs.getString("role").equals("Customer")){
				role="UserDashboard/html/UserDashboard.jsp";
			}
			else if(rs.getString("role").equals("Driver")){
				role="StaffDashboard/html/StaffDashboard.jsp";
			}
			else if(rs.getString("role").equals("Manager")){
				role="StaffDashboard(Grade-A)/html/StaffDashboard.jsp";

			}
			else if(rs.getString("role").equals("admin")){
				role="adminDashboard/html/adminDashboard.jsp";
			}
    %>
      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
      <nav id="navbar" class="navbar">
          <ul>
          <li><a href="../../index.jsp" >Home</a></li>
          <li><a href="../../Cabs.jsp">Cabs</a></li>

          <li><a href="<%=role %>" class="active">Dashboard</a></li>
          <li class="dropdown"><a href="../../about.jsp"><span>About Us</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
            <ul>
				<li><a href="../about.html">Phoenix Cab Service</a></li>
              <li><a href="../pricing.html">Offers</a></li>
              <li><a href="../services.html">Services</a></li>       
              <li><a href="../contact.html">Contact Us</a></li>  
              <li><a  href="../get-a-quote.html">Get a Quote</a></li>

            </ul>
          </li>            

            </ul>
                     
          </li>
          <%
			
			}
}catch(Exception e) {
	e.printStackTrace();
 }
	 


          %>
         
               <li class="dropdown" style="margin-bottom:20px;"> <a href="myAccount.jsp"><span>Hi,<%=user %></span><img  src="../assets/images/icons8-male-user-50.png" alt="" style="visibility:visible; width:35px;height:35px; margin-left:5px;  color:blue;"><i class="bi bi-chevron-down dropdown-indicator"></i></a>
               <a href="#"> </a>
                           <ul>
				<li><a href="UserDashboard/html/pages-profile.jsp">Manage Account</a></li>
              <li><a href="login.jsp">Log Out</a></li>
            

            </ul>
               
               </li>
				


        </ul>
      </nav><!-- .navbar -->

    </div>
  </header>
 
 <div style="margin-top:60px;">
    <!-- ============================================================== -->
    <!-- Preloader - style you can find in spinners.css -->
    <!-- ============================================================== -->
    <div class="preloader">
        <div class="lds-ripple">
            <div class="lds-pos"></div>
            <div class="lds-pos"></div>
        </div>
    </div>
    <!-- ============================================================== -->
    <!-- Main wrapper - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <div id="main-wrapper" data-layout="vertical" data-navbarbg="skin5" data-sidebartype="full"
        data-sidebar-position="absolute" data-header-position="absolute" data-boxed-layout="full">
        <!-- ============================================================== -->
        <!-- Topbar header - style you can find in pages.scss -->
        <!-- ============================================================== -->
        <header class="topbar" data-navbarbg="skin6">
            <nav class="navbar top-navbar navbar-expand-md navbar-light">
                <div class="navbar-header" data-logobg="skin6">
                    <!-- ============================================================== -->
                    <!-- Logo -->
                    <!-- ============================================================== -->
                    <a class="navbar-brand" href="index.html">
                        <!-- Logo icon -->
                        <b class="logo-icon">
                            <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                            <!-- Dark Logo icon -->
                            <!-- Light Logo icon -->

                        </b>
                        <!--End Logo icon -->
                        <!-- Logo text -->

                    </a>
                    <!-- ============================================================== -->
                    <!-- End Logo -->
                    <!-- ============================================================== -->
                    <!-- This is for the sidebar toggle which is visible on mobile only -->
                    <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i
                            class="mdi mdi-menu"></i></a>
                </div>
                <!-- ============================================================== -->
                <!-- End Logo -->
                <!-- ============================================================== -->
                <div class="navbar-collapse collapse" id="navbarSupportedContent" data-navbarbg="skin5">
                    <!-- ============================================================== -->
                    <!-- toggle and nav items -->
                    <!-- ============================================================== -->
                    <ul class="navbar-nav float-start me-auto">
                        <!-- ============================================================== -->
                        <!-- Search -->
                        <!-- ============================================================== -->
                        <li class="nav-item search-box" style="margin-top:30px; width:100px;"> <a class="nav-link waves-effect waves-dark"
                                href="javascript:void(0)"><i class="mdi mdi-magnify me-1"></i> <span class="font-16">Search</span></a>
                            <form class="app-search position-absolute">
                                <input type="text" class="form-control" placeholder="Search " style="width:1100px;"> <a
                                    class="srh-btn"><i class="mdi mdi-window-close" style=""></i></a>
                            </form>
                        </li>
                    </ul>
                    <!-- ============================================================== -->
                    <!-- Right side toggle and nav items -->
                    <!-- ============================================================== -->

                </div>
            </nav>
        </header>
        <!-- ============================================================== -->
        <!-- End Topbar header -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
       <aside class="left-sidebar" data-sidebarbg="skin6" style="margin-top:100px; ">
            <!-- Sidebar scroll-->
            <div class="scroll-sidebar" >
                <!-- Sidebar navigation-->
                <nav class="sidebar-nav" >
                    <ul id="sidebarnav" >
                       <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="pages-profile.jsp" aria-expanded="false"><i
                                    class="mdi mdi-account-network"></i><span class="hide-menu">Profile</span></a></li>
                           <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="StaffDashboard.jsp" aria-expanded="false"><i class="mdi mdi-taxi"></i><span
                                    class="hide-menu">Available Taxi</span></a></li>
                                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Tickets.jsp" aria-expanded="false"><i class="mdi mdi-ticket"></i><span
                                    class="hide-menu">Bookings</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="StaffBooking.jsp" aria-expanded="false"><i class="mdi mdi-amplifier"></i><span
                                    class="hide-menu">Fuel Management</span></a></li>
						   <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Trip.jsp" aria-expanded="false"><i class="mdi mdi-beach"></i><span
                                    class="hide-menu">Trip Management</span></a></li>
						   <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="CabMaintaince.jsp" aria-expanded="false"><i class="mdi mdi-towing"></i><span
                                    class="hide-menu">Cab Maintenance</span></a></li>
                        <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link"
                                href="Users.jsp" aria-expanded="false"><i class="mdi mdi-account-circle"></i><span
                                    class="hide-menu">Customer</span></a></li>
                      
                                                                         

                    

                        
                        <li class="text-center p-40 upgrade-btn">
                            <a href="contact.jsp"
                                class="btn d-block w-100 btn-danger text-white" target="_blank">Tell Us</a>
                        </li>
                    </ul>

                </nav>
                <!-- End Sidebar navigation -->
            </div>
            <!-- End Sidebar scroll-->
        </aside>                <!-- ============================================================== -->
        <!-- End Left Sidebar - style you can find in sidebar.scss  -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Page wrapper  -->
        <!-- ============================================================== -->
        <div class="page-wrapper">
            <!-- ============================================================== -->
            <!-- Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <div class="page-breadcrumb">
                <div class="row align-items-center">
                    <div class="col-6">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb mb-0 d-flex align-items-center">
                              <li class="breadcrumb-item"><a href="index.html" class="link"><i class="mdi mdi-home-outline fs-4"></i></a></li>
                              <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                            </ol>
                          </nav>
                        <h1 class="mb-0 fw-bold">Dashboard</h1> 
                    </div>
                    <div class="col-6">
                        <div class="text-end upgrade-btn">
                            <a href="#popup1" class="btn btn-primary text-white"
                                target="">Add New Cab Maintenance</a>

<style>



.overlay {
  position: fixed;
  top: 170px;
  bottom: 0;
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  transition: opacity 500ms;
  visibility: hidden;
  opacity: 0;
}
.overlay:target {
  visibility: visible;
  opacity: 1;
}

.popup {
  margin: 70px auto;
  height: 600px;
  padding: 20px;
  background: #fff;
  border-radius: 5px;
  width: 30%;
  position: relative;
  transition: all 5s ease-in-out;
}

.popup h2 {
  margin-top: 0;
  color: #333;
  font-family: Tahoma, Arial, sans-serif;
}
.popup .close {
  position: absolute;
  top: 20px;
  right: 30px;
  transition: all 200ms;
  font-size: 30px;
  font-weight: bold;
  text-decoration: none;
  color: #333;
}
.popup .close:hover {
  color: #06D85F;
}
.popup .content {
  max-height: 100%;
  overflow: auto;
}

@media screen and (max-width: 700px){
  .box{
    width: 70%;
  }
  .popup{
    width: 70%;
  }
}
</style>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- End Bread crumb and right sidebar toggle -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- Container fluid  -->
            <!-- ============================================================== -->
            <div class="container-fluid">
                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->

                <!-- ============================================================== -->
                <!-- Sales chart -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Table -->
                <!-- ============================================================== -->
                <%  
  


try {
	        Statement st;
	        String sql;
			String url="jdbc:mysql://localhost:3306/cab_management_system?useSSL=false&allowPublicKeyRetrieval=True";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,"root","");
			st= (Statement) con.createStatement();
			

			    
		    sql ="Select * from cab_maintain ";
			
			ResultSet rs = st.executeQuery(sql);
			
	        %>
                <div class="row">
                    <!-- column -->
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <!-- title -->
                                <div class="d-md-flex">
                                    <div>
                                        <h4 class="card-title">All Not Available taxi</h4>
                                        <h5 class="card-subtitle" style="font-size:14px">Overview of Under Maintenance Taxis</h5>
                                    </div>
                                    <div class="ms-auto">
                                        <div class="dl">
                                            <select class="form-select shadow-none">
                                                <option value="0" >5</option>
                                                <option value="1" selected>10</option>
                                                <option value="2">20</option>
                                                <option value="3">25</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <!-- title -->
                                <div class="table-responsive">
                                    <table class="table mb-0 table-hover align-middle text-nowrap" id="example">
                                        <thead>
                                            <tr>
                                                <th class="border-top-0">Vehicle Reg Number</th>
                                                                                                <th class="border-top-0">Category</th>
                                                
                                                <th class="border-top-0">Chasis No</th>


                                                <th class="border-top-0">Maintenance Part</th>
                                                <th class="border-top-0">Maintaining Days</th>
												<th class="border-top-0">Days</th>
                                                <th class="border-top-0">Edit <i class="mdi mdi-ethernet-cable-off"></i></th>
												<th class="border-top-0">Delete <i class="mdi mdi-delete-circle"></i></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <%while(rs.next()){
     											 %>

                

                                            <tr>
                                            
                                                <td>
                                                    <div class="d-flex align-items-center">
                                                        <div class="m-r-10"><a
                                                                class="btn btn-circle d-flex btn-info text-white"><%=rs.getString("CabID") %></a>
                                                        </div>
                                                        
                                                    </div>
                                                </td>
                                                <td><div class="">
                                                            <h4 class="m-b-0 font-16"><%=rs.getString("Category") %></h4>
                                                        </div></td>
                                                <td><%=rs.getString("ChasisNo") %></td>
                                                <td><%=rs.getString("Part") %></td>
                                                <td>
                                                    <label class="badge bg-success"><%=rs.getString("Days") %></label>
                                                </td>

                                                <td>
                                                    <h5  class="badge bg-danger" style="font-size:16px;">$<%=rs.getString("Price") %> U.S</h5>
                                                </td>
                                               
                                                 <td><a href="#popup2"><img src="../assets/img/icons8-edit-64.png" style="width:40px; height:40px;"></a></td>
                                                
                                                <td><a href="../../DeleteMaintain?id=<%=rs.getString("CabID") %>" id=""><img src="../assets/img/icons8-delete-100.png" style="width:40px; height:40px;"></a></td>
                                            
                                                                                            
<div id="popup2" class="overlay">
	<div class="popup">
		<h2 style="text-align:center; color:blue; font-weight:bold;">Update Taxi Maintenance Details</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			<form action="../../Editmaintain?id=<%=rs.getString("CabID") %>" method="post" style="color:black; font-weight:bold;">
			    <span style="color:black; font-weight:bold;">Category</span><br>
			    <input type="text" class="input-form" name="Airline" ><br>
			    	    <span style="color:black; font-weight:bold;">Chasis No</span><br>
			    <input type="text" class="input-form" name="Depature" ><br>
			    		    <span style="color:black; font-weight:bold;">Maintenance Part</span>	    <br>
			    <input type="text" class="input-form" name="Destination" ><br>
			    			    		    <span style="color:black; font-weight:bold;">Days</span><br>
			    <input type="number" class="input-form" name="DateTime" ><br>
			    					    		    <span style="color:black; font-weight:bold;">Price</span>	  <br>
			    <input type="number" class="input-form" name="Price" ><br>
	
			    <input type="submit" style="width:370px; margin:5px;"class="btn btn-primary"><br>
			   
			    
			</form>
			<style>
			.input-form{
			  padding:5px 0px 3px 15px;
			  margin:5px;
			  width:370px;
			  border-radius:5px;
			  color:gray;
			}
			</style>
		</div>
	</div>

</div>
</tr>
                                            <% }%>
                                        </tbody>
                                           <% 	
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
    }    

  %> 
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
   
<div id="popup1" class="overlay">
	<div class="popup">
		<h2 style="text-align:center; color:blue; font-weight:bold;">Enter New Cab Maintenance Details</h2>
		<a class="close" href="#">&times;</a>
		<div class="content">
			<form action="../../maintain" method="post" style="color:black; font-weight:bold;">
			    			    Cab ID<br>
			    <input type="text" class="input-form" name="id"><br>
			    Category<br>
			    <input type="text" class="input-form" name="Airline"><br>
			    			    Chasis No<br>
			    <input type="text" class="input-form" name="Depature"><br>
			    			    Part<br>
			    <input type="text" class="input-form" name="Destination"><br>
			    Days<br>
			    <input type="text" class="input-form" name="DateTime"><br>
			    			  Price<br>
			    <input type="number" class="input-form" name="Price"><br>
			    <input type="submit" class="btn btn-primary" style="width:370px; margin:5px;">
			</form>
			<style>
			.input-form{
			  padding:5px 0px 3px 15px;
			  margin:5px;
			  width:370px;
			  border-radius:5px;
			  color:gray;
			}
			</style>
		</div>
	</div>
</div>
                </div>
                <!-- ============================================================== -->
                <!-- Table -->
                <!-- ============================================================== -->
                <!-- ============================================================== -->
                <!-- Recent comment and chats -->
                <!-- ============================================================== -->
               
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->

            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    
<script>
$(document).ready(function() {
    $('#example').DataTable(
        
         {     

      "aLengthMenu": [[5, 10, 25, -1], [5, 10, 25, "All"]],
        "iDisplayLength": 5
       } 
        );
} );


function checkAll(bx) {
  var cbs = document.getElementsByTagName('input');
  for(var i=0; i < cbs.length; i++) {
    if(cbs[i].type == 'checkbox') {
      cbs[i].checked = bx.checked;
    }
  }
}
</script>
    
  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
   <div id="preloader"></div>
    <script src="../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../dist/js/app-style-switcher.js"></script>
    <!--Wave Effects -->
    <script src="../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../dist/js/custom.js"></script>
    <!--This page JavaScript -->
    <!--chartis chart-->
    <script src="../assets/libs/chartist/dist/chartist.min.js"></script>
    <script src="../assets/libs/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>
    <script src="../dist/js/pages/dashboards/dashboard1.js"></script>
      <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
  
    <script src="assets/js/main.js"></script>
  <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">


  
</body>

</html>