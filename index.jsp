<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>AlzHope</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.0/animate.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="front_style.css" type="text/css"/>
        <script src="js/validaciones.js" type="text/javascript"></script>
        <script src="js/validaciones.js" type="text/javascript"></script>
        <link rel="icon" type="image/png" href="imagenes/Alphawolf.png"/>
    </head>
    <body>
      <!-----------------------------------------------Nav----------------------------------------------------->
      <div class="navbar-fixed">
        <nav class="blue darken-4">
          <div class="nav-wrapper container">
              <a href="#" class="brand-logo center"><img src="imagenes/New Project.png"></a>
          </div>
        </nav>
      </div>
      <!-----------------------------------------------/Nav----------------------------------------------------->
      
      <!-----------------------------------------------Modales----------------------------------------------------->
      
      <!-- Inicio -->
      <div id="modal1" class="modal" style="width: 40%;">
          
          
          
          
        <form method="post" action="consulta.jsp">
          <div class="modal-content row center container">
              <img src="imagenes/imagenacount.jpg" style="width: 40%;" class="circle responsive-img">
            <h4>Inicio de Sesión</h4>
                <div class="input-field col s12 section">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="user" name="user" type="text" class="validate" onkeypress="return caracteres();>
                  <label for="user">Usuario</label>
                </div>
                <div class="input-field col s12 section">
                  <i class="material-icons prefix">account_circle</i>
                  <input id="contra" name="contra"type="password" class="validate" onkeypress="return caracteres();>
                  <label for="contra">Contraseña</label>
                </div>
          </div>
          <div class="modal-footer">
            <button class="btn waves-effect waves-light blue darken-4" type="submit" name="btnGuarda">Ingresar
              <i class="material-icons right">send</i>
            </button>
               <p id="car" style="color:red"></p>
          </div>
        </form>
          
          
          
          
          
      </div>
      <!-- Registro -->
      <div id="modal2" class="modal" style="width: 40%;">
        <form method="post" id="form" action="guardaP.jsp" >
          <div class="modal-content row center container">
              <img src="imagenes/imagenacount.jpg" style="width: 40%;" class="circle responsive-img">
            <h4>Registro</h4>
              <div class="input-field col s12 inline">
                  <input id="nombre" name="nombre" type="text" class="validate">
                  <label for="last_name">Nombre del Paciente</label>
              </div>
              <div class="input-field col s12 inline">
                  <input id="apellidos" name="apellidos" type="text" class="validate">
                  <label for="apellidos">Apellido del Paciente</label>
              </div>
              <div class="input-field col s12 inline">
                  <input id="user1" name="user1" type="text" class="validate">
                  <label for="user1">Usuario</label>
              </div>
              <div class="input-field col s12 inline">
                <input id="contra1" name="contra1" type="password" class="validate">
                <label for="contra1">Contraseña</label>
              </div>
              <div class="input-field col s12 inline">
                <input id="edad" name="edad" type="text" class="validate">
                <label for="edad">Edad</label>
              </div>
              <div class="input-field col s12">
                <select id="estado" name="estado">
                  <option value="" disabled selected>Escoja una opcion</option>
                  <option value="Bajo">Bajo</option>
                  <option value="Medio">Medio</option>
                  <option value="Grave">Grave</option>
                </select>
                <label>Selecciona la gravedad de la enfermedad.</label>
              </div>
              <div class="input-field col s12 inline">
                <input id="nombreFamiliar" name="nombreFamiliar" type="text" class="validate">
                <label for="nombreFamiliar">Nombre de algun familiar</label>
              </div>
              <div class="input-field col s12 inline">
                <input id="direccion" name="direccion" type="text" class="validate">
                <label for="direccion">Direccion</label>
              </div>
              <div class="input-field col s12 inline">
                <input id="telefono" name="telefono" type="tel" class="validate">
                <label for="telefono">Telefono</label>
              </div>
              <div class="input-field col s12 inline">
                <input id="correo" name="correo" type="email" class="validate">
                <label for="correo">Correo</label>
              </div>
          </div>
          <div class="modal-footer">
            <button class="btn waves-effect waves-light blue darken-4" type="submit" value="Guardar" name="btnGuarda"   onclick="return validar(correo)">Guardar
              <i class="material-icons right">send</i>
            </button>
          </div>
          <p id="nombre1" style="color:red"></p>
          <p id="numero1" style="color:red"></p>
          <p id="car" style="color:red"></p>
        </form>
      </div>
      <!-----------------------------------------------/Modales----------------------------------------------------->
      <div class="blue darken-4 white-text center">
          <div class="container">
            <div class="section">
              <h1>Bienvenido a AlzHope</h1>
              <h4><em>"UNA NUEVA ESPERANZA"</em></h4>
              <a class='dropdown-trigger btn-large center-align' href='#' data-target='dropdown1' style="width: 300px;">Acceder</a>
              <ul id='dropdown1' class='dropdown-content'>
                <li><a href="#modal1" class="modal-trigger center-align">Iniciar Sesión</a></li>
                <li class="divider" tabindex="-1"></li>
                <li><a href="#modal2" class="modal-trigger center-align">Registrarse</a></li>
              </ul>
            </div>
          </div>
        </div>
      <div class="parallax-container scrollspy" id="inicio">
        <div class="parallax">
            <img src="imagenes/12C.jpg" class="responsive-img">
        </div>
      </div>
      <div class="blue darken-4 white-text center">
        <div class="container">
          <div class="section">
              <p>El test CODEX ha sido elaborado por el profesor Joel Belmin y su equipo del Hospital Universitario Charles-Foix d'Ivry-sur-Seine con el objetivo de detectar, en tan solo tres minutos, si una persona de edad avanzada padece demencia.</p>
          </div>
        </div>
      </div>
      <div class="parallax-container">
        <div class="parallax">
            <img src="imagenes/adultos.jpg" class="responsive-img">
        </div>
      </div>
      <div class="blue darken-4 white-text center">
        <div class="container">
          <div class="section">
            <h3>Lorem ipsum dolor</h3>
            <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quod cumque qui, voluptas, in reiciendis voluptate assumenda illum iste praesentium impedit ratione illo ipsa, vero harum libero officiis! Nesciunt, a consequatur! Ad veritatis, explicabo, repudiandae ratione facere fugit saepe dolore tenetur dolor accusamus neque maxime suscipit qui, inventore earum ex? Consectetur eius nam dolorem quisquam voluptates praesentium cum atque doloremque necessitatibus, adipisci incidunt tempore perferendis alias, minima repellendus ipsa eum minus aspernatur! Incidunt est tempora voluptas sunt. Aut repellat reprehenderit alias voluptatem eum consequuntur dolorum adipisci minus nesciunt ab temporibus, repellendus aliquam corporis nihil laboriosam laborum ipsum esse exercitationem fugiat tempore! Fugit, modi! Quidem non, pariatur nam, ex voluptatibus maxime facere aspernatur voluptas exercitationem cum quae laborum sapiente odit ducimus ratione unde est amet repellendus, impedit veniam accusantium magni quod fugit blanditiis! Architecto harum ad rerum similique molestiae tenetur tempore consequatur alias ut repellat, consectetur, suscipit deleniti, aliquid magni. Mollitia, cupiditate.</p>
          </div>
        </div>
      </div>
      <div class="parallax-container">
        <div class="parallax">
            <img src="imagenes/123.jpg" class="responsive-img">
        </div>
      </div>
      <div class="blue darken-4 white-text center">
        <div class="container">
          <div class="section">
            <a class="waves-effect waves-light btn-small" href="#inicio">Volver arriba<i class=" material-icons right">arrow_upward</i></a>
            <p>&copy; 2019 <a href="#">Link</a></p>
          </div>
        </div>
      </div>
      <!-----------------------------------------------Script----------------------------------------------------->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
      <script src="jquery-3.3.1.js" type="text/javascript"></script>
      <script src="front-script.js" type="text/javascript"></script>
      <!-----------------------------------------------/Script----------------------------------------------------->
                
        <%
            HttpSession ses = request.getSession();
            ses.invalidate();
        %>
    </body>
</html>