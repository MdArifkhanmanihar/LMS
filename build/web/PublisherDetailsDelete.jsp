<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Details Delete</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
                <%
                    String publisherName = request.getParameter("pname");
                    Connection con = null;
                    con = (Connection) DbConnection.initializeDatabase();
                    String sql = "delete from library.publisher where pname=?";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setString(1, publisherName);
                    int i = ps.executeUpdate();
                    if (i > 0) {
                        out.println("<script>alert('Record Deleted');");
                        out.println("location.href = 'PublisherDelete.jsp';</script>");
                    } else {
                        out.println("<script>alert('Record Not Deleted/Not Found!');");
                        out.println("location.href = 'PublisherDelete.jsp';</script>");
                    }

                    out.println("<b>Publisher Details Deleted is " + publisherName + "</b>");
                    ps.close();
                    con.close();

                %>
    </body>
</html>
