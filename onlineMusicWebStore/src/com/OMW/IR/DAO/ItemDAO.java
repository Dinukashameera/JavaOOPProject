package com.OMW.IR.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.OMW.IR.DTO.ItemDto;
import com.OMW.utils.DbConnection;

public class ItemDAO {
	//initialize the connection,prepared statement and Resukt set with null value
	//getting the query data for a Constant
	private final String GET_DATA = "select id,name,price from items";
	private final String GET_IMAGE_QUERY ="select image from items where id = ?";
	private final String GET_ITEM_UPDATE = "update items set name = ? , price = ? where id = ?";
	private final String DELETE_IETM = "delete from items where id = ?";
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	//dao methods
	public List getData() {
		ItemDto itemDto = null;
		
		//using list interface to store data.. Geeric type will be itemDto
		List<ItemDto> itemList = new ArrayList<ItemDto>();
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_DATA);
			rs = ps.executeQuery();
			while(rs.next()) {
				itemDto = new ItemDto();
				//setting data into dto 
				itemDto.setId(rs.getString(1));
				itemDto.setName(rs.getString(2));
				itemDto.setPrice(rs.getFloat(3));
				itemList.add(itemDto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return itemList;
	
	}
	
	
	
	public byte[] getItemImage(String id) {
		byte[] itemImage =null;
		
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_IMAGE_QUERY);
			ps.setString(1, id);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				itemImage = rs.getBytes(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return itemImage;
	}
	
	



	public void deleteItem(String itemId) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbConnection.getConnection();
			
			
			ps = con.prepareStatement(DELETE_IETM);
			ps.setString(1,itemId);
			ps.execute();
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	}



	public void updateItem(String id, String name, float price) {
		Connection con = null;
		PreparedStatement ps = null;
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_ITEM_UPDATE);		
			ps.setString(1,name);
			ps.setFloat(2, price);;
			ps.setString(3,id);
			
			ps.execute();
			
		} catch (Exception e) {
			System.out.println("Update Error = " + e);
		}
		
	}
	

	
	
	
	
	
	
	
	
}
