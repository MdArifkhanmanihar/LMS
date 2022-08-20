<%-- 
    Document   : SearchBookLendingJsp
    Created on : 12 May, 2022, 11:08:23 AM
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="librarycss.css">
    </head>
    <body>
        <%
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            Statement stmt = con.createStatement();
            String issue_date = request.getParameter("issue_date");
            
            String sql = "select  b.book_id,title,bl.branch_id,bl.card_no,date_out,due_date from book b,book_lending bl where b.book_id=bl.book_id and  bl.date_out='"+issue_date+"'";

            ResultSet rs = stmt.executeQuery(sql);
            out.println("<table border=1><tr><th>book_id</th><th>title</th><th>card_num</th><th>issue_date</th><th>due_date</th></tr>");
           boolean status=false;
            while (rs.next()) {
                  status=true;
                out.println("<tr><td>" + rs.getInt("book_id") + "</td><td>" + rs.getString("title") + "</td><td>" + rs.getInt("card_no") + "</td><td>" + rs.getString("date_out") + "</td><td>" + rs.getString("due_date") + "</td><td>");
                out.println("</td></tr>");
            } 
            out.println("</table>");
            if(status==false)
            {
            out.println("<script>alert('no books issued');</script>");
            }
            con.close();
        %>
    </body>
</html>
