<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<style>
	td{
		padding:10px;
	}
</style>
</head>
<body>
	<form action="login.html" method="post">
	<center>Login Page
	<table style="background-color:blue;margin:100px;padding:25px">
	<tr><td>User Id</td><td><input type="text" name="userId" required/></td></tr>
	<tr><td>Password</td><td><input type="password" name="password" required/></td></tr>
	<tr><td><input type="submit" value="Login"/>
	</form>
	<form action="clear.html">
		</td><td><input type="submit" value="Clear"/></td></tr>
	</table>
	</center>
	</form>
	<table>
		<tr>
		<td><% out.print(System.getProperty("ENVIRON")); %></td>
		</tr>
	</table>
</body>
</html>
