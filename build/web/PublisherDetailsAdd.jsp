    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Publisher Details</title>
        <link rel="stylesheet"type="text/css" href="lib/libcss.css">
    </head>
    <body>
        <%
            String publisherName = request.getParameter("pname");
            String address = request.getParameter("address");
            String mno = request.getParameter("mno");
            long phno = Long.parseLong(mno);
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sqld = "select * from library.publisher where  pname='" + publisherName + "'";
            Statement s = con.createStatement();
            ResultSet rs = s.executeQuery(sqld);
            boolean status = false;
            while (rs.next()) {
                status = true;
            }
            if (status) {
                out.print("<script>alert('Publisher Name already exists! Try another');</script>");
                request.getRequestDispatcher("Publisher.jsp").include(request, response);
            } else {
                String sql = "insert into library.publisher values(?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, publisherName);
                ps.setLong(3, phno);
                ps.setString(2, address);
                int i = ps.executeUpdate();
                if (i > 0) {
                    out.println("<script>alert('Record Inserted');");
                    out.println("location.href = 'Publisher.jsp';</script>");
                } else {
                    out.println("<script>alert('Record Not Inserted');");
                    out.println("location.href = 'Publisher.jsp';</script>");
                }

                //    out.println("<b>Publisher Details Entered are:"+publisherName+" "+phno+" "+address+"</b>");
                ps.close();
                con.close();
            }

        %>

    </body>
</html>
