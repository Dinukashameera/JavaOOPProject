package com.OMW.IR.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.IR.DAO.CartDao;
import com.OMW.IR.DTO.CartDto;

/**
 * Servlet implementation class CartRetrieving
 */
@WebServlet("/CartRetrieving")
public class CartRetrieving extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	
	
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		CartDao cartDao = new CartDao();
		System.out.println("completed the forwarding");
		
		//List<> list = itemDao.getData();
		List<CartDto> cartList = cartDao.getOrder();
		req.setAttribute("cartList", cartList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("cart.jsp");
		
		dispatcher.forward(req, resp);
		

		}
	
}
