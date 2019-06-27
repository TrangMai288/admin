<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<title></title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Comaptible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="bootstrapwebdemo5.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"> 
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link href="C:/Users/DELL/fontawesome-free-5.9.0-web/css/fontawesome.css" rel="stylesheet">
</head>
<body>
	<style>
		@font-face{
        font-family: Open Sans;
        src:url("Open_Sans/Open_Sans-Light.ttf");
    }

    *{
        margin: 0;
        padding: 0;
        border-radius: 0 !important;
        font-family: Open Sans;
    }

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content{
        display: none;
        position: absolute;
        z-index: 1;
        background-color: #f5f5f5;
    }

    .dropdown:hover .dropdown-content{
        display: block;
        background-color: #01597b ;
        color: white !important;
    }

    .thay-mau{
        color: #0000bf !important;
    }
		
	
	</style>



<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
  		<div class="container">
  			<a class="navbar-brand" href="file:/C:/Users/DELL/Desktop/JVB-TTS-JAVA/HTML%20+%20CSS%20+%20JS/demobootstrap/bootstrapwebdemo1.html" >JVB'S SHOP</a>
  			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    		<span class="navbar-toggler-icon"></span>
 			</button>
 			<div>
 				<ul class="navbar-nav mr-auto">
    				<li class="nav-item dropdown">
   						<a href="#" class="nav-link" id="navbarDropdown">Admin&nbsp; </a> 
   						<div class="dropdown-content" aria-labelledby="navbarDropdown">
          					<a class="dropdown-item" href="#">Change Information</a>
          					<a class="dropdown-item" href="#">Change Password</a>
          					<a class="dropdown-item" href="#">Log out</a>				
        				</div>				
   					</li>
  				</ul>
  			</div>
  		</div>
	</nav>

	<table width="100%" border="0">
		<tr valign="top">
			<td style="background-color: #aaa; width: 22%; padding-left: 10px;">
				<br>
				<b style="color: blue"><a href="file:/C:/Users/DELL/Desktop/JVB-TTS-JAVA/HTML%20+%20CSS%20+%20JS/demobootstrap/bootstrapwebdemo1.html" style="color: #01597b;">Home Page</a></b>
				<hr>
				<p> <a href="#" class="thay-mau"> List nguoi mua</a></p>
				<p> <a href="#" class="thay-mau"> List Product </a></p>
				<p> <a href="#" class="thay-mau"> List hoa don</a></p>
				<p> <a href="#" class="thay-mau">Add Admin</a></p>
				
				<br> <br> <br> 
				<br> <br> <br> 
				<br> <br> <br> 
			</td>
			<td bgcolor="#eee" width="100" height="200" style="cellpadding: 20px; padding-left: 10px;">
				<a href="<c:url value="/admin-list" />" >List Admin</a><br />
				<strong>Create new Admin:</strong>
				<form:form action="saveAdmin" method="post" modelAttribute="admin">
					
					<br><br> Name: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; <form:input type="text" name="name" id="name" path="name" placeholder="Enter name"/>
					<br><br> Email: &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <form:input type="email" name="email" path="email" id="email" placeholder="Enter email"/>
					<br><br> Password: &nbsp;&nbsp;&nbsp;&nbsp; <form:input type="password" name="password" id="pass" path="password" placeholder="Enter password"/>
					<br><br> Birth: &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;<form:input type="date" path="birth" name="birth" id="age" placeholder="Enter birth"/>
					<br><br> Phone: &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <form:input type="text" name="phone" id="phone" path="phone" placeholder="Enter phone" />
					

					
					<br><br>
					<br>&nbsp;&nbsp;&nbsp; <input type="submit" value="Create" style="background-color: #42c442;">
				</form:form>
			</td>
		</tr>
	</table>

	<!--SCRIPT   -->
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</body>
</html>