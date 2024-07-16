<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Lead</title>
</head>
<body style="background-color: lightblue;">
<h2>Create New Lead</h2>
<form action="savebilling" method="post">

First Name<input type="text" name="firstName" value="${contact.firstName}"/>
Last Name<input type="text" name="lastName" value="${contact.lastName}"/>
Email<input type="text" name="email" value="${contact.email}"/>
Mobile<input type="text" name="mobile" value="${contact.mobile}"/><br>
<pre>
 Product  <input type="text" name="product"><br>
 
Amount  <input type="text" name="amount"><br>

         <input type="submit" value="Generate Bill"/>
      </pre>

</form>

   
</body>
</html>