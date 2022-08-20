<%-- 
    Document   : SearchPublisher
    Created on : 12 May, 2022, 10:07:59 AM
    Author     : BASAVARAJU
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
        <title>Search Publisher Details</title>
         <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 align="center">Details of Publisher</h1>
        <%
            Connection con=null;
            con=(Connection) DbConnection.initializeDatabase();
            Statement stmt=con.createStatement();
            int mno=Integer.parseInt(request.getParameter("mno"));
            
            String searchpub="select * from library.publisher where PHONE='"+mno+"'";
            
            ResultSet rs = stmt.executeQuery(searchpub);
            if(rs.next())
            {
                out.println("<table><tr><th>Name</th><th>Address</th><th>Mno</th></tr>");
                out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getInt(2));
                out.println("</tr></table>");
            }
            else
            {
                out.println("<script> alert('Record Not Found');</script>");
            }
            con.close();
            %>
    </body>
</html>
