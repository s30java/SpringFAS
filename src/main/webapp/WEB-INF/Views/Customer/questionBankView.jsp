<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  
   <title> :::: Feedback Analysis System ::::</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>

  <body class="login-img">


<jsp:include page="customer_header.jsp"></jsp:include>


    <!-- showcase part==================TABLE PART================================ -->
	
 <div class="wrap-footer container ">
		<div class="mainblock-cust jumbotron">
			
           <h1 class="btn btn-primary disabled">Step 1</h1>
           <form class="form-horizontal">
    <div class="control-group">

    <label class="control-label" for="questn"> Question bank name</label>
    <div class="controls">
    <input type="text" id="inputEmail" placeholder="name">
    </div>
    </div>
    <div class="control-group">
    <label class="control-label" for="inputPassword"> Question bank description</label>
    <div class="controls">
    <textarea placeholder="description"></textarea>
    </div>
    </div>
    <div class="control-group">
    <div class="controls">

    <button type="submit" class="btn">Go Next >>></button>
    </div>
    </div>
    </form>

         
        
		</div>


  

     
    </div>

	<!-- ================================================== -->
	
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/assets/bootstrap/js/jquery.js" />"></script>
<%--      <script src="<c:url value="/assets/bootstrap/js/bootstrap-modal.js" />"></script>
     <script src="<c:url value="/assets/bootstrap/js/bootstrap-transition.js" />"></script> --%>
     
       <!-- FOOTER -->
        <!-- Part 1: Wrap all page content here -->
   

    <jsp:include page="../footer.jsp"></jsp:include>

  </body>
</html>
