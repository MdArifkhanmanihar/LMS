<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet"type="text/css" href="libcss.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Card Details </title>

    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h2 class="heading"><center> Add Card Details</center></h2>
        <form  name="card"method="post" action="AddCardDetails.jsp">
            <table border="1pts">
                <tr>
                    <td> Enter the Card No:</td>
                    <td><input type="text" name="cno" required></td>
                </tr>

            </table>

            <br>
            <center>    <input type="submit" value="Generate"></center>

        </form> 
    </body>
</html>
