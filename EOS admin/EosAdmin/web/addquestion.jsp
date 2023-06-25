<%-- 
    Document   : addquestion
    Created on : Feb 19, 2023, 10:51:54 AM
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
        <div style="padding: 20%; padding-top: 10px;">
            <h1 style="text-align: center   ">Add Questions </h1>    
            <form method="post" action="AddQuest">
                <input type="hidden" name="id" value="${a.id}"><!-- comment -->
                <input type="hidden" name="tid" value="${param["tid"]}"><!-- comment -->
                <label>Quest: </label> <input type="text" name="quest" class="form-control" value="${a.quest}" required=""><br>   
                <label>Option A: </label><input type="text" name="oa" class="form-control" value="${a.option_a}" required=""><br>   
                <label>Option B: </label> <input type="text" name="ob" class="form-control"  value="${a.option_b}" required=""><br>   
                <label>Option C: </label><input type="text" name="oc" class="form-control" value="${a.option_c}" required=""><br>   
                <label>Option D: </label><input type="text" name="od" class="form-control" value="${a.option_d}" required=""><br>   
                <label>Right Option: </label><input type="text" name="ro" class="form-control" value="${a.right_option}" required=""><br>   
                <label>Test: </label> <select class="form-select" name="test">
                    <c:forEach var="l" items="${list}">
                        <option value="${l.id}"  >${l.c_name}</option>
                    </c:forEach> 
                </select>
                <input type="submit"  value="Add" class="btn btn-warning" style="margin: 15px">
            </form>
        </div>
    </body>
</html>
