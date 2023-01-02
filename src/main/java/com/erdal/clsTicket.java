/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.erdal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 *
 * @author furkan
 */
public class clsTicket {
    
    int id, userId, movieSessionId, totalPrice, seat;
    String boughtTime;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getMovieSessionId() {
        return movieSessionId;
    }

    public void setMovieSessionId(int movieSessionId) {
        this.movieSessionId = movieSessionId;
    }

    public int getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(int totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getSeat() {
        return seat;
    }

    public void setSeat(int seat) {
        this.seat = seat;
    }

    public String getBoughtTime() {
        return boughtTime;
    }

    public void setBoughtTime(String boughtTime) {
        this.boughtTime = boughtTime;
    }
    
    
    public String addTicket(int userId, int movieSessionId, int totalPrice, int seat){
        
        String sql = "INSERT INTO `tbTickets` (`ID`, `userID`, `moviesessionID`, `totalprice`, `seat`, `currenttime`, `ticketcount`) "
                + "VALUES (`ID`, '"+userId+"', '"+movieSessionId+"', '"+totalPrice+"', '"+seat+"', CURRENT_TIMESTAMP, '1')";
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
                Statement stmt = con.createStatement();
                stmt.execute(sql);
                con.close();
            } catch (Exception e) {
                return ("İşlem esnasında bir hata meydana geldi lütfen bütün alanları kontrol ederek bir kez daha deneyiniz.");
            }
            return ("");
    }
}
