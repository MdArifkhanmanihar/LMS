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
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
    <center> <h1 class=".heading"> Book Details Delete <h1></center>
                <form method ="post"  action="BooksDetailsDelete.jsp">
                    <center><table border="1pts">
                            <tr>  <td>Select the Book ID</td>
                                <td><select name="BID">
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
                        </table>
                    </center>
                    <br>
                    <center>     <input type="submit" value="Delete Book "> </center>
                </form>
                </body>
                </html>
