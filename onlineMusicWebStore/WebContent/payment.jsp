<%
	if(session.getAttribute("name") == null){
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

%>


<meta charset="UTF-8">
<title>Payment Checkout Form</title>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
<link rel="stylesheet" href="css/payment.css">
<jsp:include page="includes/header.jsp"></jsp:include>
<body>
	<h1 style="text-align:center;">WELCOME : ${name}</h1>
	
	<div class="wrapper">
		<div class="payment">
			<div class="payment-logo">
				<p>p</p>
			</div>


			<h2>Payment Gateway</h2>
			<form action="./PaymentController" method = "post">
						<div class="form">
				<div class="card space icon-relative">
					<label class="label">Card holder:</label> 
					<input type="text" name = "name" class="input" placeholder="Holder Name" required> <i
						class="fas fa-user"></i>
				</div>
				<div class="card space icon-relative">
					<label class="label">Email Address:</label> <input type="email"
						name = "email" class="input" placeholder="Email" required> <i
						class="fas fa-user"></i>
				</div>
				<div class="card space icon-relative">
					<label class="label">City:</label> <input type="text"
						name = "city" class="input" placeholder="Holder Name" > <i
						class="fas fa-user"></i>
				</div>
				<div class="card space icon-relative">
					<label class="label">Card number:</label> <input type="text"
						name = "cardNumber" class="input" data-mask="0000 0000 0000 0000"
						placeholder="Card Number" required> <i class="far fa-credit-card"></i>
				</div>
				<div class="card-grp space">
					<div class="card-item icon-relative">
						<label class="label">Expiry date:</label> <input type="text"
							name = "date"  class="input" data-mask="00 / 00"
							placeholder="00 / 00" required> <i class="far fa-calendar-alt"></i>
					</div>
					<div class="card-item icon-relative">
						<label class="label">CVC:</label> <input name = "cvc" type="text" class="input"
							data-mask="000" placeholder="000" required> <i class="fas fa-lock"></i>
					</div>
				</div>

				<button type = "submit" class="btn btn-primary btn-block btn btn-outline-primary">PAY HERE</button>

			</div>
			
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>
</body>
<jsp:include page="includes/footer.jsp"></jsp:include>
</html>