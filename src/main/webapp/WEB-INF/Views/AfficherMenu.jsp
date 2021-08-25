<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
function calc(){


	  alert("Total is :");
	
}

</script>
</head>
<body>
<h1>Liste des Menus :</h1>

<div >
<table >

 <c:forEach items="${menus}" var="menus">
  <tr style="text-shadow: 3px 3px 3px pink;font-size:30px;">
     <td><input type="checkbox"  onclick="calc()"> ${menus.id}  </td>
    <td>  ${menus.items}.........................</td>
    <td><span id="ID">${menus.prix}</span> &euro; </td>
  </tr>
 
 </c:forEach>

</table>
<a href="/aut">Passer un commande</a>
</div>
</body>
</html>