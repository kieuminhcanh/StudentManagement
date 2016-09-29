<%-- 
    Document   : getall
    Created on : Sep 29, 2016, 6:54:09 PM
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
        <h1>User List</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>Full name</th>
                    <th>Email</th>
                    <th>User name</th>
                    <th>Password</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${userList}" var="user" >                    
                    <tr>
                        <td>${user.fullname}</td>
                        <td>${user.email}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>


    </body>
</html>
