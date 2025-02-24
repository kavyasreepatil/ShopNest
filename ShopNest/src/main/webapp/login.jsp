<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Customer Login</title>
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div class="login">
		<form id="login" action="log" method="post">
			<h2>Login to start shopping</h2>
			<br> <label><b>User Name </b> </label> <input type="text"
				name="uname" id="textBox" placeholder="Username" required> <br>
			<br> <label><b>Password </b> </label> <input type="Password"
				name="pass" id="textBox" placeholder="Password"> <br>
			<br> <input type="submit" id="sub" value="Log In" required> <br>
			<br> <a href="register.jsp">New user? Register here</a>
		</form>
	</div>
</body>
</html>