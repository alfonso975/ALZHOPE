<%-- 
    Document   : consulta
    Created on : 25/11/2018, 06:21:11 AM
    Author     : Ricardo
--%>

<%@page import="org.owasp.esapi.ESAPI"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bd.cnxBase"%>
<%@page import="java.sql.Connection"%>
<%@page import="sqlDao.pacienteSqlDao"%>
<%@page import="dao.iPacienteDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>JSP Page</title>
    </head>
    <body>
        <%
            cnxBase cn = new cnxBase();
            String usuario = ESAPI.encoder().encodeForHTML(request.getParameter("user"));
            String contra = ESAPI.encoder().encodeForHTML(request.getParameter("contra"));

            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;

            String query = "select*from users where usuario='" + usuario + "' and contraseña='" + contra + "';";
            con = cn.getConexion();
            sta = con.createStatement();
            try {
                rs = sta.executeQuery(query);

                if (rs.next()) {
                    int nivel = Integer.parseInt(rs.getString("nivel").toString());
                    if (nivel == 2) {

                        HttpSession ses = request.getSession();
                        ses.setAttribute("user", ESAPI.encoder().encodeForHTML(rs.getString("usuario").toString()));
                        ses.setAttribute("id", ESAPI.encoder().decodeForHTML(rs.getString("id_user").toString()));
                        request.getRequestDispatcher("Controler?action=Listar").forward(request, response);
                        
                    } else {
                        if (nivel == 1) {
                            HttpSession ses = request.getSession();
                            ses.setAttribute("user", "admin");
                            ses.setAttribute("id", "1");
                            response.sendRedirect("admin.jsp");
                        }
                    }

                } else {
                    response.sendRedirect("index.jsp");
                }

            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }


        %>
    </body>
</html>
