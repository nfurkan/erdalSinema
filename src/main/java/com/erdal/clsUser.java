/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.erdal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Timestamp;    
import java.util.ArrayList;
import java.util.Date;    

/**
 *
 * @author PC
 */
public class clsUser {
    
    int id;
    String name, password, type, mail, telno;
    Date birthDate = new Date();
    Date registerDate = new Date();

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
    public Date getBirthDate() {
        return birthDate;
    }
    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }
    public Date getRegisterDate() {
        return registerDate;
    }
    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }
    
    public void checkUser(){
        
        ArrayList<clsUser> userList = new ArrayList<clsUser>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from tbUsers");
            while(rs.next()){
                clsUser newUser = new clsUser();
                newUser.setId(rs.getInt(1));
                newUser.setName(rs.getString(2));
                newUser.setPassword(rs.getString(3));
                newUser.setType(rs.getString(4));
                newUser.setMail(rs.getString(5));
                newUser.setTelno(rs.getString(6));
                newUser.setBirthDate(rs.getDate(7));
                newUser.setRegisterDate(rs.getDate(8));
                userList.add(newUser);
            }
            con.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void addUser(){
        
        String sql = "INSERT INTO `tbUsers`(`ID`, `name`, `password`, `type`, `mail`, `telno`, `birthdate`, `registerdate`)" +
                     "VALUES (NULL,'"+this.getName()+"','"+this.getPassword()+"','"+this.getType()+"','"+this.getMail()+"','"+this.getTelno()+"','"+this.getBirthDate()+"',CURRENT_TIMESTAMP)";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            stmt.execute(sql);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    /*public static void main(String[] args){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from tbUsers");
            while(rs.next()){
                System.out.println(rs.getInt(1));
                System.out.println(rs.getString(2));
                System.out.println(rs.getString(3));
                System.out.println(rs.getString(4));
                System.out.println(rs.getString(5));
                System.out.println(rs.getString(6));
                System.out.println(rs.getDate(7));
                System.out.println(rs.getTimestamp(8));
            }
            con.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
    }*/
    
}
