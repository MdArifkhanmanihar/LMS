<%-- 
    Document   : SearchBookLending
    Created on : 12 May, 2022, 11:05:45 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="librarycss.css">
    </head>
    <body>
        <form method="post" action="SearchBookLendingJsp.jsp">
            enter issue date:<input type="date" name="issue_date">
            <input type="submit" value="Search">
        </form>
    </body>
</html>
