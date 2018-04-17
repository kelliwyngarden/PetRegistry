<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Owner Result</title>
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
</head>
<body>
<div class = "page-wrapper">
	<h1>Owner Edit Confirmation</h1>
	<div class = "page-divider"></div>
	<div class = "result-style">
		<h2>Edit Owner Result</h2>
		<ul>
			<li>
				<label>First Name</label>
				<p>${o.firstName}</p>
			</li>
			<li>
				<label>Last Name</label>
				<p>${o.lastName}</p>
			</li>
			<li>
				<label>Phone Number</label>
				<p>${o.phone}</p>
			</li>
			<li>
				<label>Email</label>
				<p>${o.email}</p>
			</li>
			<li>
				<label>Address</label>
				<p>${o.address}</p>
			</li>
		</ul>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewOwners.mvc">View All Owners</a>
	  </span>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="homepage.mvc">Return Home</a>
	  </span>
	</div>
</div>
</body>
</html>