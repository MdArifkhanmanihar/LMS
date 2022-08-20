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
        <title>Branch Details Delete</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <%
            String cno = request.getParameter("cno");
            out.println("cno:=" + cno);
            int cardno = Integer.parseInt(cno);
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "delete from library.card where cardno=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, cardno);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Record Deleted');</script>");
            } else {
                out.println("<script>alert('Record Not Deleted/Not Found!');</script>");
            }
            ps.close();
            con.close();
        %>
    </body>
</html>