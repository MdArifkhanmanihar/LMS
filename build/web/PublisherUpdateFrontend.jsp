<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Details Update</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">

    </head>
    <body>
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading"> Publisher Details Update </h1>
        <form method ="post"  action="PublisherUpdate.jsp">
            <table border="1pts">
                <tr>  <td>Enter the Publisher Name</td>
                    <td><input type="text" name="pname"></td>
                </tr>
                <tr>
                    <td>Select the Field to Update </td>
                    <td><select name="field"> <option>PHONE</option>
                            <option>ADDRESS</option> </select>
                    </td>
                </tr>
                <tr><td>Enter the Data to be Updated</td><td> <input type="text" name="var"></td>
                </tr>
                .
            </table>
            <br>
            <center>    <input type="submit" class="form-submit-button" value="Update Publisher "></input> </center>
        </form>
    </body>
</html>
