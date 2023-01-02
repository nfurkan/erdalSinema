<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<jsp:useBean id="cart" class="com.erdal.clsCart" scope="session"/>
<jsp:useBean id="movieSession" class="com.erdal.clsMovieSessions" scope="session"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int id = Integer.parseInt(request.getParameter("movieId"));
        clsMovie movie = new clsMovie();
        movie.setId(id);
        movie.removeBroadcast();
        response.sendRedirect(request.getContextPath() + "/panel.jsp");
        %>
    </body>
</html>
