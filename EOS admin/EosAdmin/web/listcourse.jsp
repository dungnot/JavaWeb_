<%@page import="model.*" import="dao.*" import="java.util.ArrayList" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>List Courses</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/css/bootstrap.min.css">
        <style>
            body {
                font-family: 'Open Sans', sans-serif;
            }

            .add-course-btn:hover {
                color: white;
                background-color: #f57c00;
                border-color: #f57c00;
            }

            .edit-course-btn:hover {
                color: white;
                background-color: #007bff;
                border-color: #007bff;
            }

            .see-tests-btn:hover {
                color: white;
                background-color: #6c757d;
                border-color: #6c757d;
            }
            
        </style>
    </head>
    <body>

        <div class="d-flex" >
            <% Users user=(Users) request.getSession().getAttribute("user"); if (user==null) {
                 response.sendRedirect(request.getContextPath()+"/login"); return; } else {  %>
                 <a style="position: relative; top: 33px; left: 1177px" class="btn btn-outline-primary float-end" href="<%= request.getContextPath()%>/logout"><i class="bi bi-box-arrow-right"></i> Logout</a>
            <%}%>
        </div>

        <div class="container">
            <h1 style="text-align: center;">List Courses</h1>

            <a href="AddCourse" class="btn btn-warning my-3 add-course-btn  d-inline-block"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle-fill" viewBox="0 0 16 16">
                <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8.5 4.5a.5.5 0 0 0-1 0v3h-3a.5.5 0 0 0 0 1h3v3a.5.5 0 0 0 1 0v-3h3a.5.5 0 0 0 0-1h-3v-3z"/>
                </svg> Add Course</a>

            <form action="ListCourse" method="get">
                <input style="margin-left: 800px; position: relative; left: 36px; top: -49px;" type="text" name="search" value="${search}"> <input type="submit" name="search" value="Search" style="position: relative; left: 38px; top: -49px"> <br>
            </form>
            <br>

            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Code</th>
                        <th>Action</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="course" items="${list}">
                        <tr>
                            <td>${course.id}</td>
                            <td>${course.c_name}</td>
                            <td>${course.c_code}</td>
                            <td>
                                <a href="EditCourse?cid=${course.id}" class="btn btn-primary me-3 edit-course-btn">Edit Course</a>
                                <a href="ListTest?cid=${course.id}" class="btn btn-secondary see-tests-btn">See All Tests</a>

                            </td>
                            <td><a href="ListCourse?cid=${course.id}&mod=1" class="btn btn-danger" onclick="return confirm('Do you want delete?');">Delete Course</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
    </body>
</html>