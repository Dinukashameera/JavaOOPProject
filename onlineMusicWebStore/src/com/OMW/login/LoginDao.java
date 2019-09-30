package com.OMW.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.OMW.paymentController.PaymentDto;
import com.OMW.utils.DbConnection;

public class LoginDao {
	
	Connection con = null;
	ResultSet rs = null;
	PreparedStatement ps = null;
	private final String GET_USER_LOGIN = "SELECT * FROM user where name = ? and password = ?";
	private final String GET_USER = "select id,name,email,type,password from user";
	
	
	public boolean checkUser(String name, String password) {
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_USER_LOGIN);
			ps.setString(1, name);
			ps.setString(2, password);
			
			//result set is a interface
			rs = ps.executeQuery();
			if(rs.next()) {
				return true;
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return false;
	}
	
	public List getData() {
		UserDto userDto = null;
		
		//using list interface to store data.. Generic type will be itemDto
		List<UserDto> userList = new ArrayList<>();
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_USER);
			rs = ps.executeQuery();
			while(rs.next()) {
				userDto = new UserDto();
				//setting data into dto
				userDto.setId(rs.getInt(1));
				userDto.setName(rs.getString(2));
				userDto.setEmail(rs.getString(3));
				userDto.setType(rs.getString(4));
				userDto.setPassword(rs.getString(5));

				userList.add(userDto);
			}
		} catch (SQLException e) {
			System.out.println("ERROR Is here " + e);
			e.printStackTrace();
		}
		
		return userList;
	
	}
	
	
	

}
