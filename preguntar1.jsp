<%-- 
    Document   : preguntar
    Created on : 13/03/2019, 11:11:05 AM
    Author     : Ricardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pregunta</title>
    </head>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <body class="#ff6d00 orange accent-4">
        <table class="red">
            <thead>
                <tr>
                    <th><a href="perfil.jsp">PERFIL</a></th>
                    <th><a href="test.html">TEST</a></th>
                    <th><a href="preguntas frecuentes.jsp">PREGUNTAR</a></th>
                    <th><a href="juegos.jsp">JUEGOS</a></th>
                    <th><a href="puntuaciones.jsp">PUNTUACIONES</a></th>
                    <th><a href="#">FORO DE AYUDA</a></th>
                    <th><a class="btn-floating btn-large pulse" href="index.jsp" ><i class="material-icons">💥 </i></a></th>
                </tr>
            </thead>
        </table>
        <div >
            <center>
                <%
                    Connection con = null;
                    Statement sta = null;
                    ResultSet rs = null;
                    try {
                        Class.forName("com.mysql.jdbc.Driver").newInstance();
                        con = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                        sta = con.createStatement();
                    } catch (SQLException error) {
                        out.print("Error " + error.toString());
                    }

                    try {
                        rs = sta.executeQuery("select*from users");

                        if (rs.next()) {

                            String nombre = rs.getString("nombre");
                            String id = rs.getString("id_user");
                            out.print("<form method='post' action='preguntar.jsp'>");
                            out.print("<input type='text' id ='id' name='id' value='" + id + "' style='visibility:hidden'>");

                            out.print("<input type='text' name='nombre' value='" + nombre + "'style='visibility:hidden'>");
                            out.print("<input type='text' name='pregunta'  placeholder='Escribe tu pregunta'>");
                            out.print("<input type='submit' value='Enviar'>");
                            out.print("</form>");

                        }

                    } catch (SQLException error) {
                        out.print("segundo " + error.toString());
                    }
                %>
                
            </center>
        </div>
    </body>
</html>
