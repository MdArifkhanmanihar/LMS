<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Copies Details Add</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <%
            String bid = request.getParameter("book_id");
            int bookid = Integer.parseInt(bid);
            String brid = request.getParameter("branch_id");
            int branchid = Integer.parseInt(brid);
            String noc = request.getParameter("noc");
            int number = Integer.parseInt(noc);
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "insert into library.book_copies values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, bookid);
            ps.setInt(2, branchid);
            ps.setInt(3, number);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Book Copies Details Updated');");
                out.println("location.href = 'Copies.jsp';</script>");
            } else {
                out.println("<script>alert('Book Copies Details Not Updated');");
                out.println("location.href = 'Copies.jsp';</script>");
            }

            ps.close();
            con.close();

        %>

    </body>
</html>
