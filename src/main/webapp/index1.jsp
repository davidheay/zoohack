<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="index.js" type="text/javascript"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="text-align: center">
        <form method="post" action="GuardarController">
            <p>INSERTAR FOTO</p>
            <input type="file" id="file" name="file" multiple size="50">
            <input type="text" id="b64" name="b64" hidden>
            <br>
            <br>
            <button>Guardar foto</button> 
        </form>

        <form method="post" action="Reiniciar">

            <button>Limpiar fotos</button>
        </form>
        <form method="get" action="LoginController">

            <button>Salir</button>
        </form>

        <br>
        <br>
        <c:forEach items="${lstFotos}" var="foto">
            <img src="data:image/png;base64,<c:out value = "${foto}"/>" width="300" height="300">

        </c:forEach>
    </body>
</html>
