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
            String cardno = "select cardno from library.card";
            String noc = "select branch_id from library. lib_branch;";
            String noc2 = "select bookid from library.book";
            PreparedStatement ps = con.prepareStatement(cardno);
            ResultSet rs = ps.executeQuery();
            out.println("<form method =post action = BooksLendingAdd.jsp>");
            out.println("<table width='40%'  height='50%'>");
            out.println("<tr><td>Select the Card No</td><td> <select name=cno  required>");
            while (rs.next()) {
                out.println("<option>" + rs.getInt(1));
            }
            out.println("</select></td></tr>");
            ps.close();
            rs.close();
            ps = con.prepareStatement(noc2);
            rs = ps.executeQuery();
            out.println("<tr><td>Select the Book ID</td>");
            out.println("<td><select name= book_id  required>");
            while (rs.next()) {
                out.println("<option>" + rs.getInt("bookid") + "</option>");
            }
            out.println("</select></td></tr>");
            out.println("<tr><td>Select the Branch Id</td>");
            ps.close();
            rs.close();
            ps = con.prepareStatement(noc);
            rs = ps.executeQuery();
            out.println("<td><select name= branch_id  required>");

            while (rs.next()) {
                out.println("<option>" + rs.getInt("branch_id") + "</option>");
            }
            out.println("</select></td></tr>");

            out.println("<tr><td>Select the Issue Date</td><td><input type=date name=idate required></td></tr>");
            out.println("<tr><td>Select the Due Date</td><td><input type=date name=ddate required></td></tr>");
            out.println("</table>");
            out.println("<br>");
            out.println("<center><input type =submit value ='Add Issue'></center>");
            out.println("</form>");


        %>
    </body>
</html>
