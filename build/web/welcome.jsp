<%@page import="ma.projet.entity.Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        h1 {
            font-size: 24px;
            color: #007BFF;
        }
    </style>
</head>
<body>
    <%
    Client c = (Client) session.getAttribute("client");
    if (c == null) {
        response.sendRedirect("auth.jsp");
    }
    %>
    <h1>Welcome, <%= c.getNom() %></h1>
</body>
</html>
