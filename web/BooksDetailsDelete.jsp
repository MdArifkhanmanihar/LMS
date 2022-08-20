<%-- 
    Document   : PublisherDetailsDelete
    Created on : 7 Dec, 2021, 10:35:52 AM
    Author     : BASAVARAJU
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Books Details Delete</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
                <%
                    String  bid = request.getParameter("BID");
                    int bookid = Integer.parseInt(bid);
                    Connection con = null;
                    con = (Connection) DbConnection.initializeDatabase();
                    String sql = "delete from library.book where bookid=?";
                    PreparedStatement ps = con.prepareStatement(sql);
                    ps.setInt(1, bookid);
                    int i = ps.executeUpdate();
                    if (i > 0) {
                        out.println("<script>alert('Books Details Deleted');");
                        out.println("location.href = 'BooksDelete.jsp';</script>");
                    } else {
                        out.println("<script>alert('Book Details Not Deleted/Not Found!');");
                        out.println("location.href = 'BooksDelete.jsp';</script>");
                    }
                   
                   
                    ps.close();
                    con.close();

                %>
    </body>
</html>
