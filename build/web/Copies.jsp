<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>

<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>No. of Copies of Books Details</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Add Details of Book Copies </h1>
        <%
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String noc = "select branch_id from library.lib_branch;";
            String noc2 = "select bookid from library.book";
            PreparedStatement ps = con.prepareStatement(noc2);
            ResultSet rs = ps.executeQuery();
            out.println("<form method =post action = CopiesAdd.jsp>");
            out.println(" <table border=1><tr><td>Select the Book ID</td>");
            out.println("<td><select name= book_id>");
            while (rs.next()) {
                out.println("<option>" + rs.getInt("bookid") + "</option>");
            }
            out.println("</select></td></tr>");
            out.println("<tr><td>Select the Branch Id</td>");
            ps.close();
            rs.close();
            ps = con.prepareStatement(noc);
            rs = ps.executeQuery();
            out.println("<td><select name= branch_id>");

            while (rs.next()) {
                out.println("<option>" + rs.getInt("branch_id") + "</option>");
            }
            out.println("</select></td></tr>");
            out.println("<tr><td>Enter the no.copies</td><td> <input type=number name=noc required></td></tr>");
            out.println("</table>");
            out.println("<br><center><input type =submit value ='Add No. of Copies'></center>");
            out.println("</form>");


        %>
    </body>
</html>
