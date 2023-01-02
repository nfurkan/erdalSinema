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
        <form action="seansRedirect.jsp" method="POST">
            Başlangıç Saati:<input type="date" name="startTime" value=""/><br>
            Bitiş Saati: <input type="date" name="finishTime" value=""/><br>
            Salon Numarası: <input type="number" name="saloon" min="1" max="5"/><br>
            Toplam Koltuk Sayısı: <input type="number" name="totalSeatNumber" min="1" max="40"/><br>
            <input type="submit" value="Ekle"/>
        </form>
    </body>
</html>
