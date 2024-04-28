<%@page  import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Graficos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link rel="icon" type="image/png" href="imagenes/Alphawolf.png"/>
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
        <script src="https://www.chartjs.org/dist/2.7.3/Chart.bundle.js"></script>
        <script src="https://www.chartjs.org/samples/latest/utils.js"></script>
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
                                                <li><a href="info.jsp" class="tooltipped" data-position="bottom" data-tooltip="Informacion"><i class="material-icons right">info_outline</i></a></li>

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
          <div class="container section center-align">
            <h4>RESULTADOS OBTENIDOS EN LOS TEST</h4>
            <div style="width:100%;">
                <canvas id="canvas"></canvas>
            </div>
            <button id="addData" class="btn waves-effect waves-light blue darken-4">Ver mas resultados<i class="material-icons right">format_list_numbered</i></button>
          </div>
        <%
            try {
                HttpSession ses = request.getSession(true);
                int idUser1 = Integer.parseInt(ses.getAttribute("id").toString());
            } catch (Exception e) {
                response.sendRedirect("index.png");
            }
            int contador = 0;
            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;
            int a = 0;

            int idUser1 = 0;
            try {
                HttpSession ses = request.getSession(true);
                idUser1 = Integer.parseInt(ses.getAttribute("id").toString());
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                sta = con.createStatement();
            } catch (SQLException e) {
                out.println("error" + e.toString());
            }

            try {

                rs = sta.executeQuery("select * from puntuacion where idUser=" + idUser1 + ";");
                while (rs.next()) {
                    a = rs.getInt("puntuacion");
                    out.print("<input type='text' name='a' id='" + contador + "' value='" + a + "' style='visibility: hidden; width: 0.1px; height: 0.1px; opacity: 0; overflow: hidden; position: absolute; z-index: -1;'>");
                    contador++;
                }

                con.close();

            } catch (SQLException e) {
                out.println("error" + e.toString());
            }

        %>
        <!-----------------------------------------------Script----------------------------------------------------->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="jquery-3.3.1.js" type="text/javascript"></script>
        <script src="front-script.js" type="text/javascript"></script>
        <script>
            var MONTHS = ['1er test', '2do test', '3er test', '4to test', '5to test', '6to test', '7mo test', '8vo test', '9no test', '10mo test','11vo test','12vo test'];
            var contador=0;
            var datos =[];
            var i = <%=contador%>;
            while(contador< i){
                datos.push(document.getElementById(contador.toString()).value);
                contador++;
            }
            var config = {
                type: 'line',
                data: {
                    labels: ['1er test', '2do test', '3er test', '4to test'],
                    datasets: [{
                            label: 'RESULTADOS',
                            backgroundColor: window.chartColors.red,
                            borderColor: window.chartColors.green,

                            data:
                                    datos
                            ,
                            fill: false
                        }]

                },
                options: {
                    responsive: true,
                    title: {
                        display: true,
                        text: 'GRAFICA DE RESULTADOS'
                    },
                    tooltips: {
                        mode: 'index',
                        intersect: false
                    },
                    hover: {
                        mode: 'nearest',
                        intersect: true
                    },
                    scales: {
                        xAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'TEST'
                                }
                            }],
                        yAxes: [{
                                display: true,
                                scaleLabel: {
                                    display: true,
                                    labelString: 'CALIFICACION'
                                }
                            }]
                    }
                }
            };
            window.onload = function () {
                var ctx = document.getElementById('canvas').getContext('2d');
                window.myLine = new Chart(ctx, config);
            };
            document.getElementById('addData').addEventListener('click', function () {
                if (config.data.datasets.length > 0) {
                    var month = MONTHS[config.data.labels.length % MONTHS.length];
                    config.data.labels.push(month);
                    config.data.datasets.forEach(function (dataset) {
                        dataset.data.push(0);
                    });
                    window.myLine.update();
                }
            });
        </script>
        <!-----------------------------------------------/Script----------------------------------------------------->
    </body>
</html>