<jsp:include page="includes/header.jsp"></jsp:include>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-t-90 p-b-30">
			
			
				<form action = "./UserController" class="login100-form validate-form"  method = "post">
					<span class="login100-form-title p-b-40">
						Login
					</span>

					<div>
						<a href="#" class="btn-login-with bg1 m-b-10">
							<i class="fa fa-facebook-official"></i>
							Login with Facebook
						</a>

						<a href="#" class="btn-login-with bg2">
							<i class="fa fa-twitter"></i>
							Login with Twitter
						</a>
					</div>

					<div class="text-center p-t-55 p-b-30">
						<span class="txt1">
							REGISTER WITH EMAIL
						</span>
					</div>
					<div class="wrap-input100 validate-input m-b-16">
						<input class="input100" type="text" name="name" placeholder="User Name">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter email: ex@abc.xyz">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>
						<div class="wrap-input100 validate-input m-b-16">
						<select class="input100" name = "type"><span class="focus-input100" ></span>					
							<option >USER</option>
							<option>ADMIN</option>
						</select>
					</div>

					<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="password" placeholder="Password">
						<span class="focus-input100"></span>
					</div>
										<div class="wrap-input100 validate-input m-b-20" data-validate = "Please enter password">
						<span class="btn-show-pass">
							<i class="fa fa fa-eye"></i>
						</span>
						<input class="input100" type="password" name="confirmPassword" placeholder="Confirm password" min="???" id = 'myInput' >
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn">
						<button type="submit"" class="login100-form-btn">
							Register Now
						</button>
					</div>


				</form>
			</div>
		</div>
	</div>


<jsp:include page="includes/footer.jsp"></jsp:include>

</body>


<script type="text/javascript">
<!--
$("#myInput").attr({
	   
	   "min" : 4
	});
//-->
</script>



</html>
