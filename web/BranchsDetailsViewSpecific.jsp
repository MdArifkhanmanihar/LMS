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
        <title>View Branch Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Details of Branch </h1>
        <%

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String branchid = "select branch_id from library. lib_branch";

            PreparedStatement ps = con.prepareStatement(branchid);
            ResultSet rs = ps.executeQuery();
            out.println("<form method =post action=BranchDetailsView.jsp>");
            out.println(" <table border=1>");

            out.println("<tr><td>Select Branch Id</td>");
            out.println("<td> <select name=brid>");
            while (rs.next()) {
                out.println("<option>" + rs.getInt("branch_id") + "</option>");
            }

            out.println("</select></td></tr></table>");
            out.println("<br>");
            out.println("<center><input type =submit value=Search></center>");
            rs.close();
            con.close();

            ps.close();
            con.close();

        %>

    </body>
</html>
