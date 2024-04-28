<%-- 
    Document   : busca
    Created on : 20/11/2018, 11:51:19 PM
    Author     : Ricardo
--%>

<%@page import="bd.cnxBase"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                width: 100px;
                height: 100px;
            }
        </style>
        <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
        <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.indigo-pink.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    </head>
    <body style="background-color:#0099ff">
        <h1>
            Recuerdos
        </h1>
        <ul class="demo-list-three mdl-list">
            <%
                Connection conn = null;
                Statement statement = null;
                ResultSet rs = null;
                cnxBase con = new cnxBase();
                conn = con.getConexion();
                statement = conn.createStatement();
                try {
                    HttpSession ses = request.getSession();
                    rs = statement.executeQuery("SELECT * FROM Imagenes where idUser='" + ses.getAttribute("id").toString() + "';");

                    while (rs.next()) {
                        out.println("<form method='post' action='despliega.jsp'>");
                        out.println("<li class='mdl-list__item mdl-list__item--three-line'>");
                        out.println("<span class='mdl-list__item-primary-content'>");
                        out.println("<i class='material-icons  mdl-list__item-avatar'>person</i>");
                        out.println("<span>" + rs.getString(4).toString() + "</span>");
                        out.println("<span class='mdl-list__item-text-body'>");
                        out.println(rs.getString(5).toString());
                        out.println("</span></span>");
                        out.println("<span class='mdl-list__item-secondary-content'><input type='submit' value='Ver en grande' class='mdl-button mdl-js-button mdl-button--raised mdl-button--colored'></span></li>");
                        out.println("<input type='text' name='hola' value='" + rs.getInt(1) + "' style='visibility:hidden;'>");
                        out.println("</form>");
                    }

                } catch (Exception e) {
                    response.sendRedirect("index.jsp");
                }

            %>
        </ul>
    </body>
</html>
