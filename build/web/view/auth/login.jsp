<%-- 
    Document   : login
    Created on : Oct 15, 2021, 11:13:01 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css" />
        <link href="../css/element.css" rel="stylesheet">
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="login-form">
            <form action="../auth/login" method="post">
                <h2 class="text-center">Log in</h2>       
                <div class="form-group">
                    <i class="fa fa-user"></i>
                    <input type="text" class="form-control" placeholder="Username" required="required" name="username">
                </div>
                <div class="form-group">
                    <i class="fa fa-lock"></i>
                    <input type="password" class="form-control" placeholder="Password" required="required" name="password">
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary btn-block">Log in</button>
                </div>
                <div class="clearfix">
                    <a href="#" >Forgot Password?</a>
                </div>        
            </form>
        </div>
    </body>
</html>
