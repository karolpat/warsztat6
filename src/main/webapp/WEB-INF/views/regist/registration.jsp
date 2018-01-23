<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Create new user</h1>
	<h2>Please enter data</h2>

	<f:form action="" method="post" modelAttribute="user">
		<div>
			<label>Enter username</label>
			<f:input path="username" required="required" />
		</div>
		<div>
			<label>Enter email</label>
			<f:input type="email" path="email" required="required" />
		</div>
		<div>
			<label>Enter password</label>
			<f:password path="password" required="required" />
		</div>
		<input type="submit" value="Add user" />
	</f:form>

</body>
</html>