<%-- 
    Document   : editnote
    Created on : Oct 7, 2021, 11:43:30 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Note - Simple Note Keeper</title>
    </head>
    <body>
        <h1>Simple Note Keeper</h1>
        <h2>Edit Note</h2>

        <form method="POST" action="note">
            <label>Title:</label>
            <input type="text" name="editTitle" value="This is the title">
            <br><br>
            <label>Contents:</label>
            <textarea type="text" name="editContents">Contents go here</textarea>
            <br><br>
            <input type="submit" name="save" value="Save">
            
        </form>
    </body>
</html>
