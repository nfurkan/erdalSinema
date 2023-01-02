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
            if (cart.getTotalPrice() == 0)
                response.sendRedirect(request.getContextPath() + "/vizyondakiler.jsp");
            else {
            
                clsMovie movie = new clsMovie();
                ArrayList<clsMovie> movies = new ArrayList<clsMovie>();
                movies = movie.getMovies();
                String[] cartMovieNames;
                String[] cartMoviePictureNames;
                cartMovieNames = cart.getCartMovieNames();
                cartMoviePictureNames = cart.getCartMoviePictureNames();
                ArrayList<clsMovie> cartMovies = new ArrayList<clsMovie>();
                
                for (int i = 0; i < cartMovieNames.length; i++) {
                    for (int j = 0; j < movies.size(); j++) {

                        if (movies.get(j).getName().equals(cartMovieNames[i])) {

                            cartMovies.add(movies.get(j));

                        }
                    }
                }
                for (int i = 0; i < cartMovies.size(); i++) {
        %>
        <form action="odemeredirect.jsp" method="POST">
            <%out.println(cartMovies.get(i).getName()+"<br>");%>
            <img class="cartimg" src="images/<%out.println(cartMoviePictureNames[i]);%>-vizyondakiler.jpg" alt="foto"><br>
            Koltuk Numarası Belirleyiniz: <input type="number" name="koltukSayisi" min="0" max="40"/><br><br>
            Seans Belirleyiniz: <select name="seansBilgisi">
                <%
                    clsMovieSessions movieSession = new clsMovieSessions();
                    ArrayList<clsMovieSessions> movieSessions = new ArrayList<clsMovieSessions>();
                    movieSessions = movieSession.getMovieSessions();
                    
                        for(int k = 0; k < movieSessions.size(); k++){
                        
                            if(movieSessions.get(k).getMovieId() == cartMovies.get(i).getId()){
                %>
                            <option><%out.println("Başlangıç: " + movieSessions.get(k).getStartTime() + " Bitiş: " + movieSessions.get(k).getFinishTime());%></option>
                <%
                        }
                }

                %>
            </select><br><br>
            <input type="submit" value="Satın Al"/>
        </form><br><br><br>
        <%      
                }
            }
        %>
    </body>
</html>
