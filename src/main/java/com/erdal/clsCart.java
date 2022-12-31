/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.erdal;
import java.util.ArrayList;

/**
 *
 * @author furkan
 */
public class clsCart {
    
    String cartMovieNames = "";
    String cartMoviePictureNames = "";
    int totalPrice = 0;

    public String[] getCartMoviePictureNames() {
        String[] arrCartMoviePictureNames;
        arrCartMoviePictureNames = cartMoviePictureNames.split(",");
        return arrCartMoviePictureNames;
    }

    public void setCartMoviePictureNames(String cartMoviePictureName) {
        if(this.cartMoviePictureNames.equals("")){
        this.cartMoviePictureNames = cartMoviePictureName;
        }
        else{
        this.cartMoviePictureNames += "," + cartMoviePictureName;
        }
    }
    
    public String[] getCartMovieNames() {
        String[] arrCartMovieNames;
        arrCartMovieNames = cartMovieNames.split(",");
        return arrCartMovieNames;
    }

    public void setCartMovieNames(String cartMoviePictureName) {
        if(this.cartMovieNames.equals("")){
        this.cartMovieNames = cartMoviePictureName;
        }
        else{
        this.cartMovieNames += "," + cartMoviePictureName;
        }
        this.totalPrice += 30;
    }

    public int getTotalPrice() {
        return totalPrice;
    }
    
    public void clearCart(){

        this.cartMovieNames = "";
        this.cartMoviePictureNames = "";
        this.totalPrice = 0;
    
    }
    
}
