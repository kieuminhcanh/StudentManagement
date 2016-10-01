<%-- 
    Document   : index
    Created on : Oct 1, 2016, 2:24:07 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Danh sach thanh vien</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>Full name</th>
                    <th>Email</th>
                    <th>User name</th>
                    <th>Password</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user" >                    
                <tr>
                    <td>${user.fullname}</td>
                    <td>${user.email}</td>
                    <td>${user.username}</td>
                    <td>${user.password}</td>
                    <td>
                        <a href="edit?id=${user.id}">Edit</a> | 
                        <a href="delete?id=${user.id}">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
