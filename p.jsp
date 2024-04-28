<%-- 
    Document   : p
    Created on : 30/04/2019, 07:31:20 PM
    Author     : Toshiba
--%>

<%@page import="org.owasp.esapi.ESAPI"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="org.owasp.esapi.ESAPI"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="bd.cnxBase"%>
<%@page import="java.sql.Connection"%>
<%@page import="sqlDao.pacienteSqlDao"%>
<%@page import="dao.iPacienteDao"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            /*cnxBase cn = new cnxBase();
            String usuario = ESAPI.encoder().encodeForHTML(request.getParameter("user"));
            String contra = ESAPI.encoder().encodeForHTML(request.getParameter("contra"));

            Connection con = null;
            Statement sta = null;
            ResultSet rs = null;

           
          HttpSession ses = request.getSession();
                        ses.setAttribute("user", ESAPI.encoder().encodeForHTML(rs.getString("usuario").toString()));
                        ses.setAttribute("id", ESAPI.encoder().decodeForHTML(rs.getString("id_user").toString()));  
        */
            
                request.getRequestDispatcher("Controler?action=Listar").forward(request, response);
           
        %>
    </body>
</html>
