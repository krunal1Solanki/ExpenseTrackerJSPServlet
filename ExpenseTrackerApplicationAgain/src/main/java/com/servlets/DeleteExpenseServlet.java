package com.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.etities.Expense;
import com.repository.ExpenseRepository;
import com.utils.FactoryProvider;

/**
 * Servlet implementation class DeleteExpenseServlet
 */
@WebServlet("/deleteExpense")
public class DeleteExpenseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public DeleteExpenseServlet() {
    
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Session session = FactoryProvider.getFactory().openSession();
		Transaction transaction = session.beginTransaction();
		Expense expense = ExpenseRepository.getExpenseById(id);
		session.delete(expense);
		transaction.commit();
		session.close();
		HttpSession ses = request.getSession();
		ses.setAttribute("deleteMsg", "Expense Deleted Successfully");
		response.sendRedirect("viewExpense.jsp");
	}

}
