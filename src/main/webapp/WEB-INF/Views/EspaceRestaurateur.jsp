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

.loginbox{
 width:280px;
 position:absolute;
 top:50%;
 left:50%;
 transform:translate(-50%,-50%);
 
 }
.loginbox h3{
float:left;
font-size:40px;
border-bottom:6px solid #4caf50;
margin-bottom: 50px;
padding: 13px 0;
} 
 
.textbox{
width:100%;
overflow: hidden;
font-size: 20px;
padding: 8px 0;
margin:8px 0;
border-bottom: 2px solid #4caf50;

} 

.textbox  input{
border:none;
outline:none;
background: none;
color:white;
font-size: 18px;
width: 80%;

margin:0 10px;

}
.btn input{
width: 100%;
background: none;
border:2px solid #4caf50;
color:white;
padding: 5px;
font-size: 18px;
cursor:pointer;
margin:12px 0;
}
</style>

<style type="text/css">
div.log {
  float :right;
 
 
}
div.log a{
 font-size :16px;
 text-decoration: none;
 color:red;
 display: inline-block;
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
 
 
 
</style>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"  rel="stylesheet"/>
<script type="text/javascript">
function Afficher()
{var input=document.getElementById("motdepass");
if(input.type === "password")
	{
	input.type = "text";
	}
else
	{
	input.type = "password";
	}
	} 
function Affiche(){
	alert("You are succuseful LogOut");
}
</script>
</head>
<body>
<c:if test="${sessionScope.usreId != null  }">
    <div class="log">
       <a href="/ho" title="Login Out" onclick="Affiche()"><span>LogOut <i class="fa fa-sign-out" aria-hidden="true" style="width:35px;height:35px; color: red"></i></span></a>
  </div>
<h3>Hello ,<span>${sessionScope.usreId}</span> </h3>
<h3>You have been successfully registered .</h3>
     
      <h3>You Have the possibility to do the following :</h3>
      <ul>
         <li><a href="/consulteMenu" target="show">Consultation Menus</a></li>
         <li><a href="#">Ajouter Item in The List</a></li>
         <li><a href="#">Modifier Item in The List</a></li>
         <li><a href="#">Supremer Item in The List</a></li>
      
      
      </ul>
</c:if>
<c:if test="${sessionScope.usreId == null  }">
<form:form method="POST" action="/AddUser" modelAttribute="user">
<fieldset class="loginbox">

<h3>LOGIN</h3>

<div class="textbox">
<i class="fa fa-user"></i>
<form:input path="Name" type="text" placeholder="UserName"  />
</div>
<div class="textbox">
<i class="fa fa-lock"></i>
<form:input path="Pass" type="password" placeholder="PassWord" id="motdepass"/>
</div >

<input type="checkbox" onclick="Afficher()">
<label >Afficher le mot de passe </label>

<div class="btn">
<a href="/Menures" ><input type="submit" value="LOGIN " /></a>
</div>
</fieldset>
</form:form>
</c:if>
</body>
</html>