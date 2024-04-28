<%@page import="java.io.OutputStream"%>
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

    </head>
    <body>
        <%

            Connection conn = null;
            Statement statement = null;
            ResultSet rs = null;
            cnxBase con = new cnxBase();
            conn = con.getConexion();
            statement = conn.createStatement();
            int idImg = Integer.parseInt(request.getParameter("hola"));
            try {
                OutputStream oImage;
                rs = statement.executeQuery("SELECT * FROM Imagenes where idImagen=" + idImg + ";");
                while (rs.next()) {
                    byte barray[] = rs.getBytes(3);
                    response.setContentType("image/gif");
                    oImage = response.getOutputStream();
                    oImage.write(barray);
                    oImage.flush();
                    oImage.close();

                }
            } catch (Exception ex) {
                ex.printStackTrace();
            } finally {
                try {
                    if (con != null) {
                        conn.close();
                    }
                } catch (Exception ex) {
                    out.println(ex.toString());
                }
            }

            try {
                HttpSession ses = request.getSession(true);
                String id = ses.getAttribute("user").toString();
            } catch (Exception e) {
                response.sendRedirect("index.jsp");
            }
        %>
    </body>
</html>
