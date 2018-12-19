<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page isELIgnored="false" %>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/css/navbarcolor.css'></c:url>">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bikes Wale</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
</head>


<body>


<nav class="navbar navbar-default" id="navcolor">
<a href="" class="navbar-brand"><img src="<c:url value='/resources/images/Royal.jpg'></c:url>" height="35px" width="75px" ></a>
<button type="button" class="navbar-toggle collapsed"
   data-toggle="collapse" data-target="#collapse-example" aria-expanded="false">
    <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

</div>
<div class="collapse navbar-collapse" id="collapse-example">
<ul class="nav navbar-nav" id="links">

<li><a href="<c:url value='/home'></c:url>"><span class="glyphicon glyphicon-home"style="color:#ff0000"></span>Home</a></li>
<li><a href="<c:url value='/aboutus'></c:url>">About Us</a></li>
<li><a href="<c:url value='/all/getallproducts'></c:url>">Browse all products</a></li>
<li><a href="<c:url value='/admin/getproductform'></c:url>">Add Products</a></li>
<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">Select By Cateogory
			<span class="caret"></span></a>
			<ul class="dropdown-menu">
			<li><a href="">Cast Iron Royal Enfield</a></li>
			<li><a href="">Royal Enfield Himalayan</a></li>
			<li><a href="">Royal Enfield Continental GT 650</a></li>
			<li><a href="">Royal Enfield Thunderbird</a></li>
			<li><a href="">Royal Enfield Classic</a></li>
			<li><a href="">Royal Enfield Bullet</a></li>
			</ul>
			</li>
<li><a href="/signup">Sign Up</a></li>
<li><a href="/signin">SignIn<span class="glyphicon glyphicon-log-in"style="color:#ff0000"></span></a></li>
<li><a >SignOut<span class="glyphicon glyphicon-log-out"style="color:#ff0000"></span></a></li>


</ul>
</div>
</nav>




</body>
</html>