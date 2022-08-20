<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Branch Details </title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading" align="center"> Branch Details </h1>
        <form method ="post" action="BranchDetailsAdd.jsp">
            <table border ="1">
                <tr><td>Enter the Branch Id:</td><td><input type ="text" name="brid" required></td></tr>
                <tr><td>Enter the Branch Name:</td><td><input type="text" name="brname" required></td></tr>
                <tr><td>Enter the Branch Address:</td><td><input type="text" name="braddress" required></td></tr>
            </table>
            <br>
            <center><input type="submit" value="Add Branch Details"> </center>
        </form>
    </body>
</html>