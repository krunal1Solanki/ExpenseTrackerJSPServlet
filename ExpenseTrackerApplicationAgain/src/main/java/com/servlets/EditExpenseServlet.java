package com.servlets;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.etities.Expense;
import com.utils.FactoryProvider;

/**
 * Servlet implementation class EditExpenseServlet
 */
@WebServlet("/editExpenseServlet")
public class EditExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	public EditExpenseServlet() {
    
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		
		String name = request.getParameter("name");
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		
		String date = request.getParameter("date");
		//convert String to LocalDate
		LocalDate localDate = LocalDate.parse(date);
		
		String timeStr = request.getParameter("time");
		LocalTime time = LocalTime.parse(timeStr);
		
		
		Query query = session.createQuery("from Expense where id=:exId");
		query.setParameter("exId", id);
		Expense expense = (Expense)query.uniqueResult();
		

		expense.setDate(localDate);
		expense.setPrice(price);
		expense.setTime(time);
		expense.setTitle(title);
		
		
		session.saveOrUpdate(expense);
		transaction.commit();
		session.close();
		HttpSession ses = request.getSession();
		ses.setAttribute("editMsg", "Successfully Updated");
		response.sendRedirect("viewExpense.jsp");
	}

}
