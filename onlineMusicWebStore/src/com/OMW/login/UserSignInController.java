package com.OMW.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/UserSignInController")
public class UserSignInController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		type = type.toLowerCase();

		// creating LoginDao object

		LoginDao dao = new LoginDao();
		
		//check weather he is a ADMIN
//		
//		if (type.equals("admin")) {
//			//validating admin username and passwords
//			if (dao.checkUser(name, password)) {
//				HttpSession session = request.getSession();
//				session.setAttribute("name", name);
//				request.getRequestDispatcher("admin.jsp").forward(request, response);
//			} else {
//				request.getRequestDispatcher("signin.jsp").forward(request, response);
//			}
//			//check if he is a user
//		} else if (type.equals("user")) {
//			//validating username and passwords
//			if (dao.checkUser(name, password)) {
//				HttpSession session = request.getSession();
//				session.setAttribute("name", name);
//				request.getRequestDispatcher("payment.jsp").forward(request, response);
//			}
//		} else {
//			request.getRequestDispatcher("signin.jsp").forward(request, response);
//		}
		
		if (dao.checkUser(name, password)) {
			if(type.equals("admin")) {
				
				HttpSession session = request.getSession();
				session.setAttribute("name", name);
				request.getRequestDispatcher("admin.jsp").forward(request, response);
			
			}
			else if(type.equals("user")) {
				
				HttpSession session = request.getSession();
				session.setAttribute("name", name);
				request.getRequestDispatcher("payment.jsp").forward(request, response);
			}
		} else {
			
			request.getRequestDispatcher("signin.jsp").forward(request, response);
		
		}
		
		
		
		
	}

}
