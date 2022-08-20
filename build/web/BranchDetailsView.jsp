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
        <title>Branch Details View</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Details of Branch </h1>
        <%
            String brid = request.getParameter("brid");
            int branchid = Integer.parseInt(brid);
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String branchdetails = "select * from library. lib_branch where branch_id=?";

            PreparedStatement ps = con.prepareStatement(branchdetails);
            ps.setInt(1, branchid);
            ResultSet rs = ps.executeQuery();
            rs.next();
            out.println("<table border =1>");
            out.println("<tr><th>Branch ID</th><th>Branch Name</th><th>Branch Address</th></tr>");
            out.println("<tr><td>" + rs.getInt("branch_id") + "</td><td>" + rs.getString("bname") + "</td><td>" + rs.getString("adress") + "</td></tr>");
            out.println("</table>");
//            out.println("<center><button><a href =lib/Login.jsp>Logout</a></button></center>");
            rs.close();
            ps.close();
            con.close();
        %>

    </body>
</html>
