<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUP</title>


<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap"
	rel="stylesheet">
<style>
* {
	padding: 0;
	margin: 0;
}

body {
	background:
		url(http://wrbbradio.org/wp-content/uploads/2016/10/grey-background-07.jpg)
		no-repeat center fixed;
	background-size: cover;
}

.container {
	background: #2d3e3f;
	width: 350px;
	height: 400px;
	padding-bottom: 20px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	margin: auto;
	padding: 70px 50px 20px 50px;
}

.fl {
	float: left;
	width: 110px;
	line-height: 35px;
}

.fontLabel {
	color: white;
}

.fr {
	float: right;
}

.clr {
	clear: both;
}

.box {
	width: 360px;
	height: 35px;
	margin-top: 10px;
	font-family: verdana;
	font-size: 12px;
}

.textBox {
	height: 35px;
	width: 190px;
	border: none;
	padding-left: 20px;
}

.new {
	float: left;
}

.iconBox {
	height: 35px;
	width: 40px;
	line-height: 38px;
	text-align: center;
	background: #ff6600;
}

.radio {
	color: white;
	background: #2d3e3f;
	line-height: 38px;
}

.terms {
	line-height: 35px;
	text-align: center;
	background: #2d3e3f;
	color: white;
}

.submit {
	float: right;
	border: none;
	color: white;
	width: 110px;
	height: 35px;
	background: #ff6600;
	text-transform: uppercase;
	cursor: pointer;
}

::-webkit-input-placeholder { /* Chrome/Opera/Safari */
	
}
</style>
</head>
<body>

	<!-- Body of Form starts -->

	<div class="container">
		<form action="register" method="post">
			<!--First name-->
			<div class="box">
				<label for="name" class="fl fontLabel">Name: </label>
				<div class="new iconBox">
					<i class="fa fa-user" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="text" name="name" placeholder="First Name"
						class="textBox" autofocus="on" required>
				</div>
				<div class="clr"></div>
			</div>
			<!--First name-->



			<!---contact .------>
			<div class="box">
				<label for="contact" class="fl fontLabel"> Contact : </label>
				<div class="fl iconBox">
					<i class="fa fa-phone-square" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="text" required name="contact" maxlength="10"
						placeholder="contact" class="textBox">
				</div>
				<div class="clr"></div>
			</div>
			<!---contact No.---->


			<!---Email ID---->
			<div class="box">
				<label for="email" class="fl fontLabel"> Email : </label>
				<div class="fl iconBox">
					<i class="fa fa-envelope" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="email" required name="email" placeholder="Email Id"
						class="textBox">
				</div>
				<div class="clr"></div>
			</div>
			<!--Email ID----->


			<!---Password------>
			<div class="box">
				<label for="password" class="fl fontLabel"> Password </label>
				<div class="fl iconBox">
					<i class="fa fa-key" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="Password" required name="password"
						placeholder="Password" class="textBox">
				</div>
				<div class="clr"></div>
			</div>
			<!---Password---->



			<!---Address .------>
			<div class="box">
				<label for="address" class="fl fontLabel"> Address : </label>
				<div class="fl iconBox">
					<i class="fa fa-map-marker" aria-hidden="true"></i>
				</div>
				<div class="fr">
					<input type="text" required name="address" maxlength="10"
						placeholder="Address" class="textBox">
				</div>
				<div class="clr"></div>
			</div>
			<!---contact No.---->

			<div class="social">
				<input class="form-check-input me-2" type="radio" value="bidder"
					id="checkbox" name="type" checked /> <label
					class="form-check-label" for="form2Example33" style="color: #fff">
					Bidder </label> <input class="form-check-input" type="radio" value="owner"
					id="checkbox" name="type" checked /> <label
					class="form-check-label" for="form2Example33" style="color: #fff">
					Owner </label>
			</div>

			<!---Submit Button------>
			<div class="box" style="background: #2d3e3f">
				<input type="Submit" name="Submit" class="submit" value="REGISTER">
			</div>

			<p class="/signup">
				Already have account? <a style="color: white;" href="login">LogIn
					Now..!</a>
			</p>

			<!---Submit Button----->
		</form>
	</div>
	<!--Body of Form ends--->
</body>
</html>
