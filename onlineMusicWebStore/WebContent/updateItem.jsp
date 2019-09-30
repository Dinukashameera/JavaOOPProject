<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"
	integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.css" />
<link rel="stylesheet" href="css/style.css">
<title>ADMIN PAGE</title>
<jsp:include page="includes/header.jsp"></jsp:include>
</head>

<body>
			
				<table class = "table">
					<form action="./OperationController" method="get">
						<div class="form-group">
						<tr>
							<td><label for="pwd">Item Id</label></td> 
							<td><input type="input" class="form-control" name="id" value = "${param.id}"></td>
						</tr>
						</div> 
						<div class="form-group">
						<tr>
							<td><label for="email">Item Name</label></td> 
							<td><input type="input" class="form-control" name="name" value = "${param.name}"></td>
						</tr>
						
						<div class="form-group">
						<tr>
							<td><label for="pwd">Price</label></td>
							<td><input type="input" class="form-control" name="price" value = "${param.price}"></td>
						</tr>
						</div>   
					
							<input type = "hidden" name="page" value = "updateItem">
							<input type="submit" value ="update Item"/>
					</form>
				</table>

</body>
<jsp:include page="includes/footer.jsp"></jsp:include>
</html>