<%-- 
    Document   : entry
    Created on : 15 Jul, 2017, 9:35:40 PM
    Author     : Amit Dubey(aD)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Entry</title>
    </head>
    <body>
        <h1>Master Entry</h1>
        <form name="entry" action="get_entry.jsp" method="POST">
            Company Name:<input type="text" name="cname" value="" size="75" /><br>
            Address:<textarea name="cadd" rows="4" cols="20"> </textarea><br>
            Contact:<input type="text" name="con" value="" size="75" /><br>
            Lead:<input type="text" name="lead" value="" size="75" /><br>
            <input type="submit" value="save"  />&nbsp;&nbsp;
            <input type="reset" value="reset" />&nbsp;&nbsp;
            <input type="submit" value="update"  />&nbsp;&nbsp;
            <input type="submit" value="get_data"/>&nbsp;&nbsp;
        </form>
    </body>
</html>
