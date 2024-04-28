<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*;"%>
<%@page import="java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Preguntas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="icon" type="image/png" href="imagenes/Alphawolf.png"/>
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
    </head>
    <body>
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
                        <!--valida que si es el admin abre una barra de navegacion diferente-->
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
                        <li><a href="chat.jsp" class="tooltipped" data-position="bottom" data-tooltip="Foro de ayuda"><i class="material-icons right">question_answer</i></a></li>
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
            <li><a class="dropdown-trigger" href="#!" data-target="dropdown2_2"><i class="material-icons">trending_up</i>Puntuaciones</a></li>
            <ul id='dropdown2_2' class='dropdown-content'>
                <li><a href="puntuacionm.jsp">Memorama</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="puntuaciona.jsp">Ahorcado</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="grafica.jsp">Tests</a></li>
            </ul>
            </li>
            <li><a class="waves-effect" href="chat.jsp"><i class="material-icons">question_answer</i>Foro de ayuda</a></li>
            <li><a class="waves-effect" href="index.jsp"><i class="material-icons">undo</i>Salir</a></li>
          </ul>
          <!-----------------------------------------------/Nav----------------------------------------------------->
      <!-----------------------------------------------Modales----------------------------------------------------->
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
                    String id = rs.getString("id_user");%>
        <div class="container">
          <div class="section">
              <div id="Modal1" class="modal">
                  <div class="modal-content">
                      <div class="row">
                          <div class="col s4"></div>
                          <div class="col s4 blue darken-4 center">
                              <img class="responsive-img wow pulse center" src="imagenes/New Project.png" data-wow-delay="2s">
                          </div>
                          <div class="col s4"></div>
                          <div class="col s12 center">
                              <h6 class="flow-text blue-text darken-4">Envíanos tu pregunta</h6>
                          </div>

                          <form method='post' action='preguntar.jsp'>
                              <input type='text' id ='id' name='id' value='<%=id%>' style='visibility:hidden'>
                              <input type='text' name='nombre' value='<%=nombre%>' style='visibility:hidden'>
                              <div class="input-field col s12">
                                  <input id="pregunta" name="pregunta" type="text" class="validate blue-text darken-4" maxlength="500" required>
                                  <label for="contra1" class="blue-text darken-4">¿Cuál es tu pregunta?</label>
                              </div>
                              <div class="col s12 center">
                                  <button id="submit1" class="btn waves-effect waves-light blue darken-4" type="submit" value='Enviar'>Enviar
                                      <i class="material-icons right">send</i>
                                  </button>
                              </div>
                          </form>
                      </div>
                  </div>
              </div>
        <%

                }

            } catch (SQLException error) {
                out.print("segundo " + error.toString());
            }
        %>
      <!-----------------------------------------------/Modales----------------------------------------------------->

              <div class="row ">
                  <div class="col s12">
                      <h2 class="blue-text darken-4 center">Preguntas frecuentes</h2>

                      <ul class="collapsible">
                          <li>
                              <div class="collapsible-header">
                                  <i class="material-icons">help_outline</i>
                                  ¿Cómo puedo recuperar mi contraseña?
                              </div>
                              <div class="collapsible-body">
                                  <p>Con el correo que se proporcionó al principio, existe un apartado especial para hacer esta operación la cual se encuentra en el módulo “registrarse”.</p>
                              </div>
                          </li>
                          <li>
                              <div class="collapsible-header">
                                  <i class="material-icons">help_outline</i>
                                  ¿A qué especialista puedo contactar en caso de un problema?
                              </div>
                              <div class="collapsible-body">
                                  <p>En la parte de información se encuentra el contacto de la empresa.</p>
                              </div>
                          </li>
                          <li>
                              <div class="collapsible-header">
                                  <i class="material-icons">help_outline</i>
                                  ¿Cómo puedo obtener información de la empresa?
                              </div>
                              <div class="collapsible-body">
                                  <p>Existe todo un módulo dentro de la aplicación en donde encontraras nuestra visión, misión, etc.</p>
                              </div>
                          </li>
                          <li>
                              <div class="collapsible-header">
                                  <i class="material-icons">help_outline</i>
                                  ¿Dónde obtengo información sobre el uso de la aplicación?
                              </div>
                              <div class="collapsible-body">
                                  <p>Un manual de usuario se le proporcionara a su correo.</p>
                              </div>
                          </li>
                          <li>
                              <div class="collapsible-header">
                                  <i class="material-icons">help_outline</i>
                                  ¿A qué especialistas en la enfermedad puedo recurrir?
                              </div>
                              <div class="collapsible-body">
                                  <p>Dentro de la aplicación puedes encontrar todos los contactos de médicos especialistas de diferentes lugares.</p>
                              </div>
                          </li>
                            <%
                                con = null;
                                sta = null;
                                rs = null;
                                try {
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    con = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                                    sta = con.createStatement();
                                } catch (SQLException error) {
                                    out.print("Error " + error.toString());
                                }

                                try {

                                    rs = sta.executeQuery("select*from preguntaAdmin");
                                    while (rs.next()) {

                                        String nombre = rs.getString("nombre");
                                        String pregunta = rs.getString("pregunta");
                                        String respuesta = rs.getString("respuesta");
                                        %>
                            <li>
                              <div class="collapsible-header">
                                  <i class="material-icons">help_outline</i>
                                  <%=pregunta%>
                              </div>
                              <div class="collapsible-body">
                                  <p><%=respuesta%></p>
                                  <p>Esta pregunta fue hecha por: <%=nombre%></p>
                              </div>     
                            </li>
                          
                          <%

                                    }

                                } catch (Exception error) {
                                    out.print("segundo " + error.toString());
                                }
                            %>
                        </ul>
                        <br>                        <br>

                    </div>
                    <div class="col s12 center">
                        <a href="#Modal1" class="modal-trigger">¿Tienes otra pregunta?</a>
                    </div>
                </div>
                <footer class="page-footer white" >
                    <div class="row center black-text">
                        ©AlzHope 2018 All Rights Reserved.                
                    </div>
                </footer>
            </div>
        </div>
    <!-----------------------------------------------Script----------------------------------------------------->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="front-script.js" type="text/javascript"></script>
    <!-----------------------------------------------/Script----------------------------------------------------->
    </body>
</html>