<%@page import="java.sql.PreparedStatement"%>
<%@page import="lms.DbConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Branch Details Add</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <%
            String brid = request.getParameter("brid");
            int branchid = Integer.parseInt(brid);
            String brname = request.getParameter("brname");
            String bradrs = request.getParameter("braddress");

            Connection con = null;
            con = (Connection) DbConnection.initializeDatabase();
            String sql = "insert into library.lib_branch values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, branchid);
            ps.setString(2, brname);
            ps.setString(3, bradrs);

            int i = ps.executeUpdate();
            if (i > 0) {
                out.println("<script>alert('Record Inserted');");
                out.println("location.href = 'Branch.jsp';</script>");
            } else {
                out.println("<script>alert('Record Not Inserted');");
                out.println("location.href = 'Branch.jsp';</script>");
            }

            ps.close();
            con.close();

        %>

    </body>
</html>
