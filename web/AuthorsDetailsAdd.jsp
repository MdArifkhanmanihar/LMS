<%-- 
    Document   : PublisherDetailsAdd
    Created on : 7 Dec, 2021, 9:55:28 AM
    Author     : BASAVARAJU
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Authors Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <%
            String bid = request.getParameter("BID");
            int bookid = Integer.parseInt(bid);
            String aname = request.getParameter("aname");

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "insert into library.book_authors values(?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, bookid);
            ps.setString(2, aname);
            try {
                int i = ps.executeUpdate();
                if (i > 0) {
                    out.println("<script>alert('Record Inserted');</script>");
                    request.getRequestDispatcher("Authors.jsp").include(request, response);
                } else {
                    out.println("<script>alert('Record Not Inserted');</script>");
                    request.getRequestDispatcher("Authors.jsp").include(request, response);
                }
            } catch (SQLException e) {
                if (e.getErrorCode() == 1062) {
                    out.println("<script>alert('Already Named :use DIfferent id');");
                    out.println("location.href = 'Authors.jsp';</script>");
                }
            }

            //response.sendRedirect("Authors.jsp");
            //      out.println("<b>Books Authors  Details Entered are:" + bookid + " " + aname + "</b>");
            ps.close();
            con.close();

        %>

    </body>
</html>
