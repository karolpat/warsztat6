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

				<h1 class="alert alert-primary">Create new user</h1>
				<h3 class="text-center">Please sign up</h3>
				<p>${errorReg }</p>
				<div class="container">

					<f:form action="reg" method="post" modelAttribute="user">
						<div class="form-group" align="center">
							<label for="username">Enter username</label>
							<f:input path="username" class="form-control" id="username" />
						</div>
						<div class="form-group" align="center">
							<label for="email">Enter email</label>
							<f:input type="email" path="email" required="required" id="email"
								class="form-control" />
						</div>
						<div class="form-group" align="center">
							<label for="password">Enter password </label>
							<f:input type="password" path="password" required="required"
								id="password" class="form-control" />
						</div>
						<div>
							<button type="submit" class="btn btn-primary">Add user</button>
						</div>
					</f:form>

				</div>
			</div>
			<!-- 		<button type="button" class="btn btn-outline-warning" -->
			<!-- 			formaction="login.jsp"> -->
			<%-- 			<a href="<c:url value="/user/login"/>">Already have an account? --%>
			<!-- 				Sign in!</a> -->
			<!-- 		</button> -->
		</div>
		<div class="col">
			<div class="jumbotron" align="center">

				<h1 class="alert alert-success">Already have an account?</h1>
				<h3 class="text-center">Please sign in</h3>
				<p>${errorLog }
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
							<button type="submit" class="btn btn-primary">Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>