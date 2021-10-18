<%-- 
    Document   : student
    Created on : Oct 18, 2021, 9:49:35 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"></jsp:include>
                <div class="centerpage">
                <jsp:include page="left.jsp"></jsp:include>
                    <div class="right">
                        <div class="row">
                            <div class="col-md-8"><h2>Student<b>Details</b></h2></div>
                            <div class="col-md-4">
                                <button type="button" class="btn btn-info add"><i class="fa fa-plus"></i> Add</button>
                            </div>
                        </div>
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Name</th>
                                    <th>Gender</th>
                                    <th>Dob</th>
                                    <th>Phonenumber</th>
                                    <th>Cardnumber</th>
                                    <th>Address</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${requestScope.students}" var="s">
                                <tr>
                                    <td>${s.id}</td>
                                    <td>${s.name}</td>
                                    <td>${(s.gender)?"Nam":"Nu"}</td>
                                    <td>${s.dob}</td>
                                    <td>${s.phonenumber}</td>
                                    <td>${s.cardnumber}</td>
                                    <td>${s.address}</td>
                                    <td>
                                        <%--<a href="#" class="add" title="Add" ><i class="material-icons">&#xE03B;</i></a>--%>
                                        <a href="#" class="edit" title="Edit" ><i class="material-icons" style="color: yellow;">&#xE254;</i></a>
                                        <a href="#" class="delete" title="Delete" ><i class="material-icons" style="color: red;">&#xE872;</i></a>
                                    </td>
                                </tr>
                            </c:forEach>   
                        </tbody>
                    </table>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>

    </body>
</html>
