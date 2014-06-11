<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath() %>/assets/bootstrap/css/bootstrap.css" rel="stylesheet">
<title>FAS</title>
</head>
<body>
<div class="mainbody">
<form:form action="login.html" modelAttribute="users" method="post">

<table align="center" >
<tr><td><h2>Please Sign In</h2></td></tr>
				<tr>
					<td><div class="input-prepend">
							<span class="add-on"><i class="icon-user"></i></span>
							<form:input id="username" path="username" placeholder="UserName" />
						</div></td>
				</tr>
				<tr>
					<td>
						<div class="input-prepend">
							<span class="add-on"><i class=" icon-eye-open"></i></span>
							<form:password path="password" placeholder="PassWord" />
						</div>
					</td>
				</tr>

				<tr><td><input type="submit" name="Submit" class="btn btn-success btn-block"></td></tr>
</table>

</form:form>
</div>

</body>
</html>