<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        fieldset {
            border: 2px solid #007BFF;
            border-radius: 10px;
            width: 300px;
            margin: 0 auto;
            background-color: #ffffff;
            padding: 20px;
            box-shadow: 0px 0px 10px rgba(0, 123, 255, 0.2);
        }
        legend {
            font-weight: bold;
            color: #007BFF;
            font-size: 18px;
            margin-bottom: 15px;
        }
        table {
            width: 100%;
        }
        td {
            padding: 10px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        h3 {
            color: red;
            margin: 10px 0 0;
        }
    </style>
</head>
<body>
    <form action="auth" method="POST">
        <fieldset>
            <legend>Authentication:</legend>
            <table>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" value=""></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" value=""></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Login"></td>
                    <a href="resetPassword.jsp">Mot de passe oublié ?</a>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <h3>${msg}</h3>
                    </td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
