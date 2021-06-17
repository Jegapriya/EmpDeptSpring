<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="viewById.html">
	<table>
		<tr><td>Enter the Employee Id</td><td><input type="text" name="empId"></td><td><input type="submit" value="View"/></td></tr>
		<tr><td>Employee Id</td><td>${employee.userId}</td></tr>
		<tr><td>Employee Name</td><td>${employee.userName}</td></tr>
		<tr><td>Date of Join </td><td>${employee.doj}</td></tr>
		<tr><td>Employee email</td><td>${employee.email}</td></tr>
		<tr><td>Employee Role</td><td>${employee.role}</td></tr>
	</table>
	
	</form>
	
</body>
</html>