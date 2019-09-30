package com.OMW.paymentController;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.utils.DbConnection;

/**
 * Servlet implementation class PaymentController
 */
@WebServlet("/PaymentController")
public class PaymentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private final String GET_PAYMENT = "insert into payment(cname,cemail,city,cardNumber,expirydate,cvc)VALUES(?,?,?,?,?,?)";
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String cardNumber= request.getParameter("cardNumber");
		String date = request.getParameter("date");
		String cvc = request.getParameter("cvc");
		Connection con = DbConnection.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement(GET_PAYMENT);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, city);
			ps.setString(4, cardNumber);
			ps.setString(5, date);
			ps.setString(6, cvc);
			
			int n = ps.executeUpdate();
			if(n > 0) {
				request.getRequestDispatcher("thankyou.jsp").forward(request, response);
			}
			else {
				response.getWriter().println("unsucessfull registration");
			}
		
		} catch (SQLException e) {
			System.out.println("ERROR IS "+e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		
		
		}
	}

}
