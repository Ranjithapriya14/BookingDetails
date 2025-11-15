<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View User Booking Details</title>
</head>
<body>
<h2>Booking Details</h2>
<p>${userbooking.id}</p>
<p>${userbooking.uname}</p>
<p>${userbooking.mobileno}</p>
<p>${userbooking.gname}</p>
<p>${userbooking.playTimeFrom}</p>
<p>${userbooking.playTimeTo}</p>
<p>${userbooking.amountPayed}</p>

<a href="${pageContext.request.contextPath}/userbookingdetails/list">Back to List</a>
</body>
</html>