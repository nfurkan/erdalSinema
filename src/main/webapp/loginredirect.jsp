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
        String mail, password;
        mail = request.getParameter("loginMail");
        password = request.getParameter("loginPassword");
        clsUser user = new clsUser();
        if(user.checkUser(mail, password))
            out.println("Giriş başarılı.");
    %>
    </body>
</html>
