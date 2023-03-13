package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.etities.UserEntity;
import com.repository.GetLogin;


@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginServlet() {
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email").toString();
		String password = request.getParameter("password").toString();
		
		UserEntity userEntity = GetLogin.getLogin(email, password);
		
		HttpSession session = request.getSession();

		if(userEntity == null) {
			session.setAttribute("msg", "Invalid username or password");
			response.sendRedirect("login.jsp");
		}
		else {
			session.setAttribute("login", userEntity);
			response.sendRedirect("UserHomePage.jsp");
		}
	}
}
