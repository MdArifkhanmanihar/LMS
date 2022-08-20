<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Publisher Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <%
            String publisherName = request.getParameter("pname");
            String update = request.getParameter("field");
            String var = request.getParameter("var");
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            if (update.equalsIgnoreCase("address")) {

                String sql = "Update library.publisher set address=? where pname=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, var);
                ps.setString(2, publisherName);

                int i = ps.executeUpdate();
                if (i > 0) {
                    out.println("<script>alert('Details Updated Susccesfully');");
                    out.println("location.href = 'PublisherUpdateFrontend.jsp';</script>");
                } else if (i == 0) {
                    out.println("<script>alert('Records Not Updated!');");
                    out.println("location.href = 'PublisherUpdateFrontend.jsp';</script>");
                }

                ps.close();
            }
            if (update.equalsIgnoreCase("phone")) { 
                long var1 = Long.parseLong(var);

                String sql = "Update library.publisher set mno=? where pname=?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setLong(1, var1);
                ps.setString(2, publisherName);

                int i = ps.executeUpdate();
                if (i > 0) {
                    out.println("<script>alert('Phone Updated');");
                    out.println("location.href = 'PublisherUpdateFrontend.jsp';</script>");
                } else if (i == 0) {
                    out.println("<script>alert('Phone Not updated');");
                    out.println("location.href = 'PublisherUpdateFrontend.jsp';</script>");
                }
                ps.close();
            }
            con.close();

        %>
        <br>

    </body>
</html>
