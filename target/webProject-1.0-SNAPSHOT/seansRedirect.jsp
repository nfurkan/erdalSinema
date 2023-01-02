<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.time.LocalDateTime"%>
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
            
            clsMovieSessions seans = new clsMovieSessions();
            LocalDateTime startTime = LocalDateTime.parse(request.getParameter("startTime"));
            LocalDateTime finishTime = LocalDateTime.parse(request.getParameter("finishTime"));
            int saloon, movieId, totalSeatNumber;
            saloon = Integer.parseInt(request.getParameter("saloon"));
            totalSeatNumber = Integer.parseInt(request.getParameter("totalSeatNumber"));
            seans.addMovieSession(startTime, finishTime, saloon, 4, totalSeatNumber);

        %>
    </body>
</html>
