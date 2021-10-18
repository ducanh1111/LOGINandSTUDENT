
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <title>Header</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="../css/font-awesome.min.css" />
        <link href="../css/element.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>

    </head>
    <body>
        <header>
            <div class="row">
                <div class="headpage">
                    <div class="col-sm-2">
                        <div class="menu_box_1">
                            <h1><a href="../controller/homepage">DucAnh!</a></h1>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="menu_box_2">
                            <h1><i class="glyphicon glyphicon-home"></i>NHA TRO THAN THIEN</h1>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <div class="menu_box_3">
                            <c:if test="${sessionScope.account == null}">
                                <a href="../auth/login">Log in</a>
                            </c:if>
                            <c:if test="${sessionScope.account != null}">
                                <a href="../auth/logout">Log out</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </body>
</html>
