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
        
        <form>
            <label><b>Title</b></label>
            <input name="editTitle" value="">
            <br><br>
            <label><b>Contents</b></label>
            <textarea name="editContents" value=""></textarea>
            <br>
            <input type="submit" name="save" value="Save">
            
        </form>
        
<!--        <c:if test="${errorMessage}">
                <p>Invalid entry. Please enter both the title and the contents.</p>
            </c:if>-->
            
    </body>
</html>
