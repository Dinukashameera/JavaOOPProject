package com.OMW.IR.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.OMW.IR.DTO.CartDto;
import com.OMW.IR.DTO.ItemDto;
import com.OMW.utils.DbConnection;

public class CartDao {
	private final String GET_ORDER_DATA = "select * from itemorder";
	private final String DELETE_CART_ITEM =  "delete from itemorder where id = ?";
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	
	public List getOrder() {
		CartDto cartDto = null;
		
		//using list interface to store data.. Geeric type will be itemDto
		List<CartDto> cartList = new ArrayList<CartDto>();
		
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_ORDER_DATA);
			rs = ps.executeQuery();
			while(rs.next()) {
				cartDto = new CartDto();
				//setting data
				
				cartDto.setOrderId(rs.getInt(1));
				cartDto.setOrderItemName(rs.getString(2));
				cartDto.setItemPrice(rs.getFloat(3));
				//adding the object to the LIST
				cartList.add(cartDto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return cartList;
	
	}
	
	
	

	public void deleteCartItem(int itemId) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbConnection.getConnection();
			
			
			ps = con.prepareStatement(DELETE_CART_ITEM);
			ps.setInt(1,itemId);
			ps.execute();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
}
