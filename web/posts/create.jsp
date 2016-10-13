<%-- 
    Document   : create
    Created on : Oct 4, 2016, 6:20:14 PM
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
        <h1>ADD NEW POST</h1>
        <form action="create" method="POST">
            Tieu de: <input type="text" name="title"/><br>
            Noi dung: <textarea cols="20" rows="7" name="content"></textarea> <br>
            Danh muc: <select name="category_id" >
                <c:forEach items="${categories}" var="category">
                    <option value="${category.id}">${category.name}</option>
                </c:forEach>
            </select><br>
            <input type="submit" value="Create" />
        </form>
    </body>
</html>
