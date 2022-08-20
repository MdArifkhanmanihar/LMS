<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
    </head>
    <body background="lib2.png">
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">Login</h1>
        <form method ="post " action ="LoginVerification.jsp">        
            <table border ="1">
                <tr><td>  Select Your Role:</td><td><select name="role">
                            <option>Librarian </option>
                            <option>Student</option>
                        </select></td></tr>
                <tr><Td>Enter the user Name:</td><td><input type =" text" name="uname" requried></td></tr>
                <tr><td>Enter the Password:</td><td><input type ="password"  name="pwd"  minlenght="8" required></td></tr>

            </table>
            <br>
            <center> <input type ="submit" value =Login></center>
        </form>
        <h1 class="heading"><center> Create Your Account</center></h1>
    <center><button> <a href="SignUp.jsp"> Sign Up</a> </button> </center>

</body>
</html> 
