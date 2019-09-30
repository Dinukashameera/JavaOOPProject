package com.OMW.itemupload.controller;

import java.io.File;
import java.io.FileInputStream;
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
 * Servlet implementation class ItemUpload
 */
@WebServlet("/ItemUpload")
public class ItemUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//getting data from the admin form
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String price = request.getParameter("price");
		String image = request.getParameter("image");// here we get the path of the image
		
		FileInputStream fis = new FileInputStream(new File(image));
		//getting the connection from the helper class (DbConnection)
		Connection con = DbConnection.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("insert into items(id,name,price,image)values(?,?,?,?)");
			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, price);
			ps.setBinaryStream(4, fis);
			int n = ps.executeUpdate();
			if(n > 0) {
				request.getRequestDispatcher("admin.jsp").forward(request, response);
			}
			else {
				response.getWriter().println("unsucessfull");
			}
		
		} catch (SQLException e) {
			System.out.println("ERROR IS "+e);
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
