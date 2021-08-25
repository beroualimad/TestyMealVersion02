<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body {
    background-image: url("/images/photo.jpg");
}
*{
padding:-1px;
margin:0px;
box-sizing:border-box;
font-family:sana-serif;
}
.menu
{
background: #333;
text-align: center;
}
.menu ul 
{
list-style: none;
display: inline-flex;
color:#fff;'
}
.menu ul li
{
width: 120px;
margin:15px;
padding:15px;
}
.menu ul li a
{
text-decoration:none;
color:#fff;
}
.active :hover,.menu ul li span:hover
{
 
 border-radius:15px;
 opacity: 0.6;
 
}

.menu .fa
{
margin-right:8px;
}
 .s-menu1 , .s-menu4
 {
 background:#333;
 display:none;
 width: 180px;
 border-radius: 13px;
 }
 .menu ul li:hover .s-menu1 , .menu ul li:hover .s-menu4
 {
 
 display:block;
 position:absolute;
 
 margin-top:15px;
 margin-left:-15px;
 }
 .menu ul li:hover .s-menu1 ul,.menu ul li:hover .s-menu4 ul
 {
 display:block;
 margin:10px;
 }
.menu ul li:hover .s-menu1 ul li ,.menu ul li:hover .s-menu4 ul li
{
width:90px;
padding:8px;
border-bottom:1px dotted #fff;
background: transparent;
border-radius:3px;
text-align:left;
}
.menu ul li:hover .s-menu1 ul li:last-child
{
border-bottom:none;
}
.menu ul li:hover .s-menu1 ul li a:hover
{
color:#b2ff00;

}
.menu ul li:hover .s-menu1 ul li a {

margin-left:-45px;
border-radius: 3px;
}
.menu ul li:hover .s-menu4 ul li a{
margin-left:-53px;
border-radius: 3px;

}
p
{
    background-color: #333;
 	color:#ddd;
 	text-align: center;
 	width:500 px;
}
.calc{
display:inline-block;
float: left;
margin-top: 8px;
margin-left: 8px;
}
.calc h3{color:#ddd;
 border-radius:15px;
 width: 350px;
  text-align: left;
 margin:5px;
 padding:3px;
text-shadow: 2px 2px 3px pink;
 }
 .lego{text-align: center;
 font-size: 40px;
   font-family: 'Brush Script MT', cursive;
   color: black;
    cursor: pointer;
    background:SteelBlue;
 }
.alg{ color: red;
      font-family: 'Brush Script MT', cursive;
      font-size: 65px;
      
}
.hovr{
float:right;margin-right: 10px;cursor: pointer;opacity:1;
}
.hovr>i:hover{
 opacity: 0.6;
}
.hovr>i+i:hover{
 opacity: 0.6;}
 .hovr i:last-child:hover {
	 opacity: 0.6;
}
</style>
 <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel=" stylesheet">
<link href="css/font-awesome-4.6.3/css/font-awesome.min.css" rel="stylesheet">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"  rel="stylesheet"/>
</head>
<body>

 <aside class="lego"><span class="alg">Algeria</span> Food   <i class="fa fa-cutlery" aria-hidden="true"></i></aside>

<div class="menu">
<div class="calc">
<h3>Commandes en cours de livraison:0</h3>
<h3>Commanes en attente:0</h3>
</div>
<ul>
<li class="active"><a href="/home" target="show"><i class="fa fa-home" style=" color: red"></i>Home</a>
</li>
<li><span><a href="#"><i class="fa fa-users"></i>Client</a></span>
   <div class="s-menu1">
       <ul>
          <li><a href="/consulteMenu" target="show">Consulter list Menus</a></li>
          <li><a href="#">Passer un commande</a></li>
          <li style="margin-left:30px;"><a href="#">Suivre l'etat de<br><span  style="margin-left:-35px;"> commande</span></a></li>
       </ul>
   </div>
</li>

<li><span><a href="/esp" target="show"><i class="fa fa-user"></i>Resteurateur</a></span></li>
<li><span><a href="#"><i class="fa fa-motorcycle"></i>Livrour</a></span></li>
<li><span><a href="#"><i class="fa fa-phone" style="background:green;width:24px;height:-25px;border-radius:42%;"></i>contect</a></span>
     <div class="s-menu4">
       <ul>
          <li><a>tel :+216 34 65 21</a></li>
          <li><a>Gmail:Algfood@gmail.com</a></li>
       </ul>
   </div>




</li>
<li><span><a href="#" title="Login"><i class="fa fa-sign-in" aria-hidden="true"  style="float:right;margin-right: 0px"></i></a></span></li>
</ul>
</div>

<iframe src="/home" name="show" frameborder="5px" width="100%" height="470px">
    </iframe>
    
     <p>Copyright 2021 &copy; All right Reserved<span class="hovr"><i>Privacy</i>&nbsp;&nbsp;&nbsp;<i>PolicyTerms</i>&nbsp;&nbsp;&nbsp;<i>Pricing</i></span> </p>
</body>
</html>