<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/register.css">
<!-- <script src="/javaScript/validation.js"></script> -->

<script type="text/javascript">
$(document)
.ready(
		function() {

			$('#Name')
					.blur(
							function() {
								var name = $('#Name').val();
								var regex = /^[a-zA-Z ]{4,30}$/;
								if (!(name.match(regex))) {
									$("#Name").css("border",
											"1px solid red");
									$('#error1')
											.text(
													"Enter valid name and length should grater than 0");

								} else {
									$("#Name").css("border",
											"1px solid green");
									$('#error1').text("");

								}

							});

			$('#mail')
					.blur(
							function(e) {
								var mobileNum = $("#mail").val();
								var regx = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
								if (!mobileNum.match(regx)) {
									$("#mail").css("border",
											"1px solid red");
									$('#error2').text(
											"Invalid Mail address");
								} else {
									$("#mail").css("border",
											"1px solid green");
									$('#error2').text("");
								}
							});

			$('#Password')
					.blur(
							function(e) {
								var password = $('#Password').val();

								if (password.length < 8
										|| password.length > 16) {
									$("#Password").css("border",
											"1px solid red");
									$('#error3')
											.text(
													"password Length should be between 8 to 16 charcter")
								} else {
									$("#Password").css("border",
											"1px solid green");
									$('#error3').text("");
								}
							});

			$('#cPass').blur(function(e) {
				var confirmPassword = $('#cPass').val();
				var password = $('#Password').val();
				if (confirmPassword != password) {
					$("#cPass").css("border", "1px solid red");
					$('#error4').text("password Not matched")
				} else {
					$("#cPass").css("border", "1px solid green");
					$('#error4').text("");
				}
			});

			$('#phone').blur(function() {
				var mobileNum = $("#phone").val();
				var pattern = /^\d{10}$/;
				if ((isNaN(mobileNum) || (!pattern.test(mobileNum)))) {
					$("#phone").css("border", "1px solid red");
					$('#error5').text("Enter valid Mobile Number");
				} else {
					$('#error5').text("");
					$("#phone").css("border", "1px solid green");
				}
			});

		});
</script>

</head>
<body>

	<c:set var="details" value="${error}" />
	<c:if test="${details!=null}">
		<c:out value="${details}"></c:out>
	</c:if>
	<h1 align="center">Creater An Account</h1>
	<p id="head"></p>
	<div class="container">
		<div class="row">
			<div class="form_bg col-lg-4 col-md-6 col-sm-8 col-xs-12">
				<form action="register" name="myForms" id="myForms" method="post">
					<div class="form-group">
						<label>Full Name</label> <input type="text" class="form-control"
							id="Name" name="name" placeholder="Name" required> <span
							style="color: red;" id="error1"></span>
					</div>

					<div class="form-group">
						<label>Email</label> <input type="text" class="form-control"
							id="mail" name="mail" placeholder="Email" required> <span
							id="error2" style="color: red;"></span>
					</div>

					<div class="form-group">
						<label>Password</label> <input type="password"
							class="form-control" id="Password" name="Password"
							placeholder="Password" required> <span id="error3"
							style="color: red;"></span>
					</div>

					<div class="form-group">
						<label>Confirm Password</label> <input type="password"
							class="form-control" id="cPass" name="cPass"
							placeholder="Confirm Password" required> <span
							id="error4" style="color: red;"></span>
					</div>

					<div class="form-group">
						<label>Phone</label> <input type="text" class="form-control"
							id="phone" name="phone" placeholder="Mobile Number" maxlength=10
							required> <span id="error5" style="color: red;"></span>
					</div>


					<br />
					<div class="align-center">
						<button type="submit" class="btn btn-success" id="submit">Register
						</button>

						<a href="index.jsp" class="btn btn-primary">Cancel</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>