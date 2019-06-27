<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
  <a href="<c:url value="/admin-list" />">List Admin</a>
  <br />
  <h1>Edit Admin:</h1>
  <c:url value="/updateAdmin" var="updateAdmin" />
  <form:form action="${updateAdmin}" method="POST" modelAttribute="Admin">
      Id: <form:input path="id" readonly="true" /> <br/> <br/>
      Name: <form:input path="name" /> <br/> <br/>
      Email: <form:input path="email" /> <br/> <br/>
      Birth: <form:input path="birth" /> <br/> <br/>
      Phone: <form:input path="phone" /> <br/> <br/>
      Password : <form:input path="password" /> <br/> <br/>
    <button type="submit">Submit</button>
  </form:form>
</body>
</html>