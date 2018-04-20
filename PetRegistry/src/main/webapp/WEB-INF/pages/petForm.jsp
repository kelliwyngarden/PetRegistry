<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pet Registration Form</title>
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
<div  class = "page-wrapper">
	<h1>Pet Registration Form</h1>
	<div class = "page-divider"></div>
	<mvc:form modelAttribute = "pet" action = "petResult.mvc" class="form-style">
		<h2>Adding Pet to Owner ${owner.ownerId}: ${owner.firstName} ${owner.lastName}</h2>
		<ul>
			<li>
				<mvc:label path = "name" type = "text">Pet Name</mvc:label>
				<mvc:input path = "name" />
				<mvc:errors path = "name" class = "errors"/>
				<span>Enter Pet Name</span>
			</li>
			<li>
				<mvc:label path = "species">Species</mvc:label>
				<mvc:input path = "species" />
				<mvc:errors path = "species" class = "errors"/>
				<span>Enter Pet Species</span>
			</li>
			<li>
				<mvc:label path = "age">Age</mvc:label>
				<mvc:input path = "age" />
				<mvc:errors path = "age" class = "errors"/>
				<span>Enter Pet Age</span>
			</li>
			<li>
				<mvc:label path = "coloring">Coloring</mvc:label>
				<mvc:input path = "coloring" />
				<mvc:errors path = "coloring" class = "errors"/>
				<span>Enter Pet Color</span>
			</li>
			<li>
				<input type = "submit" value = "Submit" />		
			</li>
		</ul>
		<mvc:input path = "ownerId" type = "hidden" value = "${owner.ownerId}" />
	</mvc:form>
	<div class="wrapper">
	  <span class="square">
	    <a class="tenth before after" href="viewAllPets.mvc">View All Pets</a>
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