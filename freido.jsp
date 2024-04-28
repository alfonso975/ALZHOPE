
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.sql.*;"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ahorcado</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="icon" type="image/png" href="imagenes/Alphawolf.png"/>
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
        <style type="text/css">
        body {
            font-family: helvetica, arial;
            font-size: 13px;
                background-size: cover;
                background-repeat: no-repeat
        }

        #juego {
            background-color: #ffffff;
            width: 850px;
            border: 15px solid rgb(0, 102, 255);
            border-radius: 15px/20px;
            -moz-border-radius :  15px/20px;
            height: 500px;
            margin: 0px auto;
            margin-top: 20px;
            font-family: helvetica, arial;
            font-size: 13px;
        }

        #datos {
            width: 150px;
            border-right: 1px solid black;
            float: left;
            height: 310px;
            padding: 20px;
            margin-top: 10px;
            font-size: 13px;
        }

        #resultado {
            width: 550px;
            float: left;
            padding: 20px;
            margin-top: 20px;
            margin-left: 50px;
            font-size: 13px;
            font-family: helvetica, arial;
        }

        #resultado span {
            text-transform: uppercase;
        }

        #resultado table td{
            font-family: helvetica;
            font-size: 13px;
            padding:0px 10px;
        }

        #dibujo {
            margin: auto;
            margin-top: -20px;
            margin-left: 80px;
            width: 350px;
            height: 200px;
            border: 0px solid #444;
            float: left;
        }

        #palo-vertical {
            position: absolute;
            border-right: 20px solid #345;
            border-bottom: 2px solid #373;
            margin: auto;
            margin-top: 10px;
            margin-left: 10px;
            height: 200px;
            width: 300px;
        }

        #cabeza {
            position: absolute;
            margin: auto;
            margin-top: 20px;
            margin-left: 200px;
            width: 30px;
            background-color: #000;
            border-radius: 30px;
            -moz-border-radius: 30px;
            border-color: 1px solid #333;
            height: 30px;
            display: none;
        }

        #cuerpo {
            position: absolute;
            margin: auto;
            margin-top: 50px;
            margin-left: 195px;
            width: 40px;
            background-color: #000;
            border-radius: 10px;
            -moz-border-radius: 10px;
            border-color: 1px solid #333;
            height: 50px;
            display: none;
        }

        #piernas {
            position: absolute;
            width: 5px;
            margin: auto;
            margin-top: 93px;
            margin-left: 198px;
            border-left: 15px solid #000;
            border-right: 15px solid #000;
            border-radius: 5px;
            -moz-border-radius: 5px;
            height: 30px;
            display: none;
        }

        #brazos {
            position: absolute;
            margin: auto;
            margin-top: 55px;
            margin-left: 165px;
            width: 100px;
            border-top: 7px solid #000;
            border-bottom: 7px solid #000;
            height: 0px;
            border-radius: 10px;
            -moz-border-radius: 10px;
            display: none;
        }

        #cuerda {
            position: absolute;
            margin: auto;
            margin-top: 47px;
            margin-left: 190px;
            width: 120px;
            border-top: 2px dashed #e55;
            border-bottom: 2px dotted #e55;
            height: 0px;
            border-radius: 10px;
            -moz-border-radius: 10px;
            display: none;
        }

        #informacion {
            padding: 10px 20px;
        }
        </style>
    </head>
    <body onload="comenzarJuego()">
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
                        <li><a href="perfil.jsp" class="tooltipped" data-position="bottom" data-tooltip="Perfil"><i class="material-icons right">account_circle</i></a></li>
                        <li class="tab"><a class="dropdown-trigger tooltipped" data-position="bottom" data-tooltip="Tests" data-target="dropdown1" href="#"><i class="material-icons right">school</i></a></li>
                        <li><a href="juegos.jsp" class="tooltipped" data-position="bottom" data-tooltip="Juegos"><i class="material-icons right">videogame_asset</i></a></li>
                        <li><a href="preguntas frecuentes.jsp" class="tooltipped" data-position="bottom" data-tooltip="Preguntas"><i class="material-icons right">help_outline</i></a></li>
                        <li class="tab"><a class="dropdown-trigger tooltipped" data-position="bottom" data-tooltip="Puntuaciones" data-target="dropdown2" href="#"><i class="material-icons right">trending_up</i></a></li>
                        <li><a href="chat.jsp" class="tooltipped" data-position="bottom" data-tooltip="Foro de ayuda"><i class="material-icons right">question_answer</i></a></li>
                        <li><a href="index.jsp" class="tooltipped" data-position="bottom" data-tooltip="Salir"><i class="material-icons right">undo</i></a></li>
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
            <li><a class="waves-effect" href="chat.jsp"><i class="material-icons">question_answer</i>Foro de ayuda</a></li>
            <li><a class="waves-effect" href="index.jsp"><i class="material-icons">undo</i>Salir</a></li>
        </ul>
        <!-----------------------------------------------/Nav----------------------------------------------------->
        <div class="container center-align section row">
            <div id="juego">
                <div id="informacion">
                    <h2>FREIDO I COM-TECH</h2>
                </div>
                <div id="datos">
                    <form>
                        <table>
                                            
                            <tr>
                                <td>Letra</td>
                                <td><input type="text" name="letra" maxlength="1" size="3"
                                    style="text-transform: uppercase"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                <button class="btn waves-effect waves-light blue darken-4" type="button" name="enviar" value="validar" id="validar" onclick="validarPalabra(form.letra.value)">
                                    Validar
                                </button>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                    <p id="cmamo"></p>
                    Puntuacion: <p id="contador" value=""></p>
                   
                
                   
                <div id="resultado"></div>
                <form action="freido" method="post" id="form" name="form">
                           
                            <input type="text" id="puntos" name="puntos" style="visibility: hidden;display: none">
                            <button class="btn waves-effect waves-light blue darken-4" type="button" name="alta" value="GUARDADR PUNTUACION" onclick="guardar();">GUARDADR PUNTUACION
                                <i class="material-icons right">send</i>
                            </button>
                            
                </form>
                        <div id='dibujo'>
                            <img src="img/1.png" alt="1" id="1" style="position: absolute;top:300px;left:1250px; width: 150px;height: 150px;visibility: hidden;"/>
                            <img src="img/2.png" alt="2" id="2" style="position: absolute;top:300px;left:1250px; width: 150px;height: 150px;visibility: hidden;"/>
                            <img src="img/3.png" alt="3" id="3" style="position: absolute;top:300px; left:1250px;width: 150px;height: 150px;visibility: hidden;"/>
                        </div>
                        
                        <div>
                            <img src="img/6.jpg" alt="6" id="6" style="position: absolute;top:300px; width: 175px;height: 175px;visibility: hidden;"/>
                            <img src="img/5.jpg" alt="5" id="5" style="position: absolute;top:300px; width: 175px;height: 175px;visibility: hidden;"/>
                        </div>
            </div>
        </div>
        <!-----------------------------------------------Script----------------------------------------------------->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="front-script.js" type="text/javascript"></script>
        <script src="js/freir.js"></script>
        <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <!-----------------------------------------------/Script----------------------------------------------------->
        <%
            try {
                HttpSession ses = request.getSession(true);
                String id = ses.getAttribute("user").toString();

            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
