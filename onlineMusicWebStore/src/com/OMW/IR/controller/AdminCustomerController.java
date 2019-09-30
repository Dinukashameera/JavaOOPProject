package com.OMW.IR.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.IR.DAO.ItemDAO;
import com.OMW.IR.DTO.ItemDto;
import com.OMW.login.LoginDao;
import com.OMW.login.UserDto;
import com.OMW.paymentController.PaymentDao;
import com.OMW.paymentController.PaymentDto;

/**
 * Servlet implementation class AdminCustomerPaymentController
 */
@WebServlet("/AdminCustomerController")
public class AdminCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//payment

		LoginDao loginDao = null;
		loginDao = new LoginDao();
	
		List<UserDto> userList = loginDao.getData();
		//out.print(userList.size());
		
		request.setAttribute("userList", userList);
		RequestDispatcher dispatcher1 = request.getRequestDispatcher("CustomerProduct.jsp");		
		dispatcher1.forward(request, response);	
		
	}

	
}

		
	
	

