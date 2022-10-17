
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
    <div class="container mt-3 shadow p-3 mb-5 bg-body rounded">

        <nav class="navbar navbar-dark bg-dark">
            <a class="navbar-brand ml-3">Welcome <b> ${name} !!!</a>
                <a href="logout"><button type="button" class="btn btn-danger mr-3">Log Out</button></a>
    
          </nav>
          <c:forEach var="biddingList" items="${list}">
			<c:forEach var="bidderList" items="${biddingList.bidder}">
			<c:choose>
								<c:when test="${bidderList.email==user.email}">

								
			<div class="shadow pb-3" >
				<div class="table-title m-0 shadow mb-3 mt-5">
					<div class="row pt-4 pb-4">
						<div class="col-md-6">
						</div>
						<div class="col-md-6">
							

						</div>
					</div>
				</div>
				<div id="" class="" style="overflow-x:auto;">
					<table class="table table-striped table-hover fs-6 text-center">
						<thead>
							<tr class="fs-6">

								<th>BID ID</th>
								<th>Description</th>
								<th>Bid Cost</th>
								<th>BID Amount</th>
								<th>Owner Name</th>
								<th>Work Range</th>
                <th>Actions</th> 

							</tr>
						</thead>
						<tbody>

							<tr>
								<td>${bidderList.bidId}</td>
								<td>${biddingList.description }</td>
								<td><button class="btn btn-danger">$ ${biddingList.bidCost }</button> </td>
								
								<td><button class="btn btn-success">$ ${bidderList.bidAmount}</button></td>
								<td>${biddingList.name }</td>
								<td>${bidderList.workRange}</td>
								  <td>
                        <a href="editBidderBid/${biddingList.bidId}" class="edit" data-toggle="modal"><i class="material-icons"
                                data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                        <a href="deleteBidderBid/${biddingList.bidId}" class="delete" data-toggle="modal"><i class="material-icons"
                                data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                    </td>
							</tr>

						</tbody>
					</table>

				</div>
			</div>
				</c:when>
					</c:choose>
		</c:forEach>
</c:forEach>

</div>
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