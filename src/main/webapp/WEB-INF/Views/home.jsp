<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
   <title> :::: Feedback Analysis System ::::</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Le styles -->
<link href="<c:url value="/assets/bootstrap/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/assets/css/StyleSheet.css" />" rel="stylesheet">
 <link rel="shortcut icon" href="<c:url value="/assets/ico/favicon.ico" />">
 <link href="<c:url value="/assets/bootstrap/css/bootstrap-responsive.css" />" rel="stylesheet"> 
  </head>

  <body>


<jsp:include page="header.jsp"></jsp:include>


    <!-- showcase part
    
    ================================================== -->
    <div id="myCarousel" class="carousel slide">
      <div class="carousel-inner">
        <div class="item active">
          <img src="<c:url value="/assets/bootstrap/img/slide-01.jpg" />" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Customer Contact Department</h1>
              <p class="lead">To maintain the above Question Bank, to close/re-open survey, e-mail campaigns, to maintain customer enquiry feedback etc.</p>
             
            </div>
          </div>
        </div>
        <div class="item">
          <img src="<c:url value="/assets/bootstrap/img/slide-02.jpg" />" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Sales and Marketing Teams</h1>
              <p class="lead">Team will maintain product details through the system which in turn will be accessed by the registered customers and to upload customer survey.</p>
             <!--  <a class="btn btn-large btn-primary" href="#">Learn more</a> -->
            </div>
          </div>
        </div>
        <div class="item">
          <img src="<c:url value="/assets/bootstrap/img/slide-03.jpg" />" alt="">
          <div class="container">
            <div class="carousel-caption">
              <h1>Product / Service Design Teams and Senior Management</h1>
              <p class="lead">To get Analytical reports like Productwise Feedback, Customerwise feedback, Survey Analysis-etc.</p>
              <!-- <a class="btn btn-large btn-primary" href="#">Browse gallery</a> -->
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>



   
   <!--  ================================================== -->
    

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Customer Contact Department</h2>
          <p>To maintain Question Bank, Time to time define various surveys, close/re-open survey.</p>
          <p><a class="btn" href="ShowCustDept.html">Validate Feedback &raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Sales and Marketing Teams</h2>
          <p>Team will maintain product details through the system which in turn will be accessed by the registered customers and to upload customer survey.</p>
          <p><a class="btn" href="ShowSalesDept.html">Upload Survey&raquo;</a></p>
        </div><!-- /.span4 -->
        <div class="span4">
          <img class="img-circle" data-src="holder.js/140x140">
          <h2>Product and Senior Management</h2>
          <p>Get Analytics reports to showcase.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div><!-- /.span4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">
      
      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2014 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div>



    <!-- ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/assets/bootstrap/js/jquery.js" />"></script>
    <script src="<c:url value="/assets/bootstrap/js/bootstrap-carousel.js" />"></script>
    <script src="<c:url value="/assets/bootstrap/js/bootstrap-dropdown.js" />"></script>
    <script>
      !function ($) {
        $(function(){
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
    </script>
    <script src="<c:url value="/assets/bootstrap/js/holder.js" />"></script>
  </body>
</html>
