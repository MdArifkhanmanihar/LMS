<%-- 
    Document   : SearchPub
    Created on : 12 May, 2022, 9:45:44 AM
    Author     : BASAVARAJU
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Publisher Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet"type="text/css" href="libcss.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Search Publisher Details!</h1>
        <form action="SearchPublisher.jsp" method="post">

            <div class="row sm-3" mar>
                <label for="search" class="col-sm-3 col-form-label">Enter Publisher Mobile Number</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" name="mno"">
                </div>
            </div>


            <input type="submit" class="btn btn-secondary" value="Search">
        </form>
    </body>
</html>
