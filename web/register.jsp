<%-- 
    Document   : register
    Created on : 27-09-2016, 18:22:57
    Author     : ken
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Register Member</h1>
        
        <form action="register" method="POST">
            Name: <br>
            <input type="text" name="fullname" value="" /><br>
            Email: <br>
            <input type="email" name="email" value="" /><br>
            User Name: <br>
            <input type="text" name="username" value="" /><br>
            Password: <br>
            <input type="password" name="password" value="" /><br>
            <br>
            <input type="submit" value="Register" />
        </form>
    </body>
</html>
