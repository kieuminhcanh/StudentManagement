<%-- 
    Document   : index
    Created on : Oct 4, 2016, 6:55:34 PM
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

        <form action="index" method="GET">
            TIM KIEM: <input type="text" value='<%= request.getParameter("keyword") %>' name="keyword"/> 
            <button type="submit" >Tim kiem</button>
        </form>

        <h1>DANH SACH BAI VIET</h1>

        <table border="1">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tieu de</th>
                    <th>Tac gia</th>
                    <th>#</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${posts}" var="post">
                    <tr>
                        <td>${post.id}</td>
                        <td>${post.title}</td>                        
                        <td>${post.fullname}</td>
                        <td>
                            <a href="edit?id=${post.id}">Sua</a> | 
                            <a href="delete?id=${post.id}">Xoa</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

    </body>
</html>
