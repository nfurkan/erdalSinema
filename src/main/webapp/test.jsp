<%-- 
    Document   : test
    Created on : Nov 7, 2022, 1:48:37 AM
    Author     : PC
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        /*String mail, password;
        mail = request.getParameter("loginMail");
        password = request.getParameter("loginPassword");
        clsUser user = new clsUser();
        out.println(Integer.toString(user.checkUser(mail, password)));*/
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
        newUser.addUser();
    %>
    </body>
</html>
