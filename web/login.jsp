<%-- 
    Document   : login
    Created on : Oct 1, 2016, 2:01:25 PM
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
        <h1>Login to System</h1>
        
        <form action="login" method="POST">
            Username: <input type="text" name="username" value="" /> <br>
            Password: <input type="password" name="password" value="" /><br>
            <input type="submit" value="Login" />
        </form>
        
    </body>
</html>
