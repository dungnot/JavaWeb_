<%-- 
    Document   : AddCourse
    Created on : Mar 4, 2023, 4:19:06 AM
    Author     : Dũng
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
        <div style="padding: 30%; padding-top: 10px;">
            <h1 style="text-align: center ">Add Course </h1>    
            <form method="post" action="AddCourse">
                <label>Name: </label> <input type="text" name="name" class="form-control" required=""><br>   
                <label>Code: </label><input type="text" name="code" class="form-control" required=""><br>   
                <input type="submit"  value="Add" class="btn btn-warning" style="margin: 15px">
            </form>
        </div>
    </body>
</html>
