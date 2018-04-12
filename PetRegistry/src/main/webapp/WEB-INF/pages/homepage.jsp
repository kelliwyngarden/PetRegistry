<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Registry Homepage</title>
<style>
a:link, a:visited {
    background-color: #144eaa;
    color: white;
    padding: 14px 25px;
    text-align: center; 
    text-decoration: none;
    display: inline-block;
    margin:10px;
    width:100px;
}

a:hover, a:active {
    background-color: #1556bf;
}
</style>
</head>
<body>
	<a href = "ownerForm.mvc">Add Pet Owner</a>
<!-- 	<a href = "petForm.mvc">Add Pet</a> <br /> This should go under View All owners to get around issue with assigning pet to owner -->
	<a href = "viewOwners.mvc">View All Owners</a>
	<a href = "viewPets.mvc">View All Pets</a>
</body>
</html>