package com.OMW.IR.downloader;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.OMW.IR.DAO.ItemDAO;

/**
 * Servlet implementation class ImageDownloader
 */
@WebServlet("/ImageDownloader")
public class ImageDownloader extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ItemDAO dao = null;
		ServletOutputStream outputStream = null;
		String id = req.getParameter("id");
		dao = new ItemDAO();
		
		byte[] itemImage = dao.getItemImage(id);
		outputStream = resp.getOutputStream();
		outputStream.write(itemImage);
		outputStream.close();
	}
}
