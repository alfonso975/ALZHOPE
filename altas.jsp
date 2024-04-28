
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="java.sql.*,java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int id = Integer.parseInt(request.getParameter("a"));
            String nombre = request.getParameter("nombre");
            String pregunta = request.getParameter("pregunta");
            String respuesta = request.getParameter("respuesta");
            Connection con = null;
            Statement sta = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                sta = con.createStatement();
            } catch (SQLException e) {
                out.println(e.toString());
            }

            try {

                sta.executeUpdate("INSERT INTO preguntaAdmin(nombre, pregunta, respuesta) VALUES('" + nombre + "','" + pregunta + "','" + respuesta + "');");
                sta.executeUpdate("delete  from preguntaUsuario where id ='" + id + "'; ");
                out.println("<script>alert('la pregunta ha sido respondida')</script>");
                out.println("<meta http-equiv='refresh' content='.0000001; URL=http://localhost:8080/ALZHOPE_V_FINAL/admin.jsp'>");
                con.close();

            } catch (SQLException e) {
                out.println(e.toString());
            }


        %>
    </body>
</html>
