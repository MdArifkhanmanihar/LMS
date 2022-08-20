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
        <title>View Publisher Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Details of Publisher </h1>
        <%

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "select * from library.publisher";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            out.println("<table border=5><tr><th>Name</th><th>Mno</th><th>Address</th></tr>");

            while (rs.next()) {
                out.println("<tr><td style='padding: 15px;'>" + rs.getString("pname") + "</td><td style='padding: 15px;'>" + rs.getLong("mno") + "</td><td style='padding: 15px;'>" + rs.getString("ADDRESS") + "</td></tr>");
            }

            ps.close();
            con.close();

        %>

    </body>
</html>