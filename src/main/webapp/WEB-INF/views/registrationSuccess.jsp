<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="styles.jsp"></jsp:include>

<h1 class="alert alert-primary">Creating new account accomplished. </h1>
<h3 class="alert alert-warning">Now you can <a href="<c:url value="/user/login"/>"> sign in</a></h3>
</body>
</html>