<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@ include file="menu.jsp" %>
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>leads</title>


<style>
body{
background-color: #D5E8EC;
color: #ff5e6c;

}
  h2 {
    text-align: center;
    margin-top: 20px;
    text-decoration: underline;
    font-family: 'Pacifico', cursive;
  }
  table {
    width: 80%;
    margin: 0 auto;
    border-collapse: collapse;
  }
  th, td {
    padding: 10px;
    border: 1px solid #ccc;
    text-align: left;
  }
  th{
  color: Blue;
  }

  a:hover {
    text-decoration: underline;
  }
</style>
</head>
<body>
<h2>Contacts</h2>
<table class="table table-striped"> <!-- Add Bootstrap table class -->
<tr>

<th>First Name</th>    <%--26.09.22 --%>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>
<th>Billing</th>
</tr>

<c:forEach var="contact" items="${contacts}">   <%--26.09.22 --%>
<tr>

<td>${contact.firstName}</td>       <%--26.09.22 --%>
<td>${contact.lastName}</td>
<td>${contact.email}</td>         <%-- $ - act like request.getAttribute --%>
<td>${contact.mobile}</td>
<td><a href="generateBill?id=${contact.id}">billing</a></td>
</tr>
</c:forEach>

</table>

</body>
</html>
