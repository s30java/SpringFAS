<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  </head>

  <body class="login-img">


<jsp:include page="customer_header.jsp"></jsp:include>


    <!-- showcase part==================TABLE PART================================ -->
	<div class="wrap-footer container">
		<div class="mainblock-cust">
			
			<ul class="media-list">
			<li class="media">
                <a href="CreateBank.html" title="click here to add question bank !!" role="button" class="pull-right" data-toggle="modal">
                  <img  class="media-object add-banner " style="width: 48px; height: 48px;" >
                </a>
                <div class="media-body">
                 <h3>Hi , <code>customer</code></h3>
                <p> List of all surveys created by you, please click and validate each if required.</p>
                </div>
              </li>
			</ul>
			<div class="bs-docs-example">
            <table class="table">
              <thead>
                <tr>
                  <th>#</th>
                  <th>Title</th>
                  <th>Question/Survey creation date</th>
                  <th>Type</th>
                  <th>Status</th>
                </tr>
              </thead>
              <tbody>
                <tr class="success">
                  <td>1</td>
                  <td>Ozone layer awareness</td>
                  <td>01/04/2012</td>
                  <td>Question</td>
                  <td><a class="label label-success" href="#">Approved</a></td>
                </tr>
                <tr class="error">
                  <td>2</td>
                  <td>Hotel Cleanliness</td>
                  <td>02/04/2012</td>
                   <td>Question</td>
                  <td><a class="label label-important" href="#">Declined</a> </td>
                </tr>
                <tr class="warning">
                  <td>3</td>
                  <td>Facilities Feedback</td>
                  <td>03/04/2012</td>
                   <td>Question</td>
                  <td><a class="label label-warning" href="#">Pending</a></td>
                </tr>
                <tr class="info">
                  <td>4</td>
                  <td>Sales feedback</td>
                  <td>04/04/2012</td>
                   <td>Survey</td>
                  <td><a class="label label-warning" href="#">Call in to confirm</a></td>
                </tr>
              </tbody>
            </table>
          </div>
		</div>

	</div>


	<!-- ================================================== -->
	   <jsp:include page="../footer.jsp"></jsp:include>
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="<c:url value="/assets/bootstrap/js/jquery.js" />"></script>

  </body>
</html>
