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
            String brid = request.getParameter("BrID");
            int branchid = Integer.parseInt(brid);
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "delete from library.lib_branch where branch_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, branchid);
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Record Deleted');");
                out.println("location.href = 'BranchsDelete.jsp';</script>");
            } else {
                out.println("<script>alert('Record Not Deleted/Not Found!');");
                out.println("location.href = 'BranchsDelete.jsp';</script>");
            }

            ps.close();
            con.close();

        %>
    </body>
</html>
