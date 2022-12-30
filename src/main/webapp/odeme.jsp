<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  clsUser userrr = new clsUser();
            userrr = userrr.getUser("furkan@hotmail.com");
            for(int i = 0; i < userrr.getWatchedMovies().length; i++){
            
                out.println(userrr.getWatchedMovies()[i]);
                out.println("<br>");
            
            }
        %>
    </body>
</html>
