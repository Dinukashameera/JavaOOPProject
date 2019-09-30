package com.OMW.categoryController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Category
 */
@WebServlet("/Category")
public class Category extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch(page) {
		case "all":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		case "brass":
			request.getRequestDispatcher("brass.jsp").forward(request, response);
			break;
			
		case "percussion":
			request.getRequestDispatcher("percussion.jsp").forward(request, response);
			break;
			
		case "woodwind":
			request.getRequestDispatcher("woodwind.jsp").forward(request, response);
			break;
		case "string":
			request.getRequestDispatcher("string.jsp").forward(request, response);
			break;
			
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
			break;
		}
	}

}
