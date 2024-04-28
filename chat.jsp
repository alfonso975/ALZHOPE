
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.io.*,java.sql.*;"%> 
<html>
    <head>
        <title>Foro de ayuda</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="icon" href="imagenes/Alphawolf.png" type="image/png"/>
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
    </head>
<body background="imagenes/paisaje-nevado-en-el-parque-nacional-deogyusan-corea-del-sur.jpg" style="background-size: cover; background-position: center; background-attachment: fixed;">
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
                  <%
                        HttpSession ses = request.getSession();
                        String id1 = ses.getAttribute("id").toString();
                        if(!id1.equals("1")){%>
                        <li><a href="perfil.jsp" class="tooltipped" data-position="bottom" data-tooltip="Perfil"><i class="material-icons right">account_circle</i></a></li>
                                    <li><a href="info.jsp" class="tooltipped" data-position="bottom" data-tooltip="Informacion"><i class="material-icons right">info_outline</i></a></li>

                        <li class="tab"><a class="dropdown-trigger tooltipped" data-position="bottom" data-tooltip="Tests" data-target="dropdown1" href="#"><i class="material-icons right">school</i></a></li>
                        <li><a href="juegos.jsp" class="tooltipped" data-position="bottom" data-tooltip="Juegos"><i class="material-icons right">videogame_asset</i></a></li>
                        <li class="tab"><a class="dropdown-trigger tooltipped" data-position="bottom" data-tooltip="Puntuaciones" data-target="dropdown2" href="#"><i class="material-icons right">trending_up</i></a></li>
                        <%}else{%>
                        <li><a href="admin.jsp" class="tooltipped" data-position="bottom" data-tooltip="admin"><i class="material-icons right">undo</i></a></li>
                        <%}%>
                        <li><a href="preguntas frecuentes.jsp" class="tooltipped" data-position="bottom" data-tooltip="Preguntas Frecuentes"><i class="material-icons right">help_outline</i></a></li>
                  <li><a href="index.jsp" class="tooltipped" data-position="bottom" data-tooltip="Salir"><i class="material-icons right">cancel</i></a></li>
              </ul>
    <!-----------------------------------------------Desplegables----------------------------------------------------->
              <ul id='dropdown1' class='dropdown-content'>
                  <li><a href="test1.html">Test 1</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test2.html">Test 2</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test3.html">Test 3</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test4.html">Test 4</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test5.html">Test 5</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test6.html">Test 6</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test7.html">Test 7</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test8.html">Test 8</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test9.html">Test 9</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test10.html">Test 10</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test11.html">Test 11</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="test12.html">Test 12</a></li>
              </ul>
              <ul id='dropdown2' class='dropdown-content'>
                  <li><a href="puntuacionm.jsp">Memorama</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="puntuaciona.jsp">Ahorcado</a></li>
                  <li class="divider" tabindex="-1"></li>
                  <li><a href="grafica.jsp">Tests</a></li>
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
      <li><a class="waves-effect" href="perfil.jsp"><i class="material-icons">account_circle</i>Perfil</a></li>
      <li><a class="dropdown-trigger" href="#!" data-target="dropdown1_2"><i class="material-icons">school</i>Tests</a></li>
        <ul id='dropdown1_2' class='dropdown-content'>
          <li><a href="test1.html">Test 1</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test2.html">Test 2</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test3.html">Test 3</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test4.html">Test 4</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test5.html">Test 5</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test6.html">Test 6</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test7.html">Test 7</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test8.html">Test 8</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test9.html">Test 9</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test10.html">Test 10</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test11.html">Test 11</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="test12.html">Test 12</a></li>
        </ul>
      </li>
      <li><a class="waves-effect" href="juegos.jsp"><i class="material-icons">videogame_asset</i>Juegos</a></li>
      <li><a class="waves-effect" href="preguntas frecuentes.jsp"><i class="material-icons">help_outline</i>Preguntas</a></li>
      <li><a class="dropdown-trigger" href="#!" data-target="dropdown2_2"><i class="material-icons">trending_up</i>Puntuaciones</a></li>
      <ul id='dropdown2_2' class='dropdown-content'>
          <li><a href="puntuacionm.jsp">Memorama</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="puntuaciona.jsp">Ahorcado</a></li>
          <li class="divider" tabindex="-1"></li>
          <li><a href="grafica.jsp">Tests</a></li>
      </ul>
      </li>
      <li><a class="waves-effect" href="index.jsp"><i class="material-icons">undo</i>Salir</a></li>
    </ul>
    <!-----------------------------------------------/Nav----------------------------------------------------->
    <div class="container section">
        <div class="row">
            <div class="white col l8 m10 s12 black-text offset-l2 offset-m1"><!--este es el que debo de alinear-->
                <div id="conversacion" style="height: 375px; overflow: scroll;">
                    <%

                        try {

                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                            Statement s = conexion.createStatement();
                            ResultSet rs = s.executeQuery("select * from chat;");

                            while (rs.next()) {
                                String user = rs.getString("usuario").toString();
                                String msj = rs.getString("mensaje").toString();

                                out.print("<p>" + user + " dice:" + msj + "<br>");
                            }

                        } catch (Exception e) {
                            out.print(e.toString());
                        }

                    %>

                    <P id="xd"></P> 
                </div>
                <div id="opcion">
                    <form method="post">
                        <%
                            HttpSession misession = request.getSession(true);
                            String id = misession.getAttribute("id").toString();
                            String nombre = misession.getAttribute("user").toString();
                            out.print("<input type='text' id='id'  name='id' value='" + id + "' style='visibility: hidden;'/>");
                        %>
                        <input type="text" id="mensaje" placeholder="Mensaje" name="user" />
                        <button class="btn blue darken-4" type="button" value="enviar" id="enviar" onclick="">Enviar
                          <i class="material-icons right">send</i>
                        </button>
                        <%
                            out.print("<input type='text' id='usuario'  name='user' value='" + nombre + "'  style='visibility: hidden;'/>");
                        %>
                    </form>
                </div>
            </div>
        </div>
        <div>
            <footer class="page-footer" style="background: none; font-size: 20px;">
                <div class="row center white-text">
                    ©AlzHope 2019 All Rights Reserved.                
                </div>
            </footer>
        </div>
    </div>
    <!-----------------------------------------------Script----------------------------------------------------->
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="front-script.js" type="text/javascript"></script>
    <script src='js/codigo.js'></script>
    <script src="js/materialize.min.js" type="text/javascript"></script>
    <!-----------------------------------------------/Script----------------------------------------------------->
    </body>
</html>
