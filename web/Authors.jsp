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
        <title>Add Authors Details </title>
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h2 class="heading"><center> Add Authors Details</center></h2>
        <form method="post" action="AuthorsDetailsAdd.jsp"> 
            <table border="1pts">
                <tr>
                    <td> Book ID:</td>

                    <td><select name=BID>";
                            <%
                                Connection con = null;
                                con = (Connection) DbConnection.initializeDatabase();
                                Statement st = con.createStatement();
                                String sql = "select bookid from library.book ";
                                ResultSet rs = st.executeQuery(sql);

                                while (rs.next()) {
                                    out.println("<option>" + rs.getInt("bookid") + "</option>");
                                }
                                out.println("</select></td></tr>");

                                st.close();
                                con.close();
                            %>

                </tr>
                <tr><td>Enter the Author Name:</td><<td><input type="text" name="aname" placeholder="Author Name" required></td></tr>
            </table>
            <br>
            <center>   <input type="submit" value="Add Authors"></center>
            <br>
            <!--<center>   <button><a href ="Login.jsp"> Logout</a></buttom> </center>-->
        </form>
    </body>
</html>
