<%-- 
    Document   : login
    Created on : Feb 19, 2023, 10:50:59 AM
    Author     : Dũng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <style>
            body {
                background-image: url(https://daihoc.fpt.edu.vn/wp-content/uploads/2022/02/HCM-scaled.jpeg);
                background-size: cover;
                background-position: center;
                height: 100vh;
                overflow: hidden;
            }
            
            .login-container {
                width: 400px;
                margin: auto;
                margin-top: 50px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0,0,0,0.3);
                padding: 20px;
            }
            
            .login-form label {
                margin-top: 20px;
                margin-bottom: 5px;
                display: block;
            }
            
            .login-form input {
                width: 100%;
                padding: 10px;
                border-radius: 5px;
                border: none;
                margin-bottom: 20px;
                box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
            }
            
            .login-form button {
                background-color: #FFA500;
                color: #fff;
                border: none;
                padding: 10px;
                border-radius: 5px;
                cursor: pointer;
            }
            
            .login-form button:hover {
                background-color: #FF8C00;
            }
        </style>
    </head>
    <body>
        <div class="login-container">
            <h1 class="text-center">Login</h1>
            <form class="login-form" action="login" method="post">
                <label>Email</label>
                <input type="text" class="form-control" name="email" required>
                <label>Password</label>
                <input type="password" class="form-control" name="pass" required>
                <button type="submit" class="btn btn-primary btn-block">Login</button>
                <br>    ${mess}
            </form>
        </div>
    </body>
</html>