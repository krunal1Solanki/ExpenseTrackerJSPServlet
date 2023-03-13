<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<%@include file="All_Files_CSS.jsp"%>
	<%@include file = "UserNavbarCSS.jsp" %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Expense Tracker</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
      	   
        <a class="nav-link" href="home.jsp"><i class="fa-solid fa-house"></i> Home</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i> Login</a>
      </li>      
       <li class="nav-item active">
        <a class="nav-link" href="register.jsp"><i class="fa-solid fa-right-to-bracket"></i> Register</a>
      </li>      
    </ul>
  </div>
</nav>
</body>
</html>