<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Admin Paneli</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/basket.css">
    <!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="preloader">
      <div class="wrapper-triangle">
        <div class="pen">
          <div class="line-triangle">
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
          </div>
          <div class="line-triangle">
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
          </div>
          <div class="line-triangle">
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
            <div class="triangle"></div>
          </div>
        </div>
      </div>
    </div>
    <div class="page">
      <%
        
        clsMovie movie = new clsMovie();
        ArrayList<clsMovie> movies = new ArrayList<clsMovie>();
        movies = movie.getMovies();

      %>
      <!-- Page Header-->
      <header class="section page-header">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-modern" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-fixed" data-xl-layout="rd-navbar-static" data-xl-device-layout="rd-navbar-static" data-xxl-layout="rd-navbar-static" data-xxl-device-layout="rd-navbar-static" data-lg-stick-up-offset="56px" data-xl-stick-up-offset="56px" data-xxl-stick-up-offset="56px" data-lg-stick-up="true" data-xl-stick-up="true" data-xxl-stick-up="true">
            <div class="rd-navbar-inner-outer">
              <div class="rd-navbar-inner">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                  <!-- RD Navbar Toggle-->
                  <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                  <!-- RD Navbar Brand-->
                  <div class="rd-navbar-brand"><a class="brand" href="index.jsp"><img class="brand-logo-dark" src="images/erdallogo.png" width="198" height="66" alt=""/></a></div>
                </div>
                <div class="rd-navbar-right rd-navbar-nav-wrap">
                  <div class="rd-navbar-aside">
                    <ul class="rd-navbar-contacts-2">
                      <li>
                        <div class="unit unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                          <div class="unit-body"><a class="phone" href="tel:#">Erdal İletişim Hattı - 05XX-XXX-XX-XX</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                          <div class="unit-body"><a class="address" href="#">Erdal Sokak - Erdal/Erdal</a></div>
                        </div>
                      </li>
                    </ul>
                    <ul class="list-share-2">
                      <li><a class="icon mdi mdi-facebook" href="#"></a></li>
                      <li><a class="icon mdi mdi-twitter" href="#"></a></li>
                      <li><a class="icon mdi mdi-instagram" href="#"></a></li>
                      <li><a class="icon mdi mdi-google-plus" href="#"></a></li>
                    </ul>
                  </div>
                  <div class="rd-navbar-main">
                    <!-- RD Navbar Nav-->
                    <ul class="rd-navbar-nav">
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="#">Panel</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="index.jsp">Ana Sayfa</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="vizyondakiler.jsp">Vizyondakiler</a>
                      </li>
                     <!-- <li class="rd-nav-item"><a class="rd-nav-link" href="kampanyalar.jsp">Kampanyalar</a>
                      </li>-->
                      <%
                            boolean loginSuccess = false;
                            Cookie cookie= null;
                            Cookie[] cookies= null;
                            cookies= request.getCookies();
                            for(int i = 0; i < cookies.length; i++){
                                cookie= cookies[i];
                                if(cookie.getValue().equals(user.getSessionId())){
                                    loginSuccess = true;
                                    break;}
                            }
                            if(loginSuccess){
                      %>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="filmlerim.jsp">Filmlerim</a>
                      </li>
                      <li class="rd-nav-item">
                      <%                   
                          if(cookie.getValue().equals("erdal1")){
                      %>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="admin.jsp">Panel</a>
                      </li>
                      <%
                          }
                          else{
                      %>
                      <li class="rd-nav-item">
                            <div class="popup" onclick="myFunction()"><img src="images/basket.png" alt="basket">
                                <span class="popuptext" id="myPopup">
                                    <img  src="images/avatar2.jpg" alt="foto"></img>
                                </span>
                            </div>
                      </li>
                      <%
                              }
                          }
                          else{
                      %>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="login.jsp">Filmlerim</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="login.jsp">Giriş</a>
                      </li>
                      <%
                            }
                      %>
                    </ul>
                  </div>
                </div>
                <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                  <div class="project-hamburger"><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span>
                  </div>
                </div>
                <div class="rd-navbar-project">
                  <div class="rd-navbar-project-header">
                    <h5 class="rd-navbar-project-title">Sepetim</h5>
                    <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-close" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                      <div class="project-close"><span></span><span></span></div>
                    </div>
                  </div>
                  <div class="rd-navbar-project-content rd-navbar-content">
                    <div>
                      <div class="row gutters-20" data-lightgallery="group">
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-1-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-1-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-2-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-2-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-3-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-3-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-4-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-4-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-5-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-5-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                        <div class="col-6">
                          <!-- Thumbnail Creative-->
                          <article class="thumbnail thumbnail-creative"><a href="images/project-6-1200x800-original.jpg" data-lightgallery="item">
                              <div class="thumbnail-creative-figure"><img src="images/project-6-195x164.jpg" alt="" width="195" height="164"/>
                              </div>
                              <div class="thumbnail-creative-caption"><span class="icon thumbnail-creative-icon linearicons-magnifier"></span></div></a></article>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </header>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/basket.js"></script>
    <!-- coded by Himic-->
  </body>
</html>