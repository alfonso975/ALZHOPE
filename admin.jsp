<%-- 
    Document   : admin
    Created on : 11/02/2019, 11:27:49 AM
    Author     : Profesor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
        <link rel="icon" type="image/png" href="imagenes/Alphawolf.png"/>
        
    </head>
    <body style="background: url(img/descarga.png); background-repeat: no-repeat;
    background-size: cover;
    margin: 0 auto;
    background-attachment: fixed;
    line-height: 20px;
    overflow: visible;">
      <!-----------------------------------------------Nav----------------------------------------------------->
      <div class="navbar-fixed row valign-wrapper">
            <nav class="blue darken-4">
                <div>
                    <a href="#" data-target="slide-out" class="sidenav-trigger"><i class="material-icons">menu</i></a>
                    <div class="col l1 hide-on-med-and-down"></div>
                    <div class="hide-on-large-only">
                        <a href="#!" class="brand-logo center"><img src="imagenes/New Project.png"></a>
                    </div>
                    <div class="left col l3 center-align container valign-wrapper hide-on-med-and-down">
                        <a href="#" class="center"><img src="imagenes/New Project.png"></a>
                    </div>
                    <ul class="right hide-on-med-and-down col l6 center-align">
                        <li><a href="preguntas frecuentes.jsp" class="tooltipped" data-position="bottom" data-tooltip="Preguntas"><i class="material-icons right">help_outline</i></a></li>
                        <li><a href="chat.jsp" class="tooltipped" data-position="bottom" data-tooltip="Foro de ayuda"><i class="material-icons right">question_answer</i></a></li>
                        <li><a href="index.jsp" class="tooltipped" data-position="bottom" data-tooltip="Salir"><i class="material-icons right">undo</i></a></li>
                    </ul>
                </div>
            </nav>
          </div>
          <!-----------------------------------------------Sidenav----------------------------------------------------->
          <ul id="slide-out" class="sidenav">
            <li>
              <div class="user-view">
                <div class="background">
                  <img src="imagenes/pixel.gif">
                </div>
                <a href="#user"><img class="circle" src="imagenes/imagenacount.jpg"></a>
                <a href="#name"><span class="white-text name">Usuario</span></a>
              </div>
            </li>
            <li><a class="subheader">AlzHope</a></li>
            <li><div class="divider"></div></li>
            <li><a class="waves-effect" href="preguntas frecuentes.jsp"><i class="material-icons">help_outline</i>Preguntas</a></li>
            <li><a class="waves-effect" href="chat.jsp"><i class="material-icons">question_answer</i>Foro de ayuda</a></li>
            <li><a class="waves-effect" href="index.jsp"><i class="material-icons">undo</i>Salir</a></li>
          </ul>
          <!-----------------------------------------------/Nav----------------------------------------------------->
        <%

            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            %>
            <div class="container section">
             <table class="responsive-table centered highlight " style='background-color:#DCF0F7'>
                 <thead>
                <tr>
                <th>
                NOMBRE
                </th>
                <th>
                PREGUNTA
                </th>
                <th>
                RESPUESTA
                </th>
                <th>
                ACEPTAR
                </th>
                <th>
                ELIMINAR
                </th>
                </tr>
                 </thead>
        <%

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                sta = con.createStatement();
                rs = sta.executeQuery("select*from preguntaUsuario");               
                while (rs.next()) {
                    String id = rs.getString("id");
                    String nombre = rs.getString("nombre");
                    String pregunta = rs.getString("pregunta");
%>
<tbody><%
                    out.print("<tr>");
                    out.print("<td>");
                    out.print("<form action='altas.jsp' method='post'>");
                    out.print("<input type='text' name='nombre' value='" + nombre + "' style='display:none' >");
                    out.print(nombre);
                    out.print("</td>");
                    out.print("<td>");

                    out.print("<input type='text' name='pregunta' value='" + pregunta + "' style='display:none'>");
                    out.print(pregunta);
                    out.print("</td>");
                    out.print("<td>");

                    out.print("<input type='text' placeholder='respuesta...' id='respuesta' name='respuesta'>");
                    out.print("</td>");
                    out.print("<td>");
                    out.print("<input type='text' name='a' value='" + id + "' style='display:none;'>"
                            + "<input type='submit' value='✔'  class='btn waves-effect waves-light' style='background-color:#86F74A' >");
                    out.print("</form>");
                    out.print("</td>");
                    out.print("<td>");
                    out.println("<form action='bajas2.jsp' method='post'>"
                            + "<input type='text' name='p' value='" +id + "' style='display:none'>"
                            + "<input type='submit' value='X' style='background-color:#F92C32' class='btn waves-effect waves-light'>"
                            + "</form>");

                    out.print("</td>");
                    out.print("</tr>");

                }
            } catch (Exception error) {
                out.println(error);

            }
        %>
</tbody>
             </table>
            </div>
    <!-----------------------------------------------Script----------------------------------------------------->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="front-script.js" type="text/javascript"></script>
    <!-----------------------------------------------/Script----------------------------------------------------->
    </body>
</html>
