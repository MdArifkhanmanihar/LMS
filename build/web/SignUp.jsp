<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" type="text/css" href="libcss.css">
        <script type="text/javascript">
            function validatepwd()
            {
                alert('Welcome');
                var pwd = document.f1.pwd.value;
                if (pwd.length < 8)
                {
                    alert('Password is too short');
                    return false;
                }
                return true;
            }
        </script>
        <script type = "text/javascript" >
            function preventBack() {
                window.history.forward();
            }
            setTimeout("preventBack()", 2000);
            window.onunload = function () {
                null
            };
        </script> 
    </head>
    <body background="lib2.png">
        <h1 class="heading"><center>Library Management System</center></h1>
        <hr>
        <h1 class="heading">New User Sign Up Here </h1>
        <form method ="post " action ="SignUpAdd.jsp" name="f1">        
            <table border ="1">
                <tr><td>  Select Your Role:</td><td><select name="role">
                            <option>Librarian </option>
                            <option>Student</option>
                        </select></td></tr>
                <tr><td>Enter the user Name:</td><td><input type =" text" name="uname" requried></td></tr>
                <tr><td>Enter the Password:</td><td><input type ="password"  name="pwd"  required></td></tr>

            </table>
            <br>
            <center> <input type ="submit" value ="Sign Up" onclick="return validatepwd();"></center>

        </form>
        <h2 class="heading"> Already Registered user Login Here</h2>
    <center>  <button> <a href="Login.jsp"> Login</a> </button> </center>
</body>
</html>