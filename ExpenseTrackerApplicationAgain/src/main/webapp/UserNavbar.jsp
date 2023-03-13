<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<%@include file = "All_Files_CSS.jsp" %>
<%@include file = "UserNavbarCSS.jsp" %>
<header>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Expense Tracker</a>
  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    	<span class="navbar-toggler-icon"></span>
 	 </button>

	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav ml-auto">
		  <c:if test = "${not empty login}">
				
		      <li class="nav-item active">
		        <a class="nav-link" href="addExpense.jsp"><i class="fa-solid fa-plus"></i> Add Expense</a>
		      </li>
		      
		      <li class="nav-item active">
		        <a class="nav-link" href="viewExpense.jsp"><i class="fa-solid fa-eye"></i> View Expenses</a>
		      </li>
		      
		      <li class="nav-item active">
		        <a class="nav-link" ><i class="fa-solid fa-eye"></i> ${login.getName()}</a>
		      </li>
		       <li class="nav-item active">
		        <a class="nav-link" href="logoutServlet	"><i class="fa-solid fa-right-from-bracket"></i> Logout</a>
		      </li>      
  		</c:if>	
		
		  <c:if test = "${empty login}">      
	   	 	<li class="nav-item active">
	       		<a class="nav-link" href="register.jsp">Register</a>
	     	</li>
	      	<li class="nav-item active">
	       		<a class="nav-link" href="login.jsp">Login</a>
	     	</li>
	    </c:if>
	    </ul>
	  </div>
</nav>	  
</header>
  
<body>
</body>
</html>