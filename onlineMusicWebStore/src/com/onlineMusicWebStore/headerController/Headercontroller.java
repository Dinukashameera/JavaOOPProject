package com.onlineMusicWebStore.headerController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class Headercontroller
 */
@WebServlet("/home")
public class Headercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	HttpSession session;
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch(page) {
		case "home":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
			
		case "sale":
			request.getRequestDispatcher("sale.jsp").forward(request, response);
			break;
			
		case "product":
			request.getRequestDispatcher("product.jsp").forward(request, response);
			break;
		case "about":
			request.getRequestDispatcher("about.jsp").forward(request, response);
			break;
			
		case "contact":
			request.getRequestDispatcher("contact.jsp").forward(request, response);
			break;
		case "cart":
			request.getRequestDispatcher("cart.jsp").forward(request, response);
			break;
		case "payment":
			getServletConfig().getServletContext().getRequestDispatcher("/CartRetrieving").forward(request, response);
			//request.getRequestDispatcher("payment.jsp").forward(request, response);
			break;
		case "signin":
			request.getRequestDispatcher("signin.jsp").forward(request, response);
			break;
		case "signup":
			request.getRequestDispatcher("signup.jsp").forward(request, response);
			break;
//		case "customer":
//			getServletConfig().getServletContext().getRequestDispatcher("/AdminCustomerController");
//			break;
//		case "adminpayment":
//			getServletConfig().getServletContext().getRequestDispatcher("/AdminPaymentController");
//			break;
				
				
		case "logout":
			userLogout(request, response);
			break;	
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
		
	
	}
	
	public void userLogout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("name");
		session.removeAttribute("carlist");
		session.removeAttribute("list");
		session.invalidate();
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

}
