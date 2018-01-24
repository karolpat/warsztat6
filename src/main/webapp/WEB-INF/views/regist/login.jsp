<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<div class="jumotron">

				<h1 class="alert alert-success">Already have an account?</h1>
				<h3 class="text-center">Please sign in</h3>
				<p>${errorLog }
			</div>
			<div class="container" align="center">
			
				<f:form action="login" method="post" modelAttribute="user">
					<div class="form-group" align="center">
						<label for="username">Email address</label>
						<f:input path="username" class="form-control" id="username" />
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
</body>
</html>