<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>
</head>
<body>


	<%@include file="Navbar.jsp"%>
	<%@include file="All_Files_CSS.jsp"%>
	
	<h2 style  = "color:blue; margin-left:40%">Register Page</h2>
	
	
	<form style = "margin-top : 3%; width: 70%; margin-left: 10%;" action = "RegisterServlet" method = "post">
  <div  class="form-group">
    <label >Name</label>
    <input type="text" class="form-control" name = "name" aria-describedby="emailHelp" placeholder="Enter your name" required>
  </div>
  <div  class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name = "email" aria-describedby="emailHelp" placeholder="Enter email" required> 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name  = "password" placeholder="Password" required>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
	
</body>
</html>