<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<title>FAS</title>
  <style>
     body { background-color: #eee; font: helvetica; }
     
     .error { color: red; font-size: 0.9em; font-weight: bold; }
    </style>
    <script>
    $(".alert").alert('close')
    </script>
</head>
<body>
<div class="mainbody">
<form:form action="login.html" modelAttribute="users" method="post">

<table align="center" >
				<c:if test="${message.INVALID_USER_MESSAGE != null}">
							<div class="alert alert-error">
								<a href="#" class="close" data-dismiss="alert">&times;</a>
								<spring:message code="invalid.user.credentials" text="default text" />
							</div>
						</c:if>

				<tr><td><h2>Please Sign In</h2></td></tr>
    
				<tr>
					<td>
					
					<div class="input-prepend">
							<span class="add-on"><i class="icon-user"></i></span>
							<form:input id="username" path="username" placeholder="UserName" />
						</div>
						<c:if test="${message.ERR_MESSAGE != null}">
							<div class="alert">
								<a href="#" class="close" data-dismiss="alert">&times;</a>
								<form:errors path="username" cssClass="error" />
							</div>
						</c:if>
						
					</td>
				</tr>
				<tr>
					<td>
						<div class="input-prepend">
							<span class="add-on"><i class=" icon-eye-open"></i></span>
							<form:password path="password" placeholder="Password" />
						</div>
							<c:if test="${message.ERR_MESSAGE != null}">
								<div class="alert">
									 <a href="#" class="close" data-dismiss="alert">&times;</a>
									<form:errors path="password" cssClass="error" />
								</div>
							</c:if>
					</td>
				</tr>

				<tr><td><input type="submit" name="Submit" class="btn btn-success btn-block"></td></tr>
</table>

</form:form>
</div>


	<!-- Placed at the end of the document so the pages load faster -->
    
    <script src="<%=request.getContextPath() %>/assets/bootstrap/js/jquery.js"></script>
     <script src="<%=request.getContextPath() %>/assets/bootstrap/js/bootstrap.min.js"></script>

</body>
</html>