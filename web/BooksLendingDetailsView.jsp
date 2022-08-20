<%-- 
    Document   : PublisherDetailsAdd
    Created on : 7 Dec, 2021, 9:55:28 AM
    Author     : BASAVARAJU
--%>

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
        <title>View Books_Lending Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Details of Issued Books </h1>
        <%

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "select * from library.book_lending";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            out.println("<table border=1><tr><th>Book_ID</th><th>Branch_ID</th><th>Card Number</th><th>Issued Date</th><th>Due Date</th></tr>");

            while (rs.next()) {
                out.println("<tr><td>" + rs.getInt("bookid") + "</td>");
                out.println("<td>" + rs.getInt("Branch_id") + "</td>");
                out.println("<td>" + rs.getInt("cardno") + "</td><td>" + rs.getString("date_out") + "</td><td>" + rs.getString("due_date") + "</td></tr>");
            }

            ps.close();
            con.close();

        %>

    </body>
</html>