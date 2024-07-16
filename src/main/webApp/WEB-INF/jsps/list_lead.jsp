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
background-color: #fff5d7;
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
<h2>All Leads</h2>
<table class="table table-striped"> <!-- Add Bootstrap table class -->
<tr>
<th>Link</th> 
<th>First Name</th>    <%--26.09.22 --%>
<th>Last Name</th>
<th>Email</th>
<th>Mobile</th>
</tr>

<c:forEach var="lead" items="${leads}">   <%--26.09.22 --%>
<tr>
<td><a href="leadinfo?id=${lead.id}">${lead.firstName}</a></td>
<td>${lead.firstName}</td>       <%--26.09.22 --%>
<td>${lead.lastName}</td>
<td>${lead.email}</td>         <%-- $ - act like request.getAttribute --%>
<td>${lead.mobile}</td>
</tr>
</c:forEach>

</table>

</body>
</html>
