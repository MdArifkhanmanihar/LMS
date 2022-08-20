<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Verification</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
        <script type = "text/javascript" >
            function preventBack() {
                window.history.forward();
            }
            setTimeout("preventBack()", 0);
            window.onunload = function () {
                null
            };
        </script> 
    </head>
    <body>
        <%
            String uname = request.getParameter("uname");

            String Pwd = request.getParameter("pwd");
            String Role = request.getParameter("role");

            //   String sql ="select * from library.login  l where l.Uname = uname and l.pwd =Pwd and l.role =Role";
            String sql = "select * from login  where uname='" + uname + "'and pwd ='" + Pwd + "' and role ='" + Role + "'";
            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            //   out.println("<div><h3 align=right class-uname>User Name:" + uname + "Role:" + Role + "" + "</h3></div> ");
            // rs.next();
            if (rs.next()) {
                if (Role.equalsIgnoreCase("Librarian")) {
                    out.println("<div><h3 align=right >User Name:" + uname + " Role:" + Role + "" + "</h3></div> ");
                    // out.println(" <br><center><a href =home.jsp>Go to DashBoard:</a><center>");
                    request.getRequestDispatcher("home.jsp").include(request, response);
                } else {

                    out.println("<h3 align=right id=uname>User Name: " + uname + " Role:" + Role + "" + "</h3> ");
//              out.println(" <br><center><a href =BooksDetailsView.jsp>View Available Books:</a><center>");
                    request.getRequestDispatcher("BooksDetailsView.jsp").include(request, response);
                    out.println("<p align=right><button><a href =Login.jsp>Logout</a></button></p>");

                }

            } else {

                out.println("<h2><center><b>Login Failed!</b></center></h2>");
                out.println("<br> <center><a href = Login.jsp> Login</a></center>");
            }

        %>
    </body>
</html>