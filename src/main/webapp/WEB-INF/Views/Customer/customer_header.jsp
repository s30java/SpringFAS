<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <!-- Le styles -->
<link href="<c:url value="/assets/bootstrap/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/assets/css/StyleSheet.css" />" rel="stylesheet">
 <link rel="shortcut icon" href="<c:url value="/assets/ico/favicon.ico" />">
 <link href="<c:url value="/assets/bootstrap/css/bootstrap-responsive.css" />" rel="stylesheet"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <!-- NAVBAR
    ================================================== -->
    <div class="navbar-wrapper">
      <!-- Wrap the .navbar in .container to center it within the absolutely positioned parent. -->
      <div class="container">

        <div class="navbar navbar-inverse">
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="brand" href="#">FEEDBACK SYSTEM</a>
            <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li class="active"><a href="home.html">Home</a></li>
                <li><a href="#about">Send Email to sales</a></li>
                <li><a href="#contact">Survey</a></li>
                 <li><a href="ShowCustDept.html">Question</a></li>
              </ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->
		<div class="login-pullright">Keudos, ${userContext.firstname} | <a href="logout.html">Logout</a></div>
      </div> <!-- /.container -->
    </div><!-- /.navbar-wrapper -->

    <!-- ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/assets/bootstrap/js/jquery.js" />"></script>
</body>
</html>