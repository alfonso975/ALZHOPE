<%-- 
    Document   : info
    Created on : 3/05/2019, 07:33:08 PM
    Author     : Toshiba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INFORMACION</title>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="icon" type="image/png" href="imagenes/Alphawolf.png"/>
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
    </head>
    
    <body style="background-color: #EBEBEB">
        
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
          
         
                      
                      <!----------------------------------------CARRUSEL------------------------------------------------------------------------------------------------->
                      
                          
                          
                      <div class="slider" style="position: absolute;top: 50px">
    <ul class="slides">
      <li>
          <img src="imagenes/atardecer.jpg" > <!-- random image -->
        <div class="caption center-align">
            <h1><i>ALZHOPE</i></h1>
            <h3 class="light grey-text text-lighten-3"><i><b>"UNA NUEVA ESPERANZA..."</b></i></h3>
        </div>
      </li>
      <li>
        <img src="imagenes/12C.jpg"> <!-- random image -->
        <div class="caption left-align">
          <h3>DESCUBRIMIENTO:</h3>
          <h5 class="light grey-text text-lighten-3">El Alzheimer tal como la conocemos hoy en día se remonta al 25 de noviembre de 1901 </h5>
          <h5 class="light grey-text text-lighten-3">Descubierto por el médico alemán Aloysius ‘Alois’ Alzheimer</h5>
        </div>
      </li>
      <li>
          <img src="imagenes/c1.jpg"> <!-- random image -->
        <div class="caption right-align">
          <h3>ALZHEIMER</h3>
          <h5 class="light grey-text text-lighten-3">El Alzhéimer es una enfermedad Neurodegenerativa que afecta a las funciones de los corticales superiores del cerebro</h5>
          <h5 class="light grey-text text-lighten-3">La enfermedad de Alzheimer es la forma más común de demencia entre las personas mayores.</h5>
        </div>
      </li>
      <li>
          <img src="imagenes/ata.jpg"> <!-- random image -->
        <div class="caption center-align">
          <h3>NOSOTROS TE PODEMOS AYUDAR!</h3>
          <h5 class="light grey-text text-lighten-3">ALZHOPE es una aplicacion especificamente desarrollada no solo para ayudar a los pacientes...</h5>
          <h5 class="light grey-text text-lighten-3">Sino que tambien a sus familiares.</h5>
        
        </div>
        </li>
    </ul>
  </div>
                             
                      <br><br> <br><br> <br><br><br><br> <br><br> <br><br><br><br> <br><br> <br><br><br><br> <br><br> <br><br><br><br> 
                      <!------------------------------------------------/CARRUSEL--------------------------------------------------------------------------->
                 
                      <div><h2 class="blue-text darken-4 center">ALZHEIMER</h2>
                    <div style="padding-left:200px;padding-right: 200px">
                        <b><i>  
                                
                                
                                
                                
                   <p>El Alzheimer comienza lentamente. Primero afecta las partes del cerebro que controlan el pensamiento, la memoria y el lenguaje. Las personas con el mal pueden tener dificultades para recordar cosas que ocurrieron en forma reciente o los nombres de personas que conocen, con el tiempo, los síntomas del Alzheimer empeoran. Las personas pueden no reconocer a sus familiares. Pueden tener dificultades para hablar, leer o escribir. Pueden olvidar cómo cepillarse los dientes o peinarse el cabello. Más adelante, pueden volverse ansiosos o agresivos o deambular lejos de su casa. Finalmente, necesitan cuidados totales. Esto puede ser muy estresante para los familiares que deben encargarse de sus cuidados.
El Alzheimer suele comenzar después de los 60 años. El riesgo aumenta a medida que la persona envejece. El riesgo es mayor si hay personas en la familia que tuvieron la enfermedad.
Ningún tratamiento puede detener la enfermedad. Sin embargo, algunos fármacos o tratamientos pueden ayudar a tratar el avance de la enfermedad  </p><br>
                   <p>
Cuidar a una persona con Alzhéimer es una tarea difícil, ya que requiere de mucha atención y dedicación. La persona cuidadora necesita el soporte de su familia y amigos para superar el día a día y el estado de ánimo cambiante del paciente. No obstante, si cuidas de una persona con Alzhéimer, te recomendamos que sigas ciertas rutinas para que la enfermedad no te supere y conozcas algunos consejos que te ayudarán a desempeñar tu tarea.

 

