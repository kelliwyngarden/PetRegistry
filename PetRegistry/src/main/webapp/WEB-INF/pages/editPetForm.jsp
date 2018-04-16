<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="mvc"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Pet Form</title>
<style><%@include file="/WEB-INF/css/cssFile.css"%></style>
<script type="text/javascript">
//auto expand textarea
function adjust_textarea(h) {
    h.style.height = "20px";
    h.style.height = (h.scrollHeight)+"px";
}
</script>
</head>
<body>
<div class = "page-wrapper">
	<h1>Edit Pet Form</h1>
	<div class = "page-divider"></div>
	<mvc:form modelAttribute = "pet" action = "editPetResult.mvc" class = "form-style">
		<h2>Editing Pet</h2>
			<ul>
				<li>
					<mvc:label path = "name">Pet Name</mvc:label>
					<mvc:input path = "name" value = "${pet.name}"/>
				</li>
				<li>
					<mvc:label path = "species">Species</mvc:label>
					<mvc:input path = "species"  value = "${pet.species}"/>
				</li>
				<li>
					<mvc:label path = "age">Age</mvc:label>
					<mvc:input path = "age"  value = "${pet.age}"/>
				</li>
				<li>
					<mvc:label path = "coloring">Coloring</mvc:label>
					<mvc:input path = "coloring"  value = "${pet.coloring}"/>
				</li>
				<li>
					<input type = "submit" value = "Submit" />
				</li>
		</ul>
		<mvc:input type = "hidden" path = "petId" value = "${pet.petId}" />
		<mvc:input type = "hidden" path = "ownerId" value = "${pet.ownerId}" />
	</mvc:form>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewAllPets.mvc">Cancel Edit</a>
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