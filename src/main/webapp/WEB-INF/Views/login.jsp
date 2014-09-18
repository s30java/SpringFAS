<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/assets/bootstrap/css/bootstrap.css" />" rel="stylesheet">
<link href="<c:url value="/assets/css/StyleSheet.css" />" rel="stylesheet">
 <link rel="shortcut icon" href="<c:url value="/assets/ico/favicon.ico" />">
<title> :::: Feedback Analysis System ::::</title>

</head>
<body id="container" >
<div >
<form:form action="login.html" modelAttribute="users" method="post">
	<c:if test="${message.INVALID_USER_MESSAGE != null}">
							<div class="alert alert-error">
								<a href="#" class="close" data-dismiss="alert">&times;</a>
								<spring:message code="invalid.user.credentials" text="default text" />
							</div>
						</c:if>
				<c:if test="${message.ERR_MESSAGE != null}">
								<div class="alert alert-error">
									 <a href="#" class="close" data-dismiss="alert">&times;</a>
									 <spring:message code="required.error.login" text="default text" />
									<%-- <form:errors path="password" cssClass="error" /> --%>
								</div>
							</c:if>
							
							<table class="mainbody" align="center" >
							<tr>
									<td class="separator-left">
										<table>
				
											<tr>
												<td class="signin"><h2>Sign In</h2></td>
											</tr>
				
											<tr>
												<td>
				
													<div class="input-prepend">
														<span class="add-on"><i class="icon-user"></i></span>
														<form:input id="username" path="username"
															placeholder="UserName" />
													</div>
												</td>
											</tr>
											<tr>
												<td>
													<div class="input-prepend">
														<span class="add-on"><i class=" icon-eye-open"></i></span>
														<form:password path="password" placeholder="Password" />
													</div>
				
												</td>
											</tr>
				
											<tr>
												<td><input type="submit" name="Submit" value="Get Access"
													class="btn btn-success btn-block"></td>
											</tr>
											
				
										</table>
									</td>
					<td class="separator-right">
					<table>
					<tr>
					<td></td>
					</tr>
					</table>
					</td>
									<td>
									<table class="mainbody" align="center">
		
									<tr>
										<td class="joinus"><h2>Join Us</h2></td>
									</tr>
				
									<tr>
										<td>
		
											<div class="input-prepend">
												<span class="add-on"><i class="icon-check"></i></span>
												<form:input id="username" path="username"
													placeholder="User/loginName" />
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-prepend">
												<span class="add-on"><i class=" icon-eye-open"></i></span>
												<form:password path="password" placeholder="Password" />
											</div>
		
										</td>
									</tr>
									<tr>
										<td>
											<div class="input-prepend">
												<span class="add-on"><i class=" icon-eye-open"></i></span>
												<form:password path="password" placeholder="Retype-password" />
											</div>
		
										</td>
									</tr>
									
									<tr>
										<td>
		
											<div class="input-prepend">
												<span class="add-on"><i class="icon-user"></i></span>
												<form:input id="firstname" path="firstname"
													placeholder="Firstname" />
											</div>
										</td>
									</tr>
									
									
									<tr>
										<td>
		
											<div class="input-prepend">
												<span class="add-on"><i class="icon-user"></i></span>
												<form:input id="lastname" path="lastname"
													placeholder="Lastname" />
											</div>
										</td>
									</tr>
									
									
									<tr>
										<td>
		
											<div class="input-prepend">
												<span class="add-on"><i class="icon-map-marker"></i></span>
												<form:input id="email" path="email"
													placeholder="@ email" />
											</div>
										</td>
									</tr>
									<tr>
										<td><input type="button" name="Submit"
											value="Not registered ? register here"
											class="btn btn-info btn-block"></td>
									</tr>
		
		
								</table>
							</td>
							
							</tr>
							</table>


</form:form>
</div>


	<!-- Placed at the end of the document so the pages load faster -->
    
    <script src="<%=request.getContextPath() %>/assets/bootstrap/js/jquery.js"></script>
     <script src="<%=request.getContextPath() %>/assets/bootstrap/js/bootstrap.min.js"></script>
      <script src="<c:url value="/assets/bootstrap/js/bootstrap-modal.js" />"></script>

</body>
</html>