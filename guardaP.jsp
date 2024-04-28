<%-- 
    Document   : guardaP
    Created on : 25/11/2018, 06:08:50 AM
    Author     : Ricardo
--%>

<%@page import="org.owasp.esapi.ESAPI"%>
<%@page import="sqlDao.pacienteSqlDao"%>
<%@page import="dao.iPacienteDao"%>
<%@page import="modelo.paciente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            iPacienteDao paciente = new pacienteSqlDao();
            /////// recupero del formulario
            String nombre = ESAPI.encoder().encodeForHTML(request.getParameter("nombre"));
            String apellidos = ESAPI.encoder().encodeForHTML(request.getParameter("apellidos"));
            String user = ESAPI.encoder().encodeForHTML(request.getParameter("user1"));
            String contra = ESAPI.encoder().encodeForHTML(request.getParameter("contra1"));
            String edad = ESAPI.encoder().encodeForHTML(request.getParameter("edad"));
            String estado = ESAPI.encoder().encodeForHTML(request.getParameter("estado"));
            String nombreFamiliar = ESAPI.encoder().encodeForHTML(request.getParameter("nombreFamiliar"));
            String direccion = ESAPI.encoder().encodeForHTML(request.getParameter("direccion"));
            String correo = ESAPI.encoder().encodeForHTML(request.getParameter("correo"));
            String telefono = ESAPI.encoder().decodeForHTML(request.getParameter("telefono"));

            paciente p = new paciente(0, nombre, apellidos, user, contra, edad, estado, nombreFamiliar, direccion, correo, telefono);

            paciente.altaPaciente(p);
            response.sendRedirect("index.jsp");


        %>
    </body>
</html>
