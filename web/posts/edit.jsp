<%-- 
    Document   : edit
    Created on : Oct 6, 2016, 6:48:21 PM
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
        <h1>EDIT POST</h1>
        <form action="edit" method="POST">
            <input type="hidden" name ="id" value="${post.id}"/>
            Tieu de: <input type="text" name="title" value="${post.title}"/><br>
            Noi dung: <textarea cols="20" rows="7" name="content">${post.content}</textarea> <br>
            <input type="submit" value="Save" />
        </form>
    </body>
</html>
