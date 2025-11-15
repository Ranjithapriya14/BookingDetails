<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Page</title>
</head>
<body>
<h2>Booking List</h2>
<table border="1">
<thead>
<tr>
<th>ID</th>
<th>User Name</th>
<th>Mobile No</th>
<th>Game Name</th>
<th>Play Time From</th>
<th>Play Time To</th>
<th>Amount Payed</th>
<th>Actions</th>
</tr>
</thead>

<tbody>
<c:forEach var="userBooking" items="${ubookinglist}">
<tr>
    <td>${userBooking.id}</td>
    <td>${userBooking.uname}</td>
    <td>${userBooking.mobileno}</td>
    <td>${userBooking.gname}</td>
    <td>${userBooking.playTimeFrom}</td>
    <td>${userBooking.playTimeTo}</td>
    <td>${userBooking.amountPayed}</td>
    <td>
        <a href="${pageContext.request.contextPath}/userbookingdetails/edit/$(userBooking.id)">Edit</a>
        <a href="${pageContext.request.contextPath}/userbookingdetails/delete/$(userBooking.id)">Delete</a>
        <a href="${pageContext.request.contextPath}/userbookingdetails/view/$(userBooking.id)">View</a>
    </td>
</tr>
</c:forEach>
</tbody>
</table>

<a href="${pageContext.request.contextPath}/userbookingdetails/new">Add New Booking</a>
</body>
</html>

