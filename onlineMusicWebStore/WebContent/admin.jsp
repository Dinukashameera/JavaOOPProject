
<%
	if (session.getAttribute("name") == null) {
		request.getRequestDispatcher("login.jsp").forward(request, response);
	}
%>


<!DOCTYPE html>
<html lang="en">

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
</head>

<body>
	<div class="container">
		<header id="main-header">
			<div class="row no-gutters">
				<div class="col-lg-4 col-md-5">
					<img src="images/person1.jpeg" alt="">
				</div>
				<div class="col-lg-8 col-md-7">
					<div class="d-flex flex-column">
						<div class="p-5 bg-dark text-white">
							<div
								class="d-flex flex-row justify-content-between align-items-center">
								<h1 class="display-4">ADMIN : ${name.toUpperCase()}</h1>
								<!--ADD THE ADMIN NAME OVER HERE  -->
								<div class="d-none d-md-block">
									<a href="http://twitter.com" class="text-white"> <i
										class="fab fa-twitter"></i>
									</a>
								</div>
								<div class="d-none d-md-block">
									<a href="http://facebook.com" class="text-white"> <i
										class="fab fa-facebook"></i>
									</a>
								</div>
								<div class="d-none d-md-block">
									<a href="http://instagram.com" class="text-white"> <i
										class="fab fa-instagram"></i>
									</a>
								</div>
							</div>
						</div>

						<div class="p-4 bg-black">
							<h3>WELCOME ${name.toUpperCase()} TO THE ADMIN DASH BOARD</h3>
						</div>

						<div>
							<div
								class="d-flex flex-row text-white align-items-stretch text-center">
								<div class="port-item p-12 bg-primary" data-toggle="collapse"
									data-target="#home">
									<i class="fas fa-plus fa-2x d-block"></i> <span
										class="d-none d-sm-block">Add Items</span>
								</div>
								<div class="port-item p-12 bg-danger" data-toggle="collapse"
									data-target="#resume">
									<i class="fas fa-edit fa-2x d-block"></i> <span
										class="d-none d-sm-block"><a href="AdminViewController"><span
											style="color: white" class="d-none d-sm-block">VIEW
												ITEMS</span></a>
								</div>
								<div class="port-item p-12 bg-success" data-toggle="collapse"
									data-target="#resume">
									<i class="fas fa-check-circle fa-2x d-block"></i> <span
										class="d-none d-sm-block"><a href="AdminCustomerController"><span
											style="color: white" class="d-none d-sm-block">CUSTOMER
											</span></a>
											<a style="color:white;" href="AdminPaymentController"><span
											style="color: white" class="d-none d-sm-block">PAYMENTS
											</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>

		<!-- Add items to the webstore -->
		<div id="home" class="collapse show">
			<div class="card card-body bg-primary text-white py-5">
				<h2>Add item Page</h2>
				<p class="lead">Enter the details of the item to be added</p>


				<form action="ItemUpload" method="post">
					<div class="form-group">
						<label for="pwd">Item Id</label> <input type="input"
							class="form-control" name="id">
					</div>
					<div class="form-group">
						<label for="email">Item Name</label> <input type="input"
							class="form-control" name="name">
						<!--</div>
					<div class="form-group">
						<label for="pwd">Brand</label> <input type="input"
							class="form-control"  name="brand">
					</div>-->
						<div class="form-group">
							<label for="pwd">Price</label> <input type="input"
								class="form-control" name="price">
						</div>
						<div class="form-group">
							<label for="pwd">Upload Image</label> <input type="file"
								class="form-control" name="image">
						</div>

						<input type="submit" value="upload" />
				</form>
			</div>

		</div>

		<!-- FOOTER -->
		<!-- <footer id="main-footer" class="p-5 bg-dark text-white">
      <div class="row">
        <div class="col-md-6">
          <a href="#" class="btn btn-outline-light">
            <i class="fas fa-cloud"></i> Download Resume
          </a>
        </div>
      </div>
    </footer>
  </div> -->


		<script src="http://code.jquery.com/jquery-3.3.1.min.js"
			integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
			integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.3.0/ekko-lightbox.min.js"></script>

		<script>
			$('.port-item').click(function() {
				$('.collapse').collapse('hide');
			});

			$(document).on('click', '[data-toggle="lightbox"]', function(e) {
				e.preventDefault();
				$(this).ekkoLightbox();
			});
		</script>
</body>

</html>
