<%-- 
    Document   : PublisherDetailsAdd
    Created on : 7 Dec, 2021, 9:55:28 AM
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
        <title>Add Books Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <%
            String bid = request.getParameter("BID");
            int bookid = Integer.parseInt(bid);
            String title = request.getParameter("BTITLE");
            String year = request.getParameter("YEAR");
            String pname = request.getParameter("pname");
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "insert into library.book values(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, bookid);
            ps.setString(2, title);
            ps.setString(3, year);
            ps.setString(4, pname);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Record Inserted');</script>");
            } else {
                out.println("<script>alert('Record Note Inserted');</script>");
            }
            out.println("<b>Books Details Entered are:" + bookid + " " + title + " " + year + " " + pname + "</b>");
            ps.close();
            con.close();

        %>

    </body>
</html>
