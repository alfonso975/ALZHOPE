<html>
    <head>
        <title>Memorama</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
        <div class="container center-align">
            <form method="post" action="memo">
                <div>
                    Oprima para cargar la imagenes:
                    <button type="button" value="Cargar" class="btn waves-effect waves-light blue darken-4" onclick="CargaAleatorio();">
                        Cargar<i class="material-icons right">replay</i>
                    </button>
                    Oprima boton para Limpiar y jugar: 
                    <button type="button" value='Jugar' class="btn waves-effect waves-light blue darken-4" onclick="limpiar();">
                        Jugar<i class="material-icons right">videogame_asset</i>
                    </button>
                
                    <table>
                        <tr>
                            <td><img class="tarjeta" src="imagenes/0.png" id="1a" alt="0" onclick="evento('1', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="2a" alt="0" onclick="evento('2', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png"  id="3a" alt="0" onclick="evento('3', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png"  id="4a" alt="0" onclick="evento('4', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png"  id="5a" alt="0" onclick="evento('5', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png"  id="6a" alt="0" onclick="evento('6', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png"  id="7a" alt="0" onclick="evento('7', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png"  id="8a" alt="0" onclick="evento('8', this.id);"/> </td>
                        </tr>
                        <tr>
                            <td><img class="tarjeta" src="imagenes/0.png" id="9a" alt="0" onclick="evento('9', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="10a" alt="0" onclick="evento('10', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="11a" alt="0" onclick="evento('11', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="12a" alt="0" onclick="evento('12', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="13a" alt="0" onclick="evento('13', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="14a" alt="0" onclick="evento('14', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="15a" alt="0" onclick="evento('15', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="16a" alt="0" onclick="evento('16', this.id);"/> </td>
                        </tr>
                        <tr>
                            <td><img class="tarjeta" src="imagenes/0.png" id="17a" alt="0" onclick="evento('17', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="18a" alt="0" onclick="evento('18', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="19a" alt="0" onclick="evento('19', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="20a" alt="0" onclick="evento('20', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="21a" alt="0" onclick="evento('21', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="22a" alt="0" onclick="evento('22', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="23a" alt="0" onclick="evento('23', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="24a" alt="0" onclick="evento('24', this.id);"/> </td>
                        </tr>
                        <tr>
                            <td><img class="tarjeta" src="imagenes/0.png" id="25a" alt="0" onclick="evento('25', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="26a" alt="0" onclick="evento('26', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="27a" alt="0" onclick="evento('27', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="28a" alt="0" onclick="evento('28', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="29a" alt="0" onclick="evento('29', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="30a" alt="0" onclick="evento('30', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="31a" alt="0" onclick="evento('31', this.id);"/> </td>
                            <td><img class="tarjeta" src="imagenes/0.png" id="32a" alt="0" onclick="evento('32', this.id);"/> </td>
                        </tr>
                    </table>
                </div>
                <div>
                    <p>Pares encontrados:</p>
                    <p id="contador">0</p>
                    <button type='submit' value='Guardar puntuacion' class="btn waves-effect waves-light blue darken-4">
                        Guardar puntuacion
                    </button>
                </div>
                <input type='text' id="puntuacionM" name='puntuacionM' value='0'style="visibility: hidden; width: 0.1px; height: 0.1px; opacity: 0; overflow: hidden; position: absolute; z-index: -1;">
            </form>
        </div>
        <!-----------------------------------------------Script----------------------------------------------------->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="jquery-3.3.1.js" type="text/javascript"></script>
        <script src="front-script.js" type="text/javascript"></script>
        <script src="js/memora.js"></script>
        <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <!-----------------------------------------------/Script----------------------------------------------------->
    </body>
</html>