Desde Tú cuentas mucho te ofrecemos esta lista con 12 consejos básicos y muy prácticos, que esperamos te resulten útiles:

 <ol>
  <li>Pregunta al médico y a los expertos: cuando acudas a la consulta con el médico, 
      haz todas las preguntas que tengas, especialmente sobre la progresión de la enfermedad y las opciones de tratamiento que mejor alivian los síntomas.
      Cuanta más información tengas, mejor podrás ayudar. Ponerse en contacto con asociaciones de pacientes , 
      centros de día y grupos de apoyo es muy recomendable tanto para la persona afectada como para el cuidador y es una excelente forma de conocer en profundidad lo que está sucediendo.</li><br>
  <li>Sé flexible y adapta la rutina: aprovecha los momentos del día en que la persona está menos confundida y con más disposición a cooperar para realizar las tareas más difíciles.
</li><br>
  <li>Comunicación: al hablar con la persona con Alzheimer, llámala por su nombre para asegurar que tienes su atención, háblale con un tono pausado y amable, dándole tiempo para encontrar las palabras correctas y expresarse.
</li><br>
  <li>Facilítale las tareas diarias: como el vestirse (preparando la ropa de antemano y teniendo el armario bien organizado) o el baño (dejándolo todo preparado), para evitar que el paciente tenga que sortear dificultades.
</li><br>
  <li>A la hora de comer: si es posible, mantén una rutina familiar, creando un ambiente tranquilo y sírvele platos variados y de su gusto. Escoge utensilios que promuevan su independencia, como los platos hondos o una pajita para beber. También es importante involucrar a la persona en la rutina de poner la mesa o fregar los platos, para que se sienta útil.
</li><br>
  <li>Actividades: qué hacer durante el día puede ser un verdadero reto. Planifica actividades simples y de su agrado, no le fuerces a hacer cosas que no le gusten y elogia los avances que haga en el transcurso de la actividad. Salir a pasear, hacer ejercicio, trabajar en el jardín o bailar pueden ser buenas opciones.
  </li><br>
  <center><img src="imagenes/4k.jpg" class="responsive-img" style="width: 45%;height: 45%"></center>
  <h3 class="blue-text darken-4 center">En un estado avanzado de la enfermedad, también debes tener en cuenta:</h3><br><br>

  <li>Incontinencia: se puede convertir en un problema cuando la persona ya no controla sus funciones excretoras. Llévala al baño cada 3 horas para reducir el problema y sé comprensivo cuando ocurran accidentes.</li><br>
  <li>La hora de dormir: si la persona con Alzhéimer se siente desorientada, será difícil que concilie el sueño y se encontrará en un estado de agitación. Evita que duerma durante el día y procura mantener siempre la misma hora para ir a dormir. Crear un ambiente tranquilo antes de acostarse le relajará y le ayudará a conciliar el sueño.
</li><br>
  <li>Alucinaciones y delirios: habla de la situación con el médico para que te oriente sobre cómo actuar en cada caso concreto, pues en ocasiones puede ser un síntoma de una dolencia física. No obstante, es recomendable responder a los sentimientos de la persona y tranquilizarla si siente miedo o incluso distraerla, cambiar de cuarto o salir a dar un paseo para que se calme.
</li><br>
  <li>Evita que deambule: controla dónde se encuentra en todo momento, para evitar que se desoriente y salga de casa o se aleje del lugar en el que os encontráis. Cierra la puerta con llave y consulta con servicios sociales para solicitar un botón de tele asistencia, que incluye localizador en caso de que se pierda.
</li><br>
  <li>Evita los peligros: como medicamentos, productos de limpieza o cuchillos, poniéndolos fuera de su alcance a modo de prevención.
</li><br>
  <li>Evita las situaciones que no conoce: evita las multitudes, los cambios en la rutina y los lugares extraños que puedan causarle confusión o agitación.
</li><br>
</ol>
                            </i></b> </div></div>
          
          
    <!-----------------------------------------------Script----------------------------------------------------->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="jquery-3.3.1.js" type="text/javascript"></script>
    <script src="front-script.js" type="text/javascript"></script>
    <!-----------------------------------------------/Script----------------------------------------------------->
    <script>
        document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('.slider');
    var instances = M.Slider.init(elems,{
        height:600,
        interval:4000
    });
  });

  // Or with jQuery

  
        
    </script>
    </body>
    
</html>
