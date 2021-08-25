<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form method="POST" action="/AddUser2" modelAttribute="user">
<fieldset>
<div class="h3">
<h3>LOGIN</h3>
</div>
<div>

<form:input path="UseName" type="text" placeholder="UserName" />
</div>
<div>

<form:input path="gmail" type="text" placeholder="Gmail or phone" id="motdepass"/>
</div >

<form:input path="adresse" type="text" placeholder="adresse" id="motdepass"/>


<div>
<a href="#" ><input type="submit" value="LOGIN " /></a>
</div>
</fieldset>
</form:form>
</body>
</html>