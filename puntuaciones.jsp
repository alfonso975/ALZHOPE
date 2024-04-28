<%-- 
    Document   : puntuaciones
    Created on : 27/11/2018, 12:23:30 AM
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Puntuciones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

        <style type="text/css">
            .xd{
                text-decoration: none;
                padding: 10px;
                font-weight: 600;
                font-size: 110px;
                color: #ffffff;
                background-color: #1883ba;
                border-radius: 6px;
                border: 2px solid #0016b0;
            }
            .xd:hover{
                color: #1883ba;
                background-color: #ffffff;
            }
        </style>
    </head>
    <body class="#ff6d00 orange accent-4">

        <table class="red">
            <thead>
                <tr>
                    <th><a href="perfil.jsp">PERFIL</a></th>
                    <th><a href="test.html">TEST</a></th>
                    <th><a href="preguntas frecuentes.jsp">PREGUNTAR</a></th>
                    <th><a href="juegos.jsp">JUEGOS</a></th>
                    <th><a href="chat.jsp">FORO DE AYUDA</a></th>
                    <th><a class="btn-floating btn-large pulse" href="index.jsp" ><i class="material-icons">💥 </i></a></th>
                </tr>
            </thead>
        </table>
        <div >
            <center>
                <br/><br/><br/><br/><br/>
                <a href="puntuacionm.jsp"><input type="button" class="xd" value="Memorama"></a><br/><br/><br/><br/>
                <a href="puntuaciona.jsp"><input type="button" class="xd" value="Ahorcado"></a>
            </center>
             <br/><br/><br/><br/>
             
        </div>
        <%
            try {
                HttpSession ses = request.getSession(true);
                String id = ses.getAttribute("user").toString();
            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        %>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>

