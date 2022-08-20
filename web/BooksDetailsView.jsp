<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Book Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body background="lib2.png">
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Details of Books </h1>
        <%

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "select * from library.book";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            out.println("<table border=1><tr><th>Book_ID</th><th>Title</th><th>Published Year</th><th>Publisher Name</th</tr>");

            while (rs.next()) {
                out.println("<tr><td>" + rs.getInt("bookid") + "</td><td>" + rs.getString("btitle") + "</td><td>" + rs.getString("pubyear") + "</td><td>" + rs.getString("pname") + "</td></tr>");
            }

            ps.close();
            con.close();

        %>

    </body>
</html>
