<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../styles.jsp"></jsp:include>
	<div class="row">
		<div class="col">
			<div class="jumbotron" align="center">

				<h1 class="alert alert-success">Already have an account?</h1>
				<h3 class="text-center">Please sign in</h3>
				<p align="center">${error }</p>

				<div class="container">

					<form action="login" method="post">
						<div class="form-group" align="center">
							<label for="username">Email username</label> <input
								name="username" class="form-control" id="username" />
						</div>
						<div class="form-group" align="center">
							<label for="password">Enter password </label> <input
								type="password" name="password" required="required"
								id="password" class="form-control" />
						</div>
						<div>
							<button type="submit" class="btn btn-primary">Add user</button>
						</div>
					</form>
					<button type="button" class="btn btn-outline-warning"
						formaction="login.jsp">
						<a href="<c:url value="/user/reg"/>">No account yet? Sign up!</a>
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>