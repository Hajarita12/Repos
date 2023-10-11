<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Réinitialisation du mot de passe</title>
</head>
<body>
    <h1>Réinitialisation du mot de passe</h1>
    
    <form action="resetPasswordProcess" method="post">
        <input type="hidden" name="email" value="<%= request.getParameter("email") %>">
        <label for="password">Nouveau mot de passe :</label>
        <input type="password" id="password" name="password" required><br><br>
        
        <input type="submit" value="Réinitialiser le mot de passe">
    </form>
</body>
</html>
