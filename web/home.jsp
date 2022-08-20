<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LMS</title>
        <link rel="stylesheet"type="text/css" href="libcss.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script type = "text/javascript" >
            function preventBack() {
                window.history.forward();
            }
            setTimeout("preventBack()", 0);
            window.onunload = function () {
                null
            };
        </script> 
    </head>
    <body background="lib2.png">
        <div>
            <h1 class="heading "><center>Library Management System</center></h1>
            <p align="right"> <button ><a href="  Login.jsp"> Logout</a> </button> </p>
            <hr>
        </div>
        <div class="dropdown">
            <button  class="btn btn-primary">Publisher</button>
            <div class="dropdown-content" >
                <a href="Publisher.jsp" target="iframe1">Add Publisher</a>
                <a href="PublisherDelete.jsp" target="iframe1">Delete Publisher</a>
                <a href="PublisherDetailsView.jsp" target="iframe1">View Publisher Details</a>
                <a href ="PublisherUpdateFrontend.jsp" target="iframe1">Update Publisher Details</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="btn btn-secondary">Books</button>
            <div class="dropdown-content">
                <a href="Books.jsp" target="iframe1">Add Books</a>
                <a href="BooksDelete.jsp" target="iframe1">Delete Books</a>
                <a href="BooksDetailsView.jsp" target="iframe1">View Book Details</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="btn btn-dark">Authors Details</button>
            <div class="dropdown-content">
                <a href="Authors.jsp" target="iframe1">Add Authors Details</a>
                <a href="AuthorsDetailsView.jsp" target="iframe1">View Author Details</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Branch Details</button>
            <div class="dropdown-content">
                <a href="Branch.jsp" target="iframe1">Add Branch Details</a>
                <a href="BranchsDelete.jsp" target="iframe1">Delete Branch Details</a>
                <a href="BranchsDetailsViewSpecific.jsp" target="iframe1">View Branch Details</a>
            </div>
        </div>
        <div class="dropdown">
            <button class="dropbtn">Copies Details</button>
            <div class="dropdown-content">
                <a href="Copies.jsp" target="iframe1">Add Number of Copies</a>
                <a href="CopiesDetailsView.jsp" target="iframe1">View Number of Copies Details</a>
            </div>

        </div>
        <div class="dropdown">
            <button class="dropbtn">Book Lending</button>
            <div class="dropdown-content">
                <a href="BooksLending.jsp" target="iframe1">Add Books Borrowing Details</a>
                <a href="CardDelete.jsp" target="iframe1">Delete by Card Nos</a>
                <a href="BooksLendingDetailsView.jsp" target="iframe1">View Books Lending  Details</a>
            </div>

        </div>
        <div class="dropdown">
            <button class="dropbtn">Add Card</button>
            <div class="dropdown-content">
                <a href="AddCard.jsp" target="iframe1">Add</a>
            </div>
        </div>
        <iframe name="iframe1" style="height: 500px; width: 100%;"></iframe>
    </body>
</html>