<%@page import="javax.swing.JOptionPane" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Cart</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/themify/themify-icons.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="fonts/elegant-font/html-css/style.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="loginUtil/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="loginUtil/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="loginUtil/css/util.css">
<link rel="stylesheet" type="text/css" href="loginUtil/css/main.css">

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<header class="header1">
	<!-- Header desktop -->
	<div class="container-menu-header">
		<div class="topbar">
			<div class="topbar-social">
				<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
					href="#" class="topbar-social-item fa fa-instagram"></a> <a
					href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
					href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
					href="#" class="topbar-social-item fa fa-youtube-play"></a>
			</div>

			<span class="topbar-child1"> Free shipping for standard order
				over $100 </span>

			<div class="topbar-child2">
				<span class="topbar-email"> fashe@example.com </span>

				<div class="topbar-language rs1-select2">
					<select class="selection-1" name="time">
						<option>USD</option>
						<option>EUR</option>
					</select>
				</div>
			</div>
		</div>

		<div class="wrap_header">
			<!-- Logo -->
			<a href="${pageContext.request.contextPath}/home?page=home"
				class="logo"> <img src="images/icons/logo.png" alt="IMG-LOGO">
			</a>

			<!-- Menu -->
			<div class="wrap_menu">
				<nav class="menu">
					<ul class="main_menu">
						<li><a
							href="${pageContext.request.contextPath}/home?page=home">Home</a>
							<!-- <ul class="sub_menu">
                <li><a href="index.html">Homepage V1</a></li>
                <li><a href="home-02.html">Homepage V2</a></li>
                <li><a href="home-03.html">Homepage V3</a></li>
              </ul> --></li>

						<li><a href="${pageContext.request.contextPath}/ItemViewerController?page=product">Shop</a></li>

						<li class="sale-noti"><a
							href="${pageContext.request.contextPath}/home?page=product">Sale</a>
						</li>

						<!-- <li>
              <a href="cart.html">Features</a>
            </li>

            <li>
              <a href="blog.html">Blog</a>
            </li> -->

						<li><a
							href="${pageContext.request.contextPath}/home?page=about">About</a>
						</li>

						<li><a
							href="${pageContext.request.contextPath}/home?page=contact">Contact</a>
						</li>
					</ul>
				</nav>
			</div>

			<!-- Header Icon -->
			<div class="header-icons">
				<a href="${pageContext.request.contextPath}/home?page=signin"
					class="header-wrapicon1 dis-block"> <img
					src="images/icons/icon-header-01.png" class="header-icon1"
					alt="ICON">
				</a>
				<!-- log out button -->
				
				<!--  <form action="./logout">
					<input type="submit" value="LOG OUT">
				</form>-->
				
				<a href="${pageContext.request.contextPath}/home?page=logout">LOG OUT</a>
				${name}
				<div class="header-wrapicon2">
					<img src="images/icons/icon-header-02.png"
						class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
						class="header-icons-noti">0</span>

					<!-- Header cart noti -->
					<div class="header-cart header-dropdown">
						<ul class="header-cart-wrapitem">
							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="images/item-cart-01.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> White Shirt With
										Pleat Detail Back </a> <span class="header-cart-item-info">
										1 x $19.00 </span>
								</div>
							</li>

							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="images/item-cart-02.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> Converse All
										Star Hi Black Canvas </a> <span class="header-cart-item-info">
										1 x $39.00 </span>
								</div>
							</li>

							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="images/item-cart-03.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> Nixon Porter
										Leather Watch In Tan </a> <span class="header-cart-item-info">
										1 x $17.00 </span>
								</div>
							</li>
						</ul>

						<div class="header-cart-total">Total: $75.00</div>

						<div class="header-cart-buttons">
							<div class="header-cart-wrapbtn">
								<!-- Button -->
								<a href="${pageContext.request.contextPath}/home?page=cart"
									class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									View Cart </a>
							</div>

							<div class="header-cart-wrapbtn">
								<!-- Button -->
								<a href="#"
									class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									Check Out </a>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	<!-- Header Mobile -->
	<div class="wrap_header_mobile">
		<!-- Logo moblie -->
		<a href="index.html" class="logo-mobile"> <img
			src="images/icons/logo.png" alt="IMG-LOGO">
		</a>

		<!-- Button show menu -->
		<div class="btn-show-menu">
			<!-- Header Icon mobile -->
			<div class="header-icons-mobile">
				<a href="#" class="header-wrapicon1 dis-block"> <img
					src="images/icons/icon-header-01.png" class="header-icon1"
					alt="ICON">
				</a> <span class="linedivide2"></span>

				<div class="header-wrapicon2">
					<img src="images/icons/icon-header-02.png"
						class="header-icon1 js-show-header-dropdown" alt="ICON"> <span
						class="header-icons-noti">0</span>

					<!-- Header cart noti -->
					<div class="header-cart header-dropdown">
						<ul class="header-cart-wrapitem">
							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="images/item-cart-01.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> White Shirt With
										Pleat Detail Back </a> <span class="header-cart-item-info">
										1 x $19.00 </span>
								</div>
							</li>

							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="images/item-cart-02.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> Converse All
										Star Hi Black Canvas </a> <span class="header-cart-item-info">
										1 x $39.00 </span>
								</div>
							</li>

							<li class="header-cart-item">
								<div class="header-cart-item-img">
									<img src="images/item-cart-03.jpg" alt="IMG">
								</div>

								<div class="header-cart-item-txt">
									<a href="#" class="header-cart-item-name"> Nixon Porter
										Leather Watch In Tan </a> <span class="header-cart-item-info">
										1 x $17.00 </span>
								</div>
							</li>
						</ul>

						<div class="header-cart-total">Total: $75.00</div>

						<div class="header-cart-buttons">
							<div class="header-cart-wrapbtn">
								<!-- Button -->
								<a href="cart.html"
									class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									View Cart </a>
							</div>

							<div class="header-cart-wrapbtn">
								<!-- Button -->
								<a href="#"
									class="flex-c-m size1 bg1 bo-rad-20 hov1 s-text1 trans-0-4">
									Check Out </a>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box"> <span class="hamburger-inner"></span>
				</span>
			</div>
		</div>
	</div>

	<!-- Menu Mobile -->
	<div class="wrap-side-menu">
		<nav class="side-menu">
			<ul class="main-menu">
				<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8"><span
					class="topbar-child1"> Free shipping for standard order over
						$100 </span></li>

				<li class="item-topbar-mobile p-l-20 p-t-8 p-b-8">
					<div class="topbar-child2-mobile">
						<span class="topbar-email"> fashe@example.com </span>

						<div class="topbar-language rs1-select2">
							<select class="selection-1" name="time">
								<option>USD</option>
								<option>EUR</option>
							</select>
						</div>
					</div>
				</li>

				<li class="item-topbar-mobile p-l-10">
					<div class="topbar-social-mobile">
						<a href="#" class="topbar-social-item fa fa-facebook"></a> <a
							href="#" class="topbar-social-item fa fa-instagram"></a> <a
							href="#" class="topbar-social-item fa fa-pinterest-p"></a> <a
							href="#" class="topbar-social-item fa fa-snapchat-ghost"></a> <a
							href="#" class="topbar-social-item fa fa-youtube-play"></a>
					</div>
				</li>

				<li class="item-menu-mobile"><a href="index.html">Home</a> <i
					class="arrow-main-menu fa fa-angle-right" aria-hidden="true"></i></li>

				<li class="item-menu-mobile"><a href="product.html">Shop</a></li>

				<li class="item-menu-mobile"><a href="product.jsp">Sale</a></li>

				<li class="item-menu-mobile"><a
					href="${pageContext.request.contextPath}/home?page=cart">Features</a>
				</li>

				<li class="item-menu-mobile"><a href="blog.html">Blog</a></li>

				<li class="item-menu-mobile"><a href="about.html">About</a></li>

				<li class="item-menu-mobile"><a href="contact.html">Contact</a>
				</li>
			</ul>
		</nav>
	</div>
</header>