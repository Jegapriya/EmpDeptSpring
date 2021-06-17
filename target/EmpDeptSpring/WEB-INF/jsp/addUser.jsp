<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adding New User</title>
</head>
<body>
	<form action="createEmployee.html" method="post">
		<table>
		<tr><td>UserId </td><td><input type="text" name="userId" required pattern="[Mm]{1}[1]{1}[0]{1}[4]{1}[0-9]{4}" placeholder="eg:M104XXXX"></td></tr>
		<tr><td>Username </td><td><input type="text" name="userName" required pattern="[a-zA-z]+" placeholder="eg:XXX"></td></tr>
		<tr><td>Password </td><td><input type="password" name="password" required pattern="[1-9]*[0]*[a-zA-Z0-9]{5,}" placeholder="eg:xxx123XXXX"></td></tr>
		<tr><td>Date of Joining </td><td><input type="date" name="doj" required placeholder="eg:yyyy/mm/dd"></td></tr>
		<tr><td>Email-Id </td><td><input type="text" name="email" required pattern="[a-zA-z]{5,}[1-9]*@[a-z]{3,5}.[a-z]{2,3}" placeholder="eg:xxxxx@xxx.xxx"></td></tr>
		<tr><td>Role </td><td><input type="text" name="role" required pattern="[a-zA-z]+" placeholder="eg:Developer"></td></tr>
		<tr><td><input type="submit" value="Create"></td>
		</tr>
		</table>
	</form>
	<!--  <form action="reloadAdmin.html" method="post">
		<td><input type="submit" value="Back"></td></tr>
	</form> -->
		<!-- </table> -->
	
</body>
</html>
