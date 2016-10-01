<%-- 
    Document   : edit
    Created on : Oct 1, 2016, 2:43:35 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Chinh sua thanh vien</h1>
        <a href="index">Quay lai danh sach</a>
        <form action="update" method="POST">
            
            ID: <br>
            <input type="text" name="id" value="${user.id}" /><br>
            Name: <br>
            <input type="text" name="fullname" value="${user.fullname}" /><br>
            Email: <br>
            <input type="email" name="email" value="${user.email}" /><br>
            User Name: <br>
            <input type="text" name="username" value="${user.username}" /><br>
            Password: <br>
            <input type="password" name="password" value="${user.password}" /><br>
            <br>
            <input type="submit" value="Luu" />
        </form>
    </body>
</html>
