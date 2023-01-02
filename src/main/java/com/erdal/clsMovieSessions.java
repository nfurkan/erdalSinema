/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.erdal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.ArrayList;

/**
 *
 * @author furkan
 */
public class clsMovieSessions {
    
    int id, saloon, totalSeatNumber, movieId;
    String startTime, finishTime;

    public int getMovieId() {
        return movieId;
    }

    public void setMovieId(int movieId) {
        this.movieId = movieId;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getSaloon() {
        return saloon;
    }

    public void setSaloon(int saloon) {
        this.saloon = saloon;
    }

    public int getTotalSeatNumber() {
        return totalSeatNumber;
    }

    public void setTotalSeatNumber(int totalSeatNumber) {
        this.totalSeatNumber = totalSeatNumber;
    }

    public String getStartTime() {
        return startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getFinishTime() {
        return finishTime;
    }

    public void setFinishTime(String finishTime) {
        this.finishTime = finishTime;
    }
    
    public ArrayList<clsMovieSessions> getMovieSessions(){
        
        ArrayList<clsMovieSessions> movieSessions = new ArrayList<clsMovieSessions>();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM `tbMovieSessions`";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                clsMovieSessions newMovieSession = new clsMovieSessions();
                newMovieSession.setId(rs.getInt(1));
                newMovieSession.setStartTime(rs.getString(2));
                newMovieSession.setFinishTime(rs.getString(3));
                newMovieSession.setSaloon(rs.getInt(4));
                newMovieSession.setMovieId(rs.getInt(5));
                newMovieSession.setTotalSeatNumber(rs.getInt(6));
                movieSessions.add(newMovieSession);
            }
            con.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return movieSessions;
    }
    
    public String addMovieSession(LocalDateTime startTime, LocalDateTime finishTime, int saloon, int movieId, int totalSeatNumber){
        String sql = "INSERT INTO `grup11`.`tbMovieSessions` (`ID`, `starttime`, `finishtime`, `saloon`, `movieID`, `totalseatnumber`) "
                + "VALUES (NULL, '2023-01-11 09:30:00', '2023-01-11 12:30:00', '4', '17', '40');";
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
                PreparedStatement stmt = con.prepareStatement("INSERT INTO tbMovieSessions (starttime, finishtime, saloon, movieID, totalseatnumber) VALUES (?,?,?,?,?)");
                LocalDateTime dateTime = startTime;
                java.sql.Date sqlDate = java.sql.Date.valueOf(dateTime.toLocalDate());
                LocalDateTime dateTime1 = finishTime;
                java.sql.Date sqlDate1 = java.sql.Date.valueOf(dateTime1.toLocalDate());
                stmt.setDate(1,sqlDate);
                stmt.setDate(2,sqlDate1);
                stmt.setInt(3,saloon);
                stmt.setInt(4,movieId);
                stmt.setInt(5,totalSeatNumber);
                stmt.executeUpdate();
                con.close();
            } catch (Exception e) {
                return ("İşlem esnasında bir hata meydana geldi lütfen bütün alanları kontrol ederek bir kez daha deneyiniz."); 
            }
            return ("");
        }
}
