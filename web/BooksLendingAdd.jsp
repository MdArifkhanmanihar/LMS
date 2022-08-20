<%@page import="java.sql.ResultSet"%>
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
            String cno = request.getParameter("cno");
            int number = Integer.parseInt(cno);
            String idate = request.getParameter("idate");
            String ddate = request.getParameter("ddate");

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "insert into library.book_lending values(?,?,?,?,?)";
            // String sql2 ="select book_id, noc from book_copies where book_id=?";

            // ResultSet rs =ps3.executeQuery();
            // String updatenoc ="update library.book_copies set noc=(noc-1) where  library.book_copies.book_id='bookid'";
            PreparedStatement ps = con.prepareStatement(sql);
            //      PreparedStatement ps2=con.prepareStatement(updatenoc);
            ps.setInt(1, bookid);
            ps.setInt(2, branchid);
            ps.setInt(3, number);
            ps.setString(4, idate);
            ps.setString(5, ddate);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Book Issued:');</script>");
                //   ps2.executeUpdate();   
                //      ps2.close();
            } else {
                out.println("<script>alert('Book Not Found/Not Available');</script>");
            }
            out.println("<b>Books Details Entered are:" + bookid + " " + branchid + " " + number + "</b>");
            //  ps.close();

            String noc = "update library.book_copies set noc=(noc-1) where  library.book_copies.bookid='" + bid + "'";
            ps.executeUpdate(noc);
            out.println("<script>location.href = 'BooksLending.jsp';</script>");
            ps.close();
            con.close();

        %>

    </body>
</html>