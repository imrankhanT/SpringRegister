<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/login.css">


</head>
<body>

	 <c:set var="details" value="${error}" />
	<c:if test="${details!=null}">
		<c:out value="${details}"></c:out>
	</c:if> 
	<h1 align="center">SignIn</h1>

	<div class="container">
		<div class="row">
			<div class="form_bg col-lg-4 col-md-6 col-sm-8 col-xs-12">
				<form action="login" name="myForm" id="myForm" method="post">
					<div class="form-group">
						<label><b>Email</b></label> <input type="email"
							class="form-control" id="mail" name="mail" placeholder="email"
							required> <span style="color: red;" id="error1"></span>
					</div>

					<div class="form-group">
						<label><b>Password</b></label> <input type="password"
							class="form-control" id="password" placeholder="password" name="passwordss"
							required> <span id="error2" style="color: red;"></span>
					</div>

					<div class="align-center">
						<button type="submit" class="btn btn-primary" id="submit">Signin
						</button>

						<a href="register.jsp" class="btn btn-primary" role="button">Singup</a>
					</div>

				</form>
				</div>
				</div>
				</div>
</body>
</html>
