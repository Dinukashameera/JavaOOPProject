package com.OMW.IR.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.IR.DAO.ItemDAO;
import com.OMW.IR.DTO.ItemDto;

/**
 * Servlet implementation class AdminViewController
 */
@WebServlet("/AdminViewController")
public class AdminViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
		protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ItemDAO itemDao = null;
		itemDao = new ItemDAO();
		
		List<ItemDto> list = itemDao.getData();
		
		req.setAttribute("list", list);
		RequestDispatcher dispatcher = req.getRequestDispatcher("view.jsp");

		dispatcher.forward(req, resp);
		}
}
