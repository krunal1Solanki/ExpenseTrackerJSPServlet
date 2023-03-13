<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	
	<%@include file="Navbar.jsp"%>
	<%@include file="All_Files_CSS.jsp"%>

	
	
	<h2 style  = "color:blue; margin-left:40%">Login Page</h2>
	<form style = "margin-top : 3%; width: 70%; margin-left: 10%;" action = "loginServlet" method = "post">
  <div  class="form-group">
 	
 	 <c:if test="${not empty logoutMsg}">
  		<p  class = "text-center fs-4 text-danger" >${logoutMsg}</p>
  		<c:remove var="logoutMsg"/>
  	</c:if>
  	
  	 
  	<c:if test="${not empty msg}">
  		<p  class = "text-center fs-4 text-danger" >${msg}</p>
  	</c:if>
  	
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name = "email" aria-describedby="emailHelp" placeholder="Enter email" required> 
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name  = "password" placeholder="Password" required>
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  <br>
  <br>
	<c:if test="${not empty msg}">
  		<a class = "fs-5" href="register.jsp"> Register here </a>
  		<c:remove var="msg"/>
  	</c:if>
</form>

</body>
</html>