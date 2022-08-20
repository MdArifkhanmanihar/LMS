<%-- 
    Document   : PublisherDetailsAdd
    Created on : 7 Dec, 2021, 9:55:28 AM
    Author     : BASAVARAJU
--%>

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
        <title>Add Card Details</title>
          <link rel="stylesheet"type="text/css" href="lib/libcss.css">
    </head>
    <body>
        <% 
            int cno = Integer.parseInt(request.getParameter("cno"));
        
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sqld="select * from library.card where CARDNO='"+cno+"'";
            Statement s = con.createStatement();
            ResultSet rs =s.executeQuery(sqld);
            boolean status = false;
            while(rs.next())
            {
                status=true;
            }
            if(status){
                out.print("<script>alert('Card Name already exists! Try another');</script>");
                request.getRequestDispatcher("AddCard.jsp").include(request,response);
            }
            else
            {
                String sql = "insert into library.card values(?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setInt(1, cno);
             
            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Card Number Generated');");
                out.println("location.href = 'AddCard.jsp';</script>");
                         } else {
                out.println("<script>alert('Not able to Generate Card Number');");
                out.println("location.href = 'AddCard.jsp';</script>");
            }
            
        //    out.println("<b>Publisher Details Entered are:"+publisherName+" "+phno+" "+address+"</b>");
            ps.close();
            con.close();
            }
     
        %>

    </body>
</html>
