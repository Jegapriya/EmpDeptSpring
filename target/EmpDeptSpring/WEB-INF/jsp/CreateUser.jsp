<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	User Creation page
	<form action="createNew.html" method="post">
	<table>
		<tr><td>User Id </td><td><input type="text" name="userId" required/></tr>
		<tr><td>Password </td><td><input type="password" name="password" required/></tr>
		<tr><td>Re-type Password </td><td><input type="password" name="rePassword" required/></tr>
		<tr><td><input type="submit" value="Create"></td>
	</form>
	<form action="login.html" method="post">
		<td><input type="submit" value="Back"/></td></tr>
	</table>
	</form>
</body>
</html>