<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<%@page import="com.OMW.IR.DTO.CartDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.OMW.IR.DTO.ItemDto"%>
<%@page import="java.util.List"%>


<jsp:include page="includes/header.jsp"></jsp:include>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body class="animsition">

	<!-- Title Page -->
	<section class="bg-title-page p-t-40 p-b-50 flex-col-c-m"
		style="background-image: url(images/cart.jpg);">
		<h2 class="l-text2 t-center">Cart</h2>
	</section>

	<!-- Cart -->
	<section class="cart bgwhite p-t-70 p-b-100">
		<div class="container">
			<!-- Cart item -->
			<div class="container-table-cart pos-relative">
				<div class="wrap-table-shopping-cart bgwhite">


					<!-- THHE CART TABLE START FROM HERE -->
					<!-- JSP CONTENT START HERE -->
					<%
					
						List<CartDto> list = (ArrayList<CartDto>)request.getAttribute("cartList");
		
					%>

								<table class="table-shopping-cart">
									<tr class="table-head">
										<th class="column-1"></th>
										<th class="column-2">Product</th>
										<th class="column-3">Price</th>
										<th class="column-4 p-l-70">Quantity</th>
										<th class="column-5">Total</th>
									</tr>

							<%
							String deleteCart;
								double total = 0;
								for(int i = 0; i < list.size(); i++){
									CartDto dto = list.get(i);
									int id = dto.getOrderId();
									String name = dto.getOrderItemName();
									float price = dto.getItemPrice();
									
									total = total + dto.getItemPrice();

									deleteCart = request.getContextPath()+ "/OperationController?page=deleteCartItem"+
											"&id="+id;
							
							%>

									<tr class="table-row">
										<td class="column-1">
											<div class="cart-img-product b-rad-4 o-f-hidden">
												<img src="images/item-10.jpg" alt="IMG-PRODUCT">
											</div>
										</td>
										<td class="column-2"><%= name %></td>
										<td class="column-3"><%= price %></td>
										<td class="column-4">
											<div class="flex-w bo5 of-hidden w-size17">
												<button
													class="btn-num-product-down color1 flex-c-m size7 bg8 eff2">
													<i class="fs-12 fa fa-minus" aria-hidden="true"></i>
												</button>

												<input class="size8 m-text18 t-center num-product"
													type="number" name="num-product1" value="1">

												<button
													class="btn-num-product-up color1 flex-c-m size7 bg8 eff2">
													<i class="fs-12 fa fa-plus" aria-hidden="true"></i>
												</button>
											</div>
										</td>
										<td class="column-5"><a href="<%= deleteCart%>"><i class="fas fa-times fa-2x"></i></a></td>
									</tr>
							<% } %>
					<table>
						<tr class="table-row">
							<td class="column-1">
								<div class="cart-img-product b-rad-4 o-f-hidden"></div>
							</td>
							<td class="column-2"></td>
							<td class="column-3"></td>
							<td class="column-4">
								<div></div>
							</td>
							<!-- Total should come here -->
							<td class="column-5">Total = <%= total %></td>
						</tr>
						
						<!-- THE CART TABLE ENDS HERE -->
					</table>
				</div>
			</div>

			<div
				class="flex-w flex-sb-m p-t-25 p-b-25 bo8 p-l-35 p-r-60 p-lr-15-sm">
				<div class="flex-w flex-m w-full-sm">


					<div class="size12 trans-0-4 m-t-10 m-b-10 m-r-10">
						<!-- Button -->
						<button
							class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
							<a href="${pageContext.request.contextPath}/home?page=payment"
								style="color: white">CHECK OUT</a>
						</button>
					</div>
				</div>

				<div class="size10 trans-0-4 m-t-10 m-b-10">
					<!-- Button -->
					<button
						class="flex-c-m sizefull bg1 bo-rad-23 hov1 s-text1 trans-0-4">
						Update Cart</button>
				</div>
			</div>

			<!-- Total -->

		</div>
	</section>



	<!-- Footer -->
	<jsp:include page="includes/footer.jsp"></jsp:include>


	<!-- Back to top -->
	<div class="btn-back-to-top bg0-hov" id="myBtn">
		<span class="symbol-btn-back-to-top"> <i
			class="fa fa-angle-double-up" aria-hidden="true"></i>
		</span>
	</div>

	<!-- Container Selection -->
	<div id="dropDownSelect1"></div>
	<div id="dropDownSelect2"></div>



	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript"
		src="vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript"
		src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
	<script type="text/javascript">
		$(".selection-1").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect1')
		});

		$(".selection-2").select2({
			minimumResultsForSearch : 20,
			dropdownParent : $('#dropDownSelect2')
		});
	</script>
	<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
