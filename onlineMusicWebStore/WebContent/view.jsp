<%@page import="java.util.ArrayList"%>
<%@page import="com.OMW.IR.DTO.ItemDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View</title>
<jsp:include page="includes/header.jsp"></jsp:include>
</head>
<body>
	
 	<%
		//jsp content
		List<ItemDto> list = (ArrayList<ItemDto>)request.getAttribute("list");
 	%>

<table class = "table" border = "1">
<thead class="thead-dark">
<tr>
	<th scope="col">ID</th>
	<th scope="col">ITEM NAME</th>
	<th scope="col">PRICE</th>
	<th scope="col">IMAGE</th>
	<th scope="col">UPDATE</th>
	<th scope="col">DELETE</th>
</tr>
</thead>
<%! String deleteUrl; %>
<%
	String tempUrl;


	for(int j = 0; j < list.size(); j++){
		ItemDto dto = list.get(j);
		String id = dto.getId();
		String name = dto.getName();
		float price = dto.getPrice();
		
		tempUrl = request.getContextPath()+ "/OperationController?page=updateItem"+
				"&id="+id+
				"&price="+price+
				"&name="+name;
		deleteUrl = request.getContextPath()+ "/OperationController?page=deleteItem"+
				"&id="+id;
		
	%>

<tr>
	<td><%= id %></td>
	<td><%= name %></td>
	<td><%= price %></td>
	<td><img src="./ImageDownloader?id=<%= id %>" alt="IMG-PRODUCT" style="width:200px;height:150px;" class="img-thumbnail"></td>
	<td><a href="<%=tempUrl %>">Update</a></td>
	<td><a href="<%=deleteUrl %>"
		onclick="if(!confirm('Are you sure you want to delete item?')) return false">Delete</a></td>
<% }%>

</tr>

</table>




</body>
<jsp:include page="includes/footer.jsp"></jsp:include>
</html>