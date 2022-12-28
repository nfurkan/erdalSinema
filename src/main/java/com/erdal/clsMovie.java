/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.erdal;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author PC
 */
public class clsMovie {
    
    int id, ageRestriction, screenTime, published, broadcasting;
    String name, director, actors, format, category, summary, publishDate;
    String pictureName;
    float point;

    public int getBroadcasting() {
        return broadcasting;
    }
    public void setBroadcasting(int broadcasting) {
        this.broadcasting = broadcasting;
    }
    public String getPictureName() {
        return pictureName;
    }
    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }
    public int getAgeRestriction() {
        return ageRestriction;
    }
    public void setAgeRestriction(int ageRestriction) {
        this.ageRestriction = ageRestriction;
    }
    public int getScreenTime() {
        return screenTime;
    }
    public void setScreenTime(int screenTime) {
        this.screenTime = screenTime;
    }
    public int getPublished() {
        return published;
    }
    public void setPublished(int published) {
        this.published = published;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public String getDirector() {
        return director;
    }
    public void setDirector(String director) {
        this.director = director;
    }
    public String getActors() {
        return actors;
    }
    public void setActors(String actors) {
        this.actors = actors;
    }
    public String getFormat() {
        return format;
    }
    public void setFormat(String format) {
        this.format = format;
    }
    public String getCategory() {
        return category;
    }
    public void setCategory(String category) {
        this.category = category;
    }
    public String getSummary() {
        return summary;
    }
    public void setSummary(String summary) {
        this.summary = summary;
    }
    public float getPoint() {
        return point;
    }
    public void setPoint(float point) {
        this.point = point;
    }
    public String getPublishDate() {
        return publishDate;
    }
    public void setPublishDate(String publishDate) {
        this.publishDate = publishDate;
    }
    
    public ArrayList<clsMovie> getMovies(){
        ArrayList<clsMovie> movieList = new ArrayList<clsMovie>();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM `tbMovies`";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()){
                clsMovie newMovie = new clsMovie();
                newMovie.setId(rs.getInt(1));
                newMovie.setName(rs.getString(2));
                newMovie.setDirector(rs.getString(3));
                newMovie.setActors(rs.getString(4));
                newMovie.setPoint(rs.getFloat(5));
                newMovie.setFormat(rs.getString(6));
                newMovie.setCategory(rs.getString(7));
                newMovie.setPublishDate(rs.getString(8));
                newMovie.setSummary(rs.getString(9));
                newMovie.setAgeRestriction(rs.getInt(10));
                newMovie.setScreenTime(rs.getInt(11));
                newMovie.setPublished(rs.getInt(12));
                newMovie.setBroadcasting(rs.getInt(13));
                newMovie.setPictureName(rs.getString(14));
                movieList.add(newMovie);
            }
            con.close();
        }
        catch (Exception e) {
            System.out.println(e);
        }
        return movieList;
    }
    
    public void addMovie(){
    
    
    }
    
    public void removeBroadcast(){

    
    
    }
    
    public void addBroadcast(){
       
    String sql = "UPDATE `grup11`.`tbMovies` SET `broadcasting` = '1' WHERE `tbMovies`.`ID` =16;";    
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://app.sobiad.com:3306/grup11?useUnicode=true&characterEncoding=UTF-8&useSSL=false", "grup11", "erdal");
            Statement stmt = con.createStatement();
            stmt.execute(sql);
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    @Override
    public String toString(){
    
        return( "id: " + this.id +
                "<br>isim: " + this.name +
                "<br>director: " + this.director +
                "<br>actors: " + this.actors +
                "<br>point: " + this.point +
                "<br>format: " + this.format +
                "<br>type: " + this.category +
                "<br>publishDate: " + this.publishDate +
                "<br>summary: " + this.summary +
                "<br>ageRestriction: " + this.ageRestriction +
                "<br>screenTime: " + this.screenTime +
                "<br>published: " + this.published + "<br><br><br>"
                );
    
    }
    
}
