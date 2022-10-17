
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Owner Details</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">




<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 13px;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	min-width: 1000px;
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.table-title .btn-group {
	float: right;
}

.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 100px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.edit {
	color: #FFC107;
}

table.table td a.delete {
	color: #F44336;
}

table.table td i {
	font-size: 19px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}

/* Custom checkbox */
.custom-checkbox {
	position: relative;
}

.custom-checkbox input[type="checkbox"] {
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}

.custom-checkbox label:before {
	width: 18px;
	height: 18px;
}

.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}

.custom-checkbox input[type="checkbox"]:checked+label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}

.custom-checkbox input[type="checkbox"]:checked+label:after {
	border-color: #fff;
}

.custom-checkbox input[type="checkbox"]:disabled+label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}

/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}

body {
	background: #eee;
}

.card {
	border: none;
	position: relative;
	overflow: hidden;
	border-radius: 8px;
	cursor: pointer;
}

.card:before {
	content: "";
	position: absolute;
	left: 0;
	top: 0;
	width: 4px;
	height: 100%;
	background-color: #95b8ef;
	transform: scaleY(1);
	transition: all 0.5s;
	transform-origin: bottom
}

.card:after {
	content: "";
	position: absolute;
	left: 0;
	top: 0;
	width: 4px;
	height: 100%;
	background-color: green;
	transform: scaleY(0);
	transition: all 0.5s;
	transform-origin: bottom
}

.card:hover::after {
	transform: scaleY(1);
}

.fonts {
	font-size: 11px;
}

.social-list {
	display: flex;
	list-style: none;
	justify-content: center;
	padding: 0;
}

.social-list li {
	padding: 10px;
	color: #136dfa;
	font-size: 19px;
}

.buttons button:nth-child(1) {
	border: 1px solid #136dfa !important;
	color: #136dfa;
	height: 40px;
}

.buttons button:nth-child(1):hover {
	border: 1px solid #136dfa !important;
	color: #fff;
	height: 40px;
	background-color: #136dfa;
}

.buttons button:nth-child(2) {
	border: 1px solid #136dfa !important;
	background-color: #136dfa;
	color: #fff;
	height: 40px;
}
</style>
<script>
	$(document).ready(function() {
		// Activate tooltip
		$('[data-toggle="tooltip"]').tooltip();

		// Select/Deselect checkboxes
		var checkbox = $('table tbody input[type="checkbox"]');
		$("#selectAll").click(function() {
			if (this.checked) {
				checkbox.each(function() {
					this.checked = true;
				});
			} else {
				checkbox.each(function() {
					this.checked = false;
				});
			}
		});
		checkbox.click(function() {
			if (!this.checked) {
				$("#selectAll").prop("checked", false);
			}
		});
	});
</script>
</head>

<body>
<body>
	<div class="container mt-3 shadow p-3 mb-5 bg-body rounded">

		<nav class="navbar navbar-dark bg-dark">
			<a class="navbar-brand ml-5">Welcome <b>${name} !!!</a> <a
				href="logout"><button type="button" class="btn btn-danger mr-5">
					Log Out</button></a>

		</nav>
		<div>
			<div class="row pt-4 pb-2">
				<div class="col-md-8">
					<a href="showAcceptedList"><button type="button" class="btn btn-success btn-sm">
						Accepted Bid
					</button></a>

				</div>
				<div class="col-md-4">
					<button class="btn btn-primary btn-sm" data-toggle="modal">
						<a href="OwnerDataForm" class="text-white text-decoration-none">Create
							BID</a>

					</button>
					<button type="button" class="btn btn-warning btn-sm"
						data-bs-toggle="collapse" data-bs-target="#details">Show
						BID Details</button>

				</div>
			</div>
		</div>
		<div class="collapse" id="details">
			<c:forEach var="BiddingData" items="${list}">
				<div class="shadow pb-3">
					<div class="table-title m-0 shadow mb-3 mt-5">
						<div class="row pt-4 pb-4">
							<div class="col-md-6">
								<h2 style="padding-top: 5px;">
									<b>Bidding</b> Details
								</h2>
							</div>
							<div class="col-md-6"></div>
						</div>
					</div>
					<div id="" class="" style="overflow-x: auto;">
						<table class="table table-striped table-hover fs-6 text-center">
							<thead>
								<tr class="fs-6">

									<th>ID</th>

									<th>Description</th>
									<th>Create Date
									<th>Closing Date</th>
									<th>Cost</th>
									<th>Bided By</th>
									<th>Actions</th>

								</tr>
							</thead>
							<tbody>

								<td>${BiddingData.bidId}</td>

								<td>${BiddingData.description}</td>
								<td>${BiddingData.createdDate}</td>
								<td>${BiddingData.closeDate}</td>
								<td><button class="btn btn-success">$
										${BiddingData.bidCost}</button></td>
								<td><a class=" m-3" data-bs-toggle="collapse"
									href="#demo${BiddingData.bidId}" role="button"
									aria-expanded="false" aria-controls="collapseExample"> See
										All Bidders </a></td>

								<td><a href="editOwnerBid/${BiddingData.bidId}"
									class="edit" data-toggle="modal"><i class="material-icons"
										data-toggle="tooltip" title="Edit">&#xE254;</i></a> <a
									href="deleteOwnerBid/${BiddingData.bidId}" class="delete"
									data-toggle="modal"><i class="material-icons"
										data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
								</tr>

							</tbody>
						</table>

					</div>
					<c:forEach var="BidderData" items="${BiddingData.bidder}">
						<div class="collapse" id="demo${BiddingData.bidId}">
							<div class="container text-white mb-5" id="">

								<div class="row d-flex justify-content-center">

									<div class="col-md-7">

										<div class="card p-3 py-4 shadow-lg"
											style="background-color: #435d7d;">



											<div class="text-center mt-3">
												<!-- <span class="bg-secondary p-1 px-4 rounded text-white">Pro</span> -->
												<h2 class="mt-2 mb-0">
													<svg xmlns="http://www.w3.org/2000/svg" width="16"
														height="16" fill="currentColor"
														class="bi bi-person-circle" viewBox="0 0 16 16">
