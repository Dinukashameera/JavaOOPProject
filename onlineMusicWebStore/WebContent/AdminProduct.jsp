<%@page import="com.OMW.login.UserDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.OMW.paymentController.PaymentDto"%>
<%@page import="java.util.List"%>
<jsp:include page="includes/header.jsp"></jsp:include>
<body>

	<br>
	<h1 align="center">PAYMENT DETAILS</h1>
	<br />
	<br />
	<br />
	<br />
	<%
		//jsp content
		List<PaymentDto> paylist = (ArrayList<PaymentDto>) request.getAttribute("payList");
	%>

	<div class="table-responsive">
		<table class="table table-hover table-sm" border="1">
			<thead class="thead-dark">
				<tr>
					<th scope="col">PAYMENT ID</th>
					<th scope="col">CUSTOMER NAME</th>
					<th scope="col">EMAIL</th>

				</tr>
			</thead>
			<%
			
			    int totPay = 0;
			
				for (int i = 0; i < paylist.size(); i++) {
					PaymentDto dto = paylist.get(i);
					int id = dto.getPid();
					String name = dto.getCname();
					String email = dto.getCemail();
			
					totPay = paylist.size();
			%>

			<tr>
				<td><%=id%></td>
				<td><%=name%></td>
				<td><%=email%></td>
				<%
					}
				%>

			</tr>

		</table>
		<br />
		<br />
		<br />

		<p><div class="table-responsive">
			<table class="table" border="1">
			<tr>
				<td>NO OF TOTAL PAYMENTS</td>
				<td><%=totPay%></td>
			</tr>
		</table>
	</p>
		
	
	

</div>




</body>
<jsp:include page="includes/footer.jsp"></jsp:include>
</html>