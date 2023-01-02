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
            
            clsTicket yeniBilet = new clsTicket();
            int koltukSayisi = Integer.parseInt(request.getParameter("koltukSayisi"));
            String[] seansBilgisi = request.getParameter("seansBilgisi").split("/");
            String baslangicSaati = seansBilgisi[0];
            String bitisSaati = seansBilgisi[1];
            yeniBilet.addTicket(user.getId(), movieSession.getId(), 30, koltukSayisi);

        %>
    </body>
</html>