<path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
<path fill-rule="evenodd"
															d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
</svg>
													<b> ${BidderData.name}</b>
												</h2>
												<br> <span><svg
														xmlns="http://www.w3.org/2000/svg" width="16" height="16"
														fill="currentColor" class="bi bi-envelope"
														viewBox="0 0 16 16">
                      <path
															d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4Zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2Zm13 2.383-4.708 2.825L15 11.105V5.383Zm-.034 6.876-5.64-3.471L8 9.583l-1.326-.795-5.64 3.47A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.741ZM1 11.105l4.708-2.897L1 5.383v5.722Z" />
                      </svg> &nbsp; ${BidderData.email}</span> <br> <br>

												<div class="text-center mt-2">
													<h2>
														<svg xmlns="http://www.w3.org/2000/svg" width="16"
															height="16" fill="currentColor"
															class="bi bi-currency-dollar" viewBox="0 0 16 16">
<path
																d="M4 10.781c.148 1.667 1.513 2.85 3.591 3.003V15h1.043v-1.216c2.27-.179 3.678-1.438 3.678-3.3 0-1.59-.947-2.51-2.956-3.028l-.722-.187V3.467c1.122.11 1.879.714 2.07 1.616h1.47c-.166-1.6-1.54-2.748-3.54-2.875V1H7.591v1.233c-1.939.23-3.27 1.472-3.27 3.156 0 1.454.966 2.483 2.661 2.917l.61.162v4.031c-1.149-.17-1.94-.8-2.131-1.718H4zm3.391-3.836c-1.043-.263-1.6-.825-1.6-1.616 0-.944.704-1.641 1.8-1.828v3.495l-.2-.05zm1.591 1.872c1.287.323 1.852.859 1.852 1.769 0 1.097-.826 1.828-2.2 1.939V8.73l.348.086z" />
</svg>
														<b> ${BidderData.bidAmount}</b>
													</h2>

												</div>
												<div class="text-center mt-3">
													<p>
														<svg xmlns="http://www.w3.org/2000/svg" width="16"
															height="16" fill="currentColor" class="bi bi-clock"
															viewBox="0 0 16 16">
<path
																d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z" />
<path
																d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z" />
</svg>
														: <span class="mt-2 mb-0"> ${BidderData.workRange}
														</span> Days
													</p>

												</div>

												<div class="b">

													<a href="accept/${BiddingData.bidId}/${BidderData.email}"><button
															class="btn btn-success px-4">Accept</button></a> <a
														href="reject/${BiddingData.bidId}/${BidderData.email}">
														<button class="btn btn-danger px-4 ms-3">Reject</button>
													</a>
												</div>


											</div>




										</div>

									</div>

								</div>

							</div>
						</div>
					</c:forEach>
				</div>
			</c:forEach>
		</div>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
		integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js"
		integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.min.js"
		integrity="sha384-ODmDIVzN+pFdexxHEHFBQH3/9/vQ9uori45z4JjnFsRydbmQbmL5t1tQ0culUzyK"
		crossorigin="anonymous">
		
	</script>
</body>

</html>