<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<style>
body {
	background-image: url('images/welcome1.jpg');
	background-size: cover;
	
	background-repeat: no-repeat;
}
</style>
</head>
<body>
	<div class="container mt-5">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<div class="card">
					<div class="card-header">

						<h4 class="text-center">
							<i class="fa-sharp fa-solid fa-user-plus"></i>Login
						</h4>

						<%
						String msg = (String) request.getAttribute("msg");
						if (msg == "no") {
						%>

						<script>
							alert("Invalid Credintials !!!");
						</script>



						<%
						}

						else if (msg == "yes") {
						%>
						<script>
							alert("Log In Suucessfully!!!!");
						</script>

						<%
						}
						%>


					</div>
					<div class="card-body">
						<form action="login" method="post">
							<div class="form-group">
								<label for="email">Email</label> <input type="email"
									class="form-control" id="email" placeholder="Enter email"
									name="em">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" placeholder="Password"
									name="ps">
							</div>
							<button type="submit" class="btn btn-primary btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>




	</form>

</body>
</html>