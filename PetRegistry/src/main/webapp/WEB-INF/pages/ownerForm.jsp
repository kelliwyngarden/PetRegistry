<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "mvc" %>
<%@ page isELIgnored = "false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Owner Registration Form</h2>
<mvc:form modelAttribute = "owner" action = "ownerResult.mvc">
	<table>
		<tr>
			<td><mvc:label path = "firstName">First Name</mvc:label></td>
			<td><mvc:input path = "firstName"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "lastName">Last Name</mvc:label></td>
			<td><mvc:input path = "lastName"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "phone">Phone Number</mvc:label></td>
			<td><mvc:input path = "phone"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "email">Email</mvc:label></td>
			<td><mvc:input path = "email"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "address">Address</mvc:label></td>
			<td><mvc:input path = "address"/></td>
		</tr>
		<tr>
			<td colspan = "2">
				<input type = "submit" value = "Submit"/>
			</td>
		</tr>
	</table>
</mvc:form>
<a href = "petForm.mvc">Add Pet</a>
<a href = "viewAllOwners.mvc">View All Owners</a>
</body>
</html>