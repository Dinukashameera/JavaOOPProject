package com.OMW.IR.DTO;

//Data transfer object design pattern
public class ItemDto {
	private String id;
	private String name;
	private float price;
	
	//default constructor is created
	public ItemDto() {
		
	}
	
	public ItemDto(String id, String name, float price) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
	}



	//setters and getters
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	
	

}