<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View All Users</title>
</head>
<body>
	<table border="1">
		<th>Employee Id</th>
		<th>Name</th>
		<th>Email Id</th>
		<th>Date Of Join</th>
		<th>Role</th>
		<c:forEach items="${allEmployees}" var="employee">
			<tr>
				<td>${employee.userId}</td>
				<td>${employee.userName}</td>
				<td>${employee.email}</td>
				<td>${employee.doj}</td>
				<td>${employee.role}</td>
			</tr>
		</c:forEach>	
	</table>
</body>
</html>