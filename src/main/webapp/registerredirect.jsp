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
        String name, password, type, mail, telno;
        
        name = request.getParameter("name");
        password = request.getParameter("password");
        mail = request.getParameter("email");
        telno = request.getParameter("telno");
        type = request.getParameter("type");
        
        clsUser newUser = new clsUser();
        
        newUser.setName(name);
        newUser.setPassword(password);
        newUser.setType(type);
        newUser.setMail(mail);
        newUser.setTelno(telno);
        String addUser = newUser.addUser();
        if(addUser.equals(""))
            out.println(addUser);
        else
            out.println(addUser);
    %>
    </body>
</html>