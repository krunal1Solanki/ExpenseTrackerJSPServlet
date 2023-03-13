package com.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.etities.Expense;
import com.etities.UserEntity;
import com.utils.FactoryProvider;

@WebServlet("/addExpenseServlet")
public class AddExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddExpenseServlet() {
    
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Expense expense = new Expense();
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		
		String date = request.getParameter("date");
		//convert String to LocalDate
		LocalDate localDate = LocalDate.parse(date);
		
		String timeStr = request.getParameter("time");
		LocalTime time = LocalTime.parse(timeStr);
		
		HttpSession ses = request.getSession();
	    UserEntity userEntity = (UserEntity)ses.getAttribute("login");
	    ses.setAttribute("addMsg", "Expense Added Successfully");
	    
	    expense.setDate(localDate);
		expense.setPrice(price);
		expense.setTime(time);
		expense.setTitle(title);
		expense.setUserEntity(userEntity);
	    
		Session session = FactoryProvider.getFactory().openSession();
		Transaction txTransaction = session.beginTransaction();
		session.save(expense);
		txTransaction.commit();
		session.close();

		response.sendRedirect("viewExpense.jsp");
	}

}
