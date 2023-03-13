package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.etities.UserEntity;
import com.utils.FactoryProvider;

/**
 * Servlet implementation class Register

 *
 */

@WebServlet("/RegisterServlet")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	public Register() {
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		UserEntity userEntity = new UserEntity();
		userEntity.setEmail(email);
		userEntity.setName(name);
		userEntity.setPassword(password);
	
		Session session =FactoryProvider.getFactory().openSession();
		Transaction txTransaction = session.beginTransaction();
		session.save(userEntity);
		txTransaction.commit();
		session.close();
		
		response.setContentType("text/HTML");
		PrintWriter outPrintWriter = response.getWriter();
		outPrintWriter.println("Successfully registered");
		response.sendRedirect("login.jsp");
	}
}
