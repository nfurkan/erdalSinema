<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<jsp:useBean id="cart" class="com.erdal.clsCart" scope="session"/>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            if(cart.getTotalPrice() == 0)
            response.sendRedirect(request.getContextPath() + "/vizyondakiler.jsp");
            else{
        %>
            <form action="filmlerim.jsp" method="POST">
                <input type="hidden" name="odemeDurum" value="odemeyiyap"/>
                <input type="submit" value="Ödemeyi Gerçekleştir"/>
            </form>
            <form action="vizyondakiler.jsp" method="POST">
                <input type="hidden" name="odemeDurum" value="geridon"/>
                <input type="submit" value="Vizyondakilere Geri Dön" />
            </form>
        <%
            String status = request.getParameter("odemeDurum");
            if(status.equals("odemeyiyap")){
                
                
                
                }
            }
        %>
    </body>
</html>
