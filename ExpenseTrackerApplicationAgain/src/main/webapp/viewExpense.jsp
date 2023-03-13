<%@page import="com.repository.ExpenseRepository"%>
<%@page import="com.etities.UserEntity"%>
<%@page import="java.util.*"%>
<%@page import="com.etities.Expense"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Expenses</title>
</head>
<body>

	<% 
		if(session.getAttribute("login") == null)
				response.sendRedirect("login.jsp");
	%>
	<%@include file = "All_Files_CSS.jsp" %>
	<%@include file = "UserNavbar.jsp" %>
	<form action="updateServlet" method="post">
	<c:if test="${not empty editMsg}">
		<p  class = "text-center fs-4 text-danger" >${editMsg}</p>
		<c:remove var="editMsg"/>
	</c:if>
	<c:if test="${not empty deleteMsg}">
		<p  class = "text-center fs-4 text-danger" >${deleteMsg}</p>
		<c:remove var="deleteMsg"/>
	</c:if>
	 <c:if test="${not empty addMsg}">
  		<p  class = "text-center fs-4 text-danger" >${addMsg}</p>
  		<c:remove var="addMsg"/>
  	</c:if>
	<table class="table">
	  <thead>
	    <tr>
	      <th scope="col">No</th>
	      <th scope="col">Title</th>
	      <th scope="col">Date</th>
	      <th scope="col">Time</th>
	      <th scope="col">Price</th>
	      <th scope="col">Edit</th>
	      <th scope="col">Delete</th>
	    </tr>
	  </thead>
	  <tbody>
	  	<%! List<Expense> list = new ArrayList<>();%>  
	  	<%
	  		int count = 0;
	  		UserEntity user = (UserEntity) session.getAttribute("login");
	  		list = ExpenseRepository.getExpenseList(user);
	  		for(Expense ex : list) {
	  	 	%>
	  		<tr>
			      <th scope="row"><%=++count %></th>
			      <td><%=ex.getTitle()%></td>
			      <td><%=ex.getDate()%></td>
			      <td><%=ex.getTime()%></td>
			      <td><%=ex.getPrice()%></td>
			      <td><a href="editExpense.jsp?id=<%=ex.getId()%>">Edit </a> </td>
			      <td>
			      	<a href="deleteExpense?id=<%=ex.getId()%>">Delete</a>
			      <td>
	   		</tr>
	  		<%
	  		}
	  		%>
	    
	  </tbody>
</table>
	</form>

</body>
</html>