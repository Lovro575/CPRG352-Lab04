<%-- 
    Document   : viewnote
    Created on : Oct 7, 2021, 11:43:21 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Note - Simple Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>View Note</h2>
        <form method="POST" action="note">
            <p><b>Title: </b>${note.title}</p>
            <p><b>Contents: </b>
                <br>${note.contents}</p>
        </form>
        <p><a href="note?edit">Edit</a></p>
    </body>
</html>
