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
        <title>View Book Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
               <h1 class="heading"><center>Library Management System</center></h1>
               <hr>
        <h1 class="heading">Details of Books </h1>
        <%

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "select b.bookid, btitle ,bname, bc.noc from library.book b, library.lib_branch lb, book_copies  bc where b.bookid =bc.bookid and lb.branch_id =bc.branch_id";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
          
            out.println("<table border=1><tr><th>Book_ID</th><th>Title</th><th>Branch Name</th><th>No.of Copies</th</tr>");

            while (rs.next()) {
                out.println("<tr><td>" + rs.getInt("b.bookid") + "</td><td>" + rs.getString("btitle") + "</td><td>" + rs.getString("bname") +"</td><td>"+rs.getInt("noc")+"</td></tr>");
            }
        
            ps.close();
            con.close();

        %>

    </body>
</html>
