<%-- 
    Document   : login
    Created on : 28-oct-2019, 19:49:18
    Author     : David Herrera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">
        <h2>Bienvenido</h2>
        <br>
        <form action="LoginController" method="post">
            Usuario: <input type="text" name="usu"><br>
            contraseña: <input type="password" name="pas"><br>
            <button> Ingresar</button>
        </form>
    </body>
</html>
