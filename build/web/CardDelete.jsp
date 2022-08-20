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
        <title>Books Details Delete</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>

        <hr>
    <center> <h1 class=".heading"> Book Details Delete <h1></center>
                <form method ="post"  action="LendingDetailsDelete.jsp">
                    <table border="1pts">
                        <tr>  <td>Select the Card No</td>
                            <td><select name="cno">
                                    <%

                                        Connection con = null;
                                        con = (Connection) DbConnection.initializeDatabase();
                                        Statement st = con.createStatement();
                                        String sql = "select cardno from library.card  ";
                                        ResultSet rs = st.executeQuery(sql);

                                        while (rs.next()) {
                                            out.println("<option>" + rs.getInt("cardno") + "</option>");
                                        }
                                        out.println("</select></td></tr>");
                                        st.close();
                                        con.close();
                                    %>


                        </tr>
                    </table>
                    <br>
                    <center>     <input type="submit" value="Delete Card Details"> </center>
                </form>
                </body>
                </html>