<%@page  import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            float p = Float.parseFloat(request.getParameter("p"));
            Connection con = null;
            Statement sta = null;
            //ResultSet rs=nu; 
            try {
                HttpSession ses = request.getSession(true);
                int idUser1 = Integer.parseInt(ses.getAttribute("id").toString());

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                con = DriverManager.getConnection("jdbc:mysql://localhost/daos?useSSL=no", "root", "ESCOM");
                sta = con.createStatement();

                sta.executeUpdate("INSERT INTO puntuacion(idUser,puntuacion) VALUES('" + idUser1 + "','" + p + "');");

                out.println("<script>alert('puntuacion guardada')</script>");
                out.println("<meta http-equiv='refresh' content='.0000001; URL=http://localhost:8080/ALZHOPE_V_FINAL/test1.html'>");
                con.close();

            } catch (Exception e) {
                out.println("error" + e.toString());
                System.out.println(e);

            }

        %>
    </body>
</html>

