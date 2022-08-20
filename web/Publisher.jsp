<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       
        <link rel="stylesheet"type="text/css" href="libcss.css">
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Publisher Details </title>
    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h2 class="heading"><center> Add Publisher Details</center></h2>
        <form  name="publisher" method="post" action="PublisherDetailsAdd.jsp">
            <table border="1pts">
                <tr>
                    <td> Publisher Name:</td>
                    <td><input type="text" name="pname" required></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><textarea name="address" required></textarea></td>
                </tr>
                <tr>
                    <td>M.No:</td>
                    <td><input type="number" name="mno" required></td>
                </tr>
            </table>
            <br>
            <center>    <input type="submit" value="Add Publisher"></center>
            
            <center> <input type ="reset" value="Reset"></center>
        </form> 
    </body>
</html>
