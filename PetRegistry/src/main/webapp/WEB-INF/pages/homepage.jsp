<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Registry Homepage</title>
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
</head>
<body>
<div class = "page-wrapper">
	<h1>Pet Registry</h1>
	<div class = "page-divider"></div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="ownerForm.mvc">Add Pet Owner</a>
	  </span>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewOwners.mvc">View All Owners</a>
	  </span>
	</div>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewAllPets.mvc">View All Pets</a>
	  </span>
	</div>
</div>
</body>
</html>