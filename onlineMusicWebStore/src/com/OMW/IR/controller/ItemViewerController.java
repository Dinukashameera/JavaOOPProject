package com.OMW.IR.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import com.OMW.IR.DAO.ItemDAO;
import com.OMW.IR.DTO.ItemDto;

/**
 * Servlet implementation class ItemViewerController
 */
@WebServlet("/ItemViewerController")
public class ItemViewerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//IR = item retreiving

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String page = req.getParameter("page");
		
		if(page.equals("product")) {		
			
			ItemDAO itemDao = null;
			itemDao = new ItemDAO();
		
			List<ItemDto> list = itemDao.getData();
		
			req.setAttribute("list", list);
			RequestDispatcher dispatcher = req.getRequestDispatcher("product.jsp");

			dispatcher.forward(req, resp);
			
		
		}
		else {
			RequestDispatcher dispatcher = req.getRequestDispatcher("error.jsp");
		}
	}
	
	
	
	////////// CART //////
	
	
	
	
	
	
	
	

}
