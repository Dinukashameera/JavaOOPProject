<%@page import="com.OMW.login.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.OMW.paymentController.PaymentDto"%>
<%@page import="java.util.List"%>
<jsp:include page="includes/header.jsp"></jsp:include>
<body>
	
	<h1 align="center">CUSTOMER DETAILS</h1>
	<br />
	<br />
	<br />
	<br/>
	<%
		//jsp content
		List<UserDto> userList = (ArrayList<UserDto>) request.getAttribute("userList");
	%>

   <div class="table-responsive">
	<table class="table table-hover table-sm" border="1">
		 <thead class="thead-dark">
			<tr>
				<th scope="col">USER ID</th>
				<th scope="col">USER NAME</th>
				<th scope="col">USER EMAIL</th>
				<th scope="col">USER TYPE</th>
				<th scope="col">USER PASSWORD</th>
	
			</tr>
		</thead>
		<%
			int totCustomer = 0,totAdmin = 0;
			int totUser= 0;

			for (int j = 0; j < userList.size(); j++) {
				UserDto dto = userList.get(j);
				int id = dto.getId();
				String name = dto.getName();
				String email = dto.getEmail();
				String type = dto.getType();
				String password = dto.getPassword();
				
				totUser = userList.size();
			
				
				if(type.equals("USER")){
					totCustomer += 1;
				}else if(type.equals("ADMIN")){
					totAdmin += 1;
				}
				
		%>

		<tr>
			<td><%=id%></td>
			<td><%=name%></td>
			<td><%=email%></td>
			<td><%=type%></td>
			<td><%=password%></td>

						
			<%
				}
			%>
			
		</tr>

	</table><br/><br/><br/>
	<p>
	
	<div class="table-responsive">
		<table class="table" border="1">
			<tr>
				<td>NO OF TOTAL USERS</td>
				<td><%= totUser%></td>
			</tr>
			<tr>
				<td>NO OF TOTAL CUSTOMERS</td>
				<td><%=  totCustomer%></td>
			</tr>
			<tr>
				<td>NO OF TOTAL ADMINS</td>
				<td><%= totAdmin %></td>
				
				
				
			</tr>
		</table>
	</div>	
	</p>
</div>




</body>
<jsp:include page="includes/footer.jsp"></jsp:include>
</html>