<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Owner Information</title>
</head>
<body>
<h2>Edit Owner Information</h2>
	<table>
	<caption>Current Owner</caption>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Phone Number</th>
			<th>Email</th>
			<th>Address</th>
		</tr>
	</table>
	<mvc:form modelAttribute = "owner" action = "editOwnerResult.mvc">
	<table>
		<tr>
			<td><mvc:input type = "hidden" path = "ownerId" value = "${o.ownerId}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "firstName">First Name</mvc:label></td>
			<td><mvc:input path = "firstName" value = "${o.firstName}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "lastName">Last Name</mvc:label></td>
			<td><mvc:input path = "lastName"  value = "${o.lastName}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "phone">Phone Number</mvc:label></td>
			<td><mvc:input path = "phone"  value = "${o.phone}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "email">Email</mvc:label></td>
			<td><mvc:input path = "email"  value = "${o.email}"/></td>
		</tr>
		<tr>
			<td><mvc:label path = "address">Address</mvc:label></td>
			<td><mvc:input path = "address" value = "${o.address}"/></td>
		</tr>
	</table>
		<tr>
			<td colspan = "2">
				<input type = "submit" value = "Submit" />
			</td>
		</tr>
	
</mvc:form>
</body>
</html>