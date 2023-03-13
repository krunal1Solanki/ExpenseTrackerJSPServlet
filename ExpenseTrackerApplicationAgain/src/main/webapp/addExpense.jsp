<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

    <!-- Form code begins -->
    <form method="post" action = "addExpenseServlet" style = "margin-top : 3%; width: 70%; margin-left: 50%;">
    
    <div class="form-group"> <!-- Date input -->
        <label  >Title</label>
        <input class="form-control"  required name="title" placeholder="Enter title" type="text"/>
      </div>
      
      
      <div class="form-group"> <!-- Date input -->
        <label  for="date">Date</label>
        <input class="form-control" required id="date" name="date" placeholder="MM/DD/YYY" type="date"/>
      </div>
      <div class="form-group"> <!-- Date input -->
        <label  for="time">Time</label>
        <input class="form-control" id="time" required name="time" placeholder="Enter time" type="time"/>
      </div>
     
     <div class="form-group"> <!-- Date input -->
        <label  >Price</label>
        <input class="form-control"  name="price" required placeholder="Enter time" type="number"/>
      </div>
     
     
      <div class="form-group"> <!-- Submit button -->
        <button class="btn btn-primary " name="submit" required type="submit">Submit</button>
      </div>
      
     </form>
     <!-- Form code ends --> 

    </div>
  </div>    
 </div>
</div>

</body>
</html>