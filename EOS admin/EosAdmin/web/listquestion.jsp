<%-- 
    Document   : listquestion
    Created on : Feb 19, 2023, 10:51:46 AM
    Author     : Dũng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    </head>
    <body>
        <h1 style="align-items: center;" >List Questions</h1>
        <a href="AddQuest?tid=${param["tid"]}" style="margin: 15px;" class="btn btn-warning" ><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
            </svg> Add Quest</a>
        <a href="ListCourse" style="margin: 15px;" class="btn btn-warning"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
            <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146ZM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5Z"/>
            </svg> List Course</a>

        <form action="ListQuest" method="get">
            <input type="hidden" name="tid" value="${param["tid"]}">
            <input style="margin-left: 900px; position: relative; left: 36px; top: -49px;" type="text" name="search" value="${search}"> <input style="position: relative; left: 38px; top: -49px" type="submit" name="search" value="search"> <br>
        </form>

        <br>
        <table class="table table-bordered" >
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Questions</th>
                    <th>A</th>
                    <th>B</th>
                    <th>C</th>
                    <th>D</th>
                    <th>Right option</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="c" items="${list}">
                    <tr>
                        <td>${c.id}</td>
                        <td>${c.quest}</td>
                        <td>${c.option_a}</td>
                        <td>${c.option_b}</td>
                        <td>${c.option_c}</td>
                        <td>${c.option_d}</td>
                        <td>${c.right_option}</td>
                        <td><a href="EditQuest?qid=${c.id}&tid=${param["tid"]}">Edit </a></td>
                        <td><a href="DeleteQuest?qid=${c.id}&tid=${param["tid"]}" onclick="return confirm('Do you want delete?');">Delete</a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
