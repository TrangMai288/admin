<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
  <a href="<c:url value="/admin-list" />" >List Admin</a><br />
  <h1>View Admin:</h1>  
  Admin ID: ${admin.id} <br/>
  Admin Name: ${admin.name} <br/>
  Admin Email: ${admin.email} <br>
  Admin Birth: ${admin.phone} <br>
  Admin Phone: ${admin.phone} <br>
  Admin Password: ${admin.password} <br>
</body>
</html>