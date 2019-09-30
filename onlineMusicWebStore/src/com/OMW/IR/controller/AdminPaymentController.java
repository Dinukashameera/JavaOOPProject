package com.OMW.IR.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.paymentController.PaymentDao;
import com.OMW.paymentController.PaymentDto;

/**
 * Servlet implementation class AdminPaymentController
 */
@WebServlet("/AdminPaymentController")
public class AdminPaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PaymentDao payDao = null;
		payDao = new PaymentDao();
		
		List<PaymentDto> payList = payDao.getData();
		
		request.setAttribute("payList", payList);
		RequestDispatcher dispatcher = request.getRequestDispatcher("AdminProduct.jsp");

		dispatcher.forward(request, response);	
		
	}

}
