<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lms.DbConnection"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet"type="text/css" href="libcss.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Book Details </title>
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h2 class="heading"><center> Add Book Details</center></h2>
        <form method="post" action="BooksDetailsAdd.jsp">
            <table border="1pts">
                <tr>
                    <td> Book ID:</td>
                    <td><input type"text" name="BID" required></td>
                </tr>
                <tr>
                    <td>Title:</td>
                    <td><input type"text" name="BTITLE"  required></td>
                </tr>
                <tr>
                    <td>Year:</td>
                    <td><input type="text" name="YEAR"></td>
                </tr>
                <tr>
                    <td>Select Publisher Name:</td>
                    <%
                        Connection con = null;
                        con = (Connection) DbConnection.initializeDatabase();
                        Statement st = con.createStatement();
                        String sql = "select pname from library.publisher ";
                        ResultSet rs = st.executeQuery(sql);
                        out.println(" <td><select name=pname>");
                        while (rs.next()) {
                            out.println("<option>" + rs.getString("pname") + "</option>");
                        }
                        out.println("</select></td></tr>");
                        st.close();
                        con.close();
                    %>

                </tr>
            </table>
            <br>
            <center>   <input type="submit" value="Add Book"></center>
        </form>
    </body>
</html>
