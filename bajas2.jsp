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
            int contras = Integer.parseInt(request.getParameter("p"));
            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;

            try {
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/daos", "root", "ESCOM");
                sta = con.createStatement();
            } catch (SQLException e) {
                out.println(e.toString());
            }

            try {
                rs = sta.executeQuery("select * from preguntaUsuario where id = ('" + contras + "');");

                sta.executeUpdate("delete from preguntaUsuario where id ='" + contras + "'; ");
                out.println("<script>alert('la pregunta ha sido eliminada')</script>");

                out.println("<meta http-equiv='refresh' content='.0000001; URL=http://localhost:8080/ALZHOPE_V_FINAL/admin.jsp'>");
                con.close();

            } catch (SQLException e) {
                out.println(e.toString());
            }


        %>
    </body>
</html>
