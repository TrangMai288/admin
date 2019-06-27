<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>

<meta charset="utf-8">
<meta http-equiv="X-UA-Comaptible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="bootstrapwebdemo5.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="bootstrap/css/bootstrap.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="C:/Users/DELL/fontawesome-free-5.9.0-web/css/fontawesome.css"
	rel="stylesheet">


<style>
@font-face {
	font-family: Open Sans;
	src: url("Open_Sans/Open_Sans-Light.ttf");
}

* {
	margin: 0;
	padding: 0;
	border-radius: 0 !important;
	font-family: Open Sans;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	display: none;
	position: absolute;
	z-index: 1;
	background-color: #f5f5f5;
}

.dropdown:hover .dropdown-content {
	display: block;
	background-color: #01597b;
	color: white !important;
}

.thay-mau {
	color: #0000bf !important;
}
</style>
</head>
<body>
${abc}
<c:out value="${abc}"></c:out>

	<c:url value="/admin-save" var="urlSave" />
	<c:url value="/admin-view/" var="urlView" />
	<c:url value="/admin-update/" var="urlUpdate" />
	<c:url value="/adminDelete/" var="urlDelete" />

	<nav class="navbar navbar-expand-lg navbar-light bg-light sticky-top">
		<div class="container">
			<a class="navbar-brand"
				href="file:/C:/Users/DELL/Desktop/JVB-TTS-JAVA/HTML%20+%20CSS%20+%20JS/demobootstrap/bootstrapwebdemo1.html">JVB'S
				SHOP</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div>
				<ul class="navbar-nav mr-auto">
					<li class="nav-item dropdown"><a href="#" class="nav-link"
						id="navbarDropdown">Tài khoản Admin&nbsp; </a>
						<div class="dropdown-content" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">Sửa thông tin</a> <a
								class="dropdown-item" href="#">Thay đổi mật khẩu</a> <a
								class="dropdown-item" href="#">Đăng xuất</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<table width="100%" border="0">
		<tr valign="top">
			<td style="background-color: #aaa; width: 22%; padding-left: 10px;">
				<br> <b style="color: blue"><a
					href="file:/C:/Users/DELL/Desktop/JVB-TTS-JAVA/HTML%20+%20CSS%20+%20JS/demobootstrap/bootstrapwebdemo1.html"
					style="color: #01597b;">Trang chủ</a></b>
				<hr>
				<p>
					<a href="#" class="thay-mau"> Danh sách người mua</a>
				</p>
				<p>
					<a href="#" class="thay-mau"> Danh sách mặt hàng</a>
				</p>
				<p>
					<a href="#" class="thay-mau"> Danh sách hóa đơn</a>
				</p>
				<p>
					<a href="#" class="thay-mau">Thêm Admin</a>
				</p> <br> <br> <br> <br> <br> <br> <br>
				<br> <br>
			</td>

			<td style="padding-left: 50px;">
				<h4>List Admin:</h4> <a href="admin-save">Add Admin</a> <br />
				<br />
				<table style="border: 1px black solid">
					<tr>
						<th style="border: 1px black solid">Id</th>
						<th style="border: 1px black solid">Name</th>
						<th style="border: 1px black solid">Email</th>
						<th style="border: 1px black solid">Birth</th>
						<th style="border: 1px black solid">Phone</th>
						<th style="border: 1px black solid">Password</th>
						<th style="border: 1px black solid">View</th>
						<th style="border: 1px black solid">Edit</th>
						<th style="border: 1px black solid">Delete</th>
					</tr>
				
						<c:forEach items="${listAdmin}"  var="admin" >
							<tr style="border: 1px black solid">
								<td style="border: 1px black solid"><c:out value="${admin.id}"/></td>
								<td style="border: 1px black solid">${admin.name}</td>
								<td style="border: 1px black solid">${admin.email}</td>
								<td style="border: 1px black solid">${admin.birth}</td>
								<td style="border: 1px black solid">${admin.phone}</td>
								<td style="border: 1px black solid">${admin.password}</td>
								<td style="border: 1px black solid"><a href="${admin-view}/${admin.id}">View</a></td>
								<td style="border: 1px black solid"><a href="${admin-update}/${admin.id}">Edit</a></td>
								<td style="border: 1px black solid"><a href="${adminDelete}/${admin.id}">Delete</a></td>
							</tr>
						</c:forEach>
				
				</table>
			</td>
		</tr>
	</table>

	<!--SCRIPT   -->
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</body>
</html>