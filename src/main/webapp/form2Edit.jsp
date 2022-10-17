<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">


<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Style -->
<link rel="stylesheet" href="css/style.css">


<title>Insert title here</title>
</head>
<body>
	<!-- <form action="createBid" method="post">
<input type="date" name="createdDate">
<input type="date" name="closeDate">
<input type="text" name="description" placeholder="Description">
<input type="submit" value="Submit">
</form> -->


		<div class="container ">
			<div class="row align-items-stretch no-gutters contact-wrap mt-5">
				<div class="col-md-8">
					<div class="form h-100">
						<h3>BIDDING Details</h3>
						<form class="" name="contactForm" action="editForm"
							method="post">
							<div class="row">

								<div class="col-md-6 form-group mb-3 mt-3">
									<label for="" class="col-form-label">Create Date *</label> <input
										type="date" class="form-control" name="createdDate"
										placeholder="Create Date" value="${bidData.createdDate }">
								</div>

								<div class="col-md-6 form-group mb-3 mt-3">
									<label for="" class="col-form-label">Closing Date *</label> <input
										type="date" class="form-control" name="closeDate"
										value="${bidData.closeDate }
										placeholder=" ClosingDate" >
								</div>

							</div>

							<div class="form-group mb-3">
								<label for="" class="col-form-label">Bid Cost *</label> <input
									type="number" class="form-control" name="bidCost"
									placeholder="Biding Cost" value="${bidData.bidCost }">
							</div>


							<div class="row">
								<div class="col-md-12 form-group mb-5">
									<label for="message" class="col-form-label">Description
										*</label>
									<textarea class="form-control" name="description" id="message"
										value="${bidData.description }"
										cols=" 30" rows="4"
										placeholder="Write your Description"></textarea>
								</div>
							</div>
							<div class="row">
								<div class="col-md-12 form-group">
									<!--  <input type="submit" value="Submit_BID" class="btn btn-primary rounded-0 py-2 px-4" name="createBid">-->
									<!--   <button type="submit" class="btn btn-primary">
                 Create BID
                 </button> -->
									<input type="submit" value="Create BID"
										class="btn btn-primary rounded-0 py-2 px-4">


								</div>
							</div>
						</form>



					</div>
				</div>
			</div>
		</div>

]


	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.validate.min.js"></script>
	<script src="js/main.js"></script>


</body>
</html>