<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Spot</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMain_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="content-admin">
			<div class="content-adSidebar">
				<jsp:include page="../layout/adSidebar.jsp" />
			</div>
			<div class="content">
				<h1>Spot Content</h1>
			</div>
		</div>
	</div>
</body>
</html>