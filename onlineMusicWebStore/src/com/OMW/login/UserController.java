package com.OMW.login;

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
 * Servlet implementation class UserController
 */
@WebServlet("/UserController")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//id is auto incremented
		//String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String type = request.getParameter("type");
		String confirmPassword = request.getParameter("confirmPassword");
		
		if(!password.equals(confirmPassword)) {
			request.getRequestDispatcher("signup.jsp").forward(request, response);
		}else {
		
		Connection con = DbConnection.getConnection();
		
		try {
			PreparedStatement ps = con.prepareStatement("insert into user(name,email,type,password)values(?,?,?,?)");
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, type);
			ps.setString(4, password);
			
			int n = ps.executeUpdate();
			if(n > 0) {
				request.getRequestDispatcher("signin.jsp").forward(request, response);
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
}
