package com.OMW.paymentController;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.OMW.IR.DTO.ItemDto;
import com.OMW.utils.DbConnection;

public class PaymentDao {
	private final String GET_PAY_DETAILS = "select pid,cname,cemail from payment";
	
	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	//dao methods
	public List getData() {
		PaymentDto payDto = null;
		
		//using list interface to store data.. Generic type will be itemDto
		List<PaymentDto> payList = new ArrayList<>();
		try {
			con = DbConnection.getConnection();
			ps = con.prepareStatement(GET_PAY_DETAILS);
			rs = ps.executeQuery();
			while(rs.next()) {
				payDto = new PaymentDto();
				//setting data into dto 
				payDto.setPid(rs.getInt(1));
				payDto.setCname(rs.getString(2));
				payDto.setCemail(rs.getString(3));
				payList.add(payDto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return payList;
	
	}

}
