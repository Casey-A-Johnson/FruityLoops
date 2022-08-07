<!-- Here we have to import the Date class. -->
<!-- You will put the import in the first line of the jsp tag. Use the import attribute -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Demo JSP</title>
        <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="/css/style.css">
        <script src="/webjars/jquery/jquery.min.js"></script>
        <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="/js/app.js"></script>
    </head>
<body>
    <!-- Inserting a for loop into your jsp -->
    <% for(int i = 0; i < 5; i++) { %>
        <h1><%= i %></h1>
    <% } %>
    <p>The time is: <%= new Date() %></p>
    
    <h1> Two plus two is:</h1>
    <h2><c:out value="${2+2}"/></h2>
    
    <h1>Fruit of the Day</h1>
    <h2><c:out value="${fruit}"></c:out></h2>
    
    <button class="btn btn-outline-success">Bootstrap</button>
    
    <h1>Dojo Locations</h1>
     <c:forEach var="oneDojo" items="${dojosFromMyController}">
        <p><c:out value="${oneDojo}"></c:out></p>
    </c:forEach>
</body>
</html>
