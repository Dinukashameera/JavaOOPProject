package com.OMW.itemOperation.Controller;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.IR.DAO.CartDao;
import com.OMW.IR.DAO.ItemDAO;
import com.OMW.IR.DTO.ItemDto;
import com.OMW.utils.DbConnection;

/**
 * Servlet implementation class OperationController
 */
@WebServlet("/OperationController")
public class OperationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		switch(page) {
		case "updateitem":			
			updateFormLoader(request,response);	
			getServletConfig().getServletContext().getRequestDispatcher("/ItemViewerController");
			request.getRequestDispatcher("admin.jsp").forward(request, response);
			
			break;

		case "deleteitem":
			deleteItem(request.getParameter("id"));
			//servlet chaining
			getServletConfig().getServletContext().getRequestDispatcher("/ItemViewerController");
			request.getRequestDispatcher("admin.jsp").forward(request, response);
			break;
			

		case "deletecartitem":
			deleteCartItem(request.getParameter("id"));
			//servlet chaining
			getServletConfig().getServletContext().getRequestDispatcher("/CartRetrieving").forward(request, response);
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		default:
			request.getRequestDispatcher("error.jsp").forward(request, response);
			
			break;
		}
				
		
	}
	
	private void deleteCartItem(String id1) {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(id1);
		new CartDao().deleteCartItem(id);
	}

	//deleting items from database
	private void deleteItem(String itemId) {
		new ItemDAO().deleteItem(itemId);
		
	}
	//loading the populated updated form
	private void updateFormLoader(HttpServletRequest request, HttpServletResponse response) {
	//	request.setAttribute("title", "update Item");
		
		updateItem(request.getParameter("id"),request.getParameter("name"),Float.parseFloat(request.getParameter("price")));
		getServletConfig().getServletContext().getRequestDispatcher("/ItemViewerController");

		try {
			
			request.getRequestDispatcher("updateItem.jsp").forward(request, response);
			//ItemDto updateDto = new ItemDto(request.getParameter("id"),request.getParameter("name"),Float.parseFloat(request.getParameter("price")));
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		

		//getServletConfig().getServletContext().getRequestDispatcher("./AdminViewController");
		
		//need to be deleted 
		//testing
		

		
		
	}
	private void updateItem(String id, String name, float price) {
		new ItemDAO().updateItem(id,name,price);
		
	}

//	private void updateItem(ItemDto updateDto) {
//		
//		
//	}





}
