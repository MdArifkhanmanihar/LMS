<%-- 
    Document   : PublisherDelete
    Created on : 7 Dec, 2021, 10:29:04 AM
    Author     : BASAVARAJU
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lms.DbConnection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Branch Details Delete</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
    <center> <h1 class=".heading"> Branch Details Delete <h1></center>
                <form method ="post"  action="BranchDetailsDelete.jsp">
                    <table border="1pts">
                        <tr>  <td>Select the Branch ID</td>
                            <td><select name="BrID">
                                    <%

                                        Connection con = null;
                                        con = (Connection) DbConnection.initializeDatabase();
                                        Statement st = con.createStatement();
                                        String sql = "select branch_id from library.lib_branch ";
                                        ResultSet rs = st.executeQuery(sql);

                                        while (rs.next()) {
                                            out.println("<option>" + rs.getInt("branch_id") + "</option>");
                                        }
                                        out.println("</select></td></tr>");
                                        st.close();
                                        con.close();
                                    %>


                        </tr>
                    </table>
                    <br>
                    <center>     <input type="submit" value="Delete Branch "> </center>
                </form>
                </body>
                </html>
