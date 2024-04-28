 <%-- 
    Document   : index
    Created on : 11/02/2019, 11:10:53 AM
    Author     : Profesor
--%>

<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
            Connection c;
            Statement s;
            
            
            try {
int idUser = 0;
                HttpSession ses = request.getSession();
                idUser = Integer.parseInt(ses.getAttribute("id").toString());
                String nombre = request.getParameter("nombre");
                String pregunta = request.getParameter("pregunta");
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                c = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                s = c.createStatement();
                s.executeUpdate("INSERT INTO preguntaUsuario(idUser,nombre, pregunta) VALUES('"+idUser+"','" + nombre + "','" + pregunta + "');");
                out.println("<script> alert('tu pregunta ha sido registrada espera tu respuesta'); </script>");
                out.println("<meta http-equiv='refresh' content='.0000001; URL=http://localhost:8080/ALZHOPE_V_FINAL/preguntas%20frecuentes.jsp'>");
                c.close();
            } catch (SQLException e) {
                out.println(e.toString());
            }


        %>
    </body>
</html>
