<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Project</title>
</head>
<body>
	<form action="addNewProject.html" method="post">
		<table>
			<tr><td>Project Id</td><td><input type="text" name="projectId" required></td></tr>
			<tr><td>Project Name</td><td><input type="text" name="projectName" required></td></tr>
			<tr><td>Description</td><td><textarea name="projectDescription" required></textarea></td></tr>
			<tr><td>Duration</td><td><input type="text" name="projectDuration" required></td></tr>
		</table>
	</form>
</body>
</html>