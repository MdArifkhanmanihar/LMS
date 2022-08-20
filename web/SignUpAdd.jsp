<%@page import="java.sql.Array"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>

    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Sign Up </h1>

        <%
            String uname = request.getParameter("uname");
            String pwd = request.getParameter("pwd");
            String role = request.getParameter("role");

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            //    String logintab = "select Uname from library.login";
            Statement stmt = con.createStatement();
            String sql = "insert into library.login values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, role);
            ps.setString(2, uname);
            ps.setString(3, pwd);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<b><center> Thank You For Sign Up</center><b>");
                out.println("<br><center><a href=Login.jsp> Login Here</a><center>");
            } else {
                out.println("<script>alert(' Check Your Registration!');</script>");
            }

            ps.close();
            con.close();

        %>

    </body>
</html>
