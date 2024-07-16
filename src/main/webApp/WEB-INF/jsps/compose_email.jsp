<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: #FF7F7F">
<form action="triggerEmail" method="post">
<pre>
To  <input type="text" name="email" value="${email}"><br/>
Subject  <input type="text" name="Subject" ><br/>
<textarea rows="10" cols="50" name="content" >

</textarea><br/>
</pre>
<input type="submit" value="send">
</form>

    ${msg}

</body>
</html>