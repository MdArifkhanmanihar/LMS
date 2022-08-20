<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Details Delete</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading"> Publisher Details Delete </h1>
        <form method ="post"  action="PublisherDetailsDelete.jsp">
            <table border="1pts">
                <tr>  <td>Select the Publisher Name to delete the record</td>
                    <td><select name="pname">
                            <%
                                Connection con = null;
                                con = (Connection) DbConnection.initializeDatabase();
                                String sql = "select pname from library.publisher";
                                Statement stmt = con.createStatement();
                                ResultSet rs = stmt.executeQuery(sql);
                                while (rs.next()) {
                                    out.println("<option>" + rs.getString("pname") + "</option>");
                                }

                            %>
                        </select></td>
                </tr>
            </table>
            <br>
            <center>  <input type="submit" value="Delete Publisher ">  </center>
        </form>
    </body>
</html>