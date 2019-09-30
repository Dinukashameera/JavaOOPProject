<%
	if(session.getAttribute("name") == null){
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}

%>

<jsp:include page="includes/header.jsp"></jsp:include>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
	integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	crossorigin="anonymous">
</head>
<body>
	<br/><br/><br/>
	 <p class="text-center" style="color:black;">THANK YOU <strong> ${name.toUpperCase()} </strong> FOR SHOPPING</p><br/><br/><br/>
	 <span>
	 
	 	<p class="text-center" style="color:black;">
	 	
	 		 DO YOU WANT TO CONTINUE SHOPPING ?<br/><br/>
	 		
	 		<i class="fas fa-angle-double-right fa-2x d-block"></i>
	 			<a class="text-decoration-none" style = "color:back;" href="${pageContext.request.contextPath}/home?page=home"><strong>CONTINUE</strong></a>
	 		<i class="fas fa-angle-double-left fa-2x d-block"></i>
	 	</p>
	 
	 </span><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
</body>
<jsp:include page="includes/footer.jsp"></jsp:include>
</html>