<%-- 
    Document   : index
    Created on : 28/10/2018, 04:25:49 PM
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <style>
            body {
                relleno: 20px;
                fondo: #fafafa;
                posición: relativa;
            }

        </style>
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <h1>
            Guarda algun recuerdo
        </h1>
        <form action="guardaImagenes" method="post">

            <%
                try {
                    HttpSession ses = request.getSession();
                    String id = ses.getAttribute("id").toString();
                    out.println("<input NAME='idUser'value='" + id + "' style='visibility: hidden;'>");
                } catch (Exception e) {
                    response.sendRedirect("index.jsp");
                }
            %>
            <br/>
            <div class="mdl-textfield mdl-js-textfield"  id="img">
                <input type="file" class="mdl-textfield__input" name="img" class='mdl-button mdl-js-button mdl-button--raised mdl-button--colored'/>
            </div>

            <br/>

            <div class="mdl-textfield mdl-js-textfield"  id="nombre">
                <input type="text" class="mdl-textfield__input" name="nombre"/>
                <label class="mdl-textfield__label" for="sample1">NOMBRE...</label>
            </div>
            <br/>
            <div class="mdl-textfield mdl-js-textfield" id="descripcion">
                <input type="text" name="descripcion"  class="mdl-textfield__input" />
                <label class="mdl-textfield__label" for="sample1">DESCRIPCION...</label>
            </div>
            <br/>
            <input type="submit" name="btn" id="btn" value="Guardar Recuerdo" class='mdl-button mdl-js-button mdl-button--raised mdl-button--colored'>
        </form>
        <br/>
        <br/>
        <p>Quieres revisar tus imagenes? Da click <a href="busca.jsp">aqui</a></p>

    </center>

</body>
</html>
