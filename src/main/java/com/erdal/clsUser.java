/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.erdal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

/**
 *
 * @author PC
 */
public class clsUser {

    int id;
    String name, password, type, mail, telno, temp, sessionId, watchedMovies;

    public String getWatchedMovies() {
        return watchedMovies;
    }
    public void setWatchedMovies(String watchedMovies) {
        this.watchedMovies = watchedMovies;
    }
    Date registerDate = new Date();
    public String getSessionId() {
        return sessionId;
    }
    public void setSessionId(String sessionId) {
        this.sessionId = sessionId;
    }
    public String getTemp() {
        return temp;
    }
    public void setTemp(String temp) {
        this.temp = temp;
    }
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public String getMail() {
        return mail;
    }
    public void setMail(String mail) {
        this.mail = mail;
    }
    public String getTelno() {
        return telno;
    }
    public void setTelno(String telno) {
        this.telno = telno;
    }
    public Date getRegisterDate() {
        return registerDate;
    }
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public String sessionIdGenerator(String mail) {
        
        String sessionId = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM `tbUsers` WHERE `mail` LIKE '" + mail + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                sessionId = rs.getInt(1) + rs.getString(2);
                return sessionId;
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return sessionId;
    }

    public boolean checkUser(String mail, String password) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM `tbUsers` WHERE `mail` LIKE '" + mail + "' AND `password` LIKE '" + password + "' ";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                return true;
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean addUser() {

        String sql = "INSERT INTO `tbUsers`(`ID`, `name`, `password`, `mail`, `telno`, `type`, `registerdate`)"
                + "VALUES (NULL,'" + this.getName() + "','" + this.getPassword() + "','" + this.getMail() + "','" + this.getTelno() + "','" + this.getType() + "',CURRENT_TIMESTAMP)";
        
        if(!checkUser(this.getMail(), this.getPassword())){
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
                Statement stmt = con.createStatement();
                stmt.execute(sql);
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
            return true;
        }
        else
            return false;
    }
    
    public clsUser getUser(String mail) {
        
        clsUser user = new clsUser();
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM `tbUsers` WHERE `mail` LIKE '" + mail + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
              user.setId(rs.getInt(1));
              user.setName(rs.getString(2));
              user.setPassword(rs.getString(3));
              user.setMail(rs.getString(4));
              user.setTelno(rs.getString(5));
              user.setType(rs.getString(6));
              user.setRegisterDate(rs.getDate(7));
              user.setWatchedMovies(rs.getString(8));
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return user;
    }

    @Override
    public String toString() {
        return (" ID:" + this.getId()
                + " Name:" + this.getName()
                + " Password: " + this.getPassword()
                + " Mail: " + this.getMail()
                + " Telno : " + this.getTelno()
                + " Type : " + this.getType()
                + " RegisterDate : " + this.getRegisterDate());
    }

}
