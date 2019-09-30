package com.OMW.IR.DTO;

public class CartDto {
	private int orderId;
	private String orderItemName;
	private float itemPrice;
	
	
	
	public CartDto() {
		super();
	}


	public CartDto(int orderId, String orderItemName, float itemPrice) {
		super();
		this.orderId = orderId;
		this.orderItemName = orderItemName;
		this.itemPrice = itemPrice;
	}
	
	
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public String getOrderItemName() {
		return orderItemName;
	}
	public void setOrderItemName(String orderItemName) {
		this.orderItemName = orderItemName;
	}
	public float getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(float itemPrice) {
		this.itemPrice = itemPrice;
	}
	

}
