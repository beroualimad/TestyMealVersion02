<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div.log{
  float :right;
 
}
span{

color:red;
}
h3{
 font-family:cursive;
}
li{background-color:SteelBlue;
  font-style:italic;
  
  border-radius:50px 50px 50px 50px;
  padding:20px;
  margin:5px;
  width:200px;
  list-style:none;
 }
li a{
 font-size :16px;
 text-decoration: none;
 text-align:center;
 font-weight: bolde;
 color:black;
  padding:10px;
  width:200px;

 }
  li:hover{
 
   cursor: pointer;
   opacity:0.5;
 
 }
 span{

color:red;
}
 
</style>
<script type="text/javascript">
function Affiche(){
	alert("You are succuseful LogOut");
}

</script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"  rel="stylesheet"/>
</head>
<body>
 <div class="log">
<a href="/ho" title="Login Out" onclick="Affiche()"><span>LogOut <i class="fa fa-sign-out" aria-hidden="true" style="width:35px;height:35px; color: red"></i></span></a>  </div>
<h3>Hello ,<span>${sessionScope.usreId}</span> </h3>
<h3>You have been successfully registered .</h3>
     
      <h3>You Have the possibility to do the following :</h3>
      <ul>
         <li><a href="/consulteMenu" target="show">Consultation Menus</a></li>
         <li><a href="#">Ajouter Item in The List</a></li>
         <li><a href="#">Modifier Item in The List</a></li>
         <li><a href="#">Supremer Item in The List</a></li>
      
      
      </ul>
      
     

</body>
</html>