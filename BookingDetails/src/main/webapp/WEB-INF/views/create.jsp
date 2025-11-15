<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking Details</title>
</head>
<body>
    <h2>${userbooking.id != null ? 'Edit' : 'Add New'} UserBooking</h2>
    <form action="${pageContext.request.contextPath}/userbookingdetails/save" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="${userbooking.id}"/>
        <label for="uname">Name:</label>
        <input type="text" id="uname" name="uname" value="${userbooking.uname}" required/><br/>

        <label for="mobileno">Mobile No:</label>
        <input type="number" id="mobileno" name="mobileno" value="${userbooking.mobileno}" required/><br/>
        
        <label for="gname">Game Name:</label>
        <input type="text" id="gname" name="gname" value="${userbooking.gname}" required/><br/>
        
        <label for="playTimeFrom">Play Time From:</label>
        <input type="time" id="playTimeFrom" name="playTimeFrom" value="${userbooking.playTimeFrom}" required/><br/>
        
        <label for="playTimeTo">Play Time To:</label>
        <input type="time" id="playTimeTo" name="playTimeTo" value="${userbooking.playTimeTo}" required/><br/>
        
        <label for="amountPayed">Amount Payed:</label>
        <input type="number" id="amountPayed" name="amountPayed" value="${userbooking.amountPayed}" required/><br/>
        

        <input type="submit" value="Save"/>
    </form>
    <a href="${pageContext.request.contextPath}/userbookingdetails/list">Back to list</a>
</body>
</html>