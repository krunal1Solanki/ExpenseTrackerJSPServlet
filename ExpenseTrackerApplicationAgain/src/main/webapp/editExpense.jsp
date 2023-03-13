<%@page import="com.repository.ExpenseRepository"%>
<%@page import="com.etities.UserEntity"%>
<%@page import="com.etities.Expense"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
</head>
<body>
	<% 
		if(session.getAttribute("login") == null)
				response.sendRedirect("login.jsp");
	%>
	<%@include file = "All_Files_CSS.jsp" %>
	<%@include file = "UserNavbar.jsp" %>

	
<div class="bootstrap-iso">
 <div class="container-fluid">
  <div class="row">
   <div class="col-md-6 col-sm-6 col-xs-12">

	<% 
  			int id = Integer.parseInt(request.getParameter("id"));
  			Expense ex = ExpenseRepository.getExpenseById(id);
  			
	 %>

    <!-- Form code begins -->
    <form method="post" action = "editExpenseServlet" style = "margin-top : 3%; width: 70%; margin-left: 50%;">
    
  	
    <div class="form-group"> <!-- Date input -->
        <label  >Title</label>
        <input class="form-control"  required name="title" placeholder="Enter title" type="text" value="<%=ex.getTitle()%>"/>
      </div>
      
      
      <div class="form-group"> <!-- Date input -->
        <label  for="date">Date</label>
        <input class="form-control" required id="date" name="date" placeholder="MM/DD/YYY" value="<%=ex.getDate()%>" type="date" />
      </div>
      <div class="form-group"> <!-- Date input -->
        <label  for="time">Time</label>
        <input class="form-control" id="time" required name="time" placeholder="Enter time" type="time" value="<%=ex.getTime()%>"/>
      </div>
     
     <div class="form-group"> <!-- Date input -->
        <label  >Price</label>
        <input class="form-control"  name="price" required placeholder="Enter time" type="number" value="<%=ex.getPrice()%>"/>
      </div>
     
    <input type="hidden" name="id" type="text" value="<%=ex.getId()%>"/>

     
      <div class="form-group"> <!-- Submit button -->
        <button class="btn btn-primary " name="submit" type="submit">Update</button>
      </div>
      
     </form>
     <!-- Form code ends --> 

    </div>
  </div>    
 </div>
</div>
</body>
</html>