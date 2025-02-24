<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	    <title>Customer Registration</title>
	    <link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
	    
	    <div class="register">
		    <form method="post" action="reg">
		    <h2>Register here</h2><br>
		        <label><b>User Name
		        </b>
		        </label>	<br>
		        <input type="text" name="uname" id="textBox" placeholder="Username" required>
		        <br><br>
		        <label><b>Email
		        </b>
		        </label>	<br>
		        <input type="text" name="mail" id="textBox" placeholder="E mail" required>
		        <br><br>
		        <label><b>Password
		        </b>
		        </label>	<br>
		        <input type="Password" name="pass" id="textBox" placeholder="Password" required>
		        <br><br>
		        <label><b>Gender
		        </b>
		        </label>	<br>
		       <label> <input type="radio" name="gender" value="male"/> Male   </label>
				<label><input type="radio" name="gender" value="female"/> Female </label>
				<label><input type="radio" name="gender" value="other"/> Other </label>  <br><br>
		        <label><b>Address
		        </b>
		        </label>	<br>
		        <textarea rows="2" cols="20" id="textBox" class="form-control" name="address" required></textarea>
		        <br><br>
		        <input type="submit" id="sub" value="Register">
		        <br><br>
		        <a href="login.jsp">Already registered? Sign in instead</a>
		    </form>
	</div>
	</body>
</html>