package com.OMW.IR.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.eclipse.jdt.internal.compiler.codegen.FloatCache;

import com.OMW.IR.DAO.CartDao;
import com.OMW.IR.DAO.ItemDAO;
import com.OMW.IR.DTO.CartDto;
import com.OMW.IR.DTO.ItemDto;
import com.OMW.utils.DbConnection;

/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	
	
	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = request.getParameter("page");
		page = page.toLowerCase();
		
		String name = request.getParameter("name");
		String Stringprice = request.getParameter("price");
		String id = request.getParameter("id");
		float price = Float.parseFloat(Stringprice);
		System.out.print(name);
		System.out.print(price);
		
		if(page.equals("addtocart")){

			Connection con = DbConnection.getConnection();
		
			System.out.print("near connection " + name);
			System.out.print(price);
			
			
			
			try {
				PreparedStatement ps = con.prepareStatement("insert into itemorder(Item_name,price)values(?,?)");
				ps.setString(1, name);
				ps.setFloat(2, price);
				int n = ps.executeUpdate();
				if(n > 0) {
					System.out.println("forwarding the servlet");
					getServletConfig().getServletContext().getRequestDispatcher("/CartRetrieving").forward(request, response);
					
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
		else {
			request.getRequestDispatcher("product.jsp").forward(request,response);
		}
		
		

		
		
		
	}
	

	
	
	}
	

