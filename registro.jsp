<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="cs/animate.css" rel="stylesheet" type="text/css"/>
        <link href="cs/principal.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet">
        <script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
        <script src="jquery.waypoints.min.js" type="text/javascript"></script>
        <script src="efectos.js" type="text/javascript"></script>
        <script src="js/validaciones.js" type="text/javascript"></script>
        <title>Registro.</title>
    </head>
    <body>
        <h1 class="animated zoomInUp">Registro</h1>
        <hr />
        <div class="segundo">
            <form method="post" id="form" action="guardaP.jsp" >
                <br><br>
                <input type="text" id="nombre" name="nombre" placeholder="Nombre del Paciente" onkeypress="return letras1();" required autocomplete="off" />
                <br />
                <input type="text" id="apellidos" name="apellidos" placeholder="Apellido del paciente" onkeypress="return letras1();" required autocomplete="off"/>
                <br />
                <input type="text" id="user" name="user" placeholder="Usuario"  onkeypress="return caracteres();" required autocomplete="off" />
                <br />
                <input type="password" id="contra" name="contra" placeholder="Contraseña" required />
                <br />
                <input type="text" id="edad" name="edad" placeholder="Edad" onkeypress="return numeros1();" required autocomplete="off" maxlength="3"/>
                <br />
                <h2>Selecciona la gravedad de la enfermedad.</h2>
                <br />
                <div class="select">
                    <select name="estado" id="estado" required>
                        <option value="Selecciona">Selecciona.</option>
                        <option value="bajo">bajo</option>
                        <option value="medio">medio</option>
                        <option value="grave">grave</option>
                    </select>    
                </div>
                <br /><br/>
                <input type="text" id="nombreFamiliar" name="nombreFamiliar" placeholder="Nombre del Algun familiar" onkeypress="return letras1();" required autocomplete="off"/>
                <br />
                <input type="text" id="direccion" name="direccion" placeholder="Direccion" onkeypress="return caracteres();" required autocomplete="off"/>
                <br />
                <input type="email" id="correo" name="correo" placeholder="correo" required autocomplete="off" />
                <br />
                <input type="text" id="telefono" name="telefono" placeholder="Telefono" onkeypress="return numeros1();" required autocomplete="off" maxlength="12"/>
                <br />
                <input type="submit" value="guardar" id="btnGuarda" name="btnGuarda" class="btn-login"  onclick="return validar(correo)" />
                <p id="nombre1" style="color:red"></p>
                <p id="numero1" style="color:red"></p>
                <p id="car" style="color:red"></p>
            </form>
        </div>
        <br><br><br>
    </body>
</html>
