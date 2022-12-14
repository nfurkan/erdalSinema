<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<jsp:useBean id="cart" class="com.erdal.clsCart" scope="session"/>
<jsp:useBean id="movieSession" class="com.erdal.clsMovieSessions" scope="session"/>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Ana Sayfa</title>
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
    <link rel="stylesheet" href="css/cart.css">
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
                          <div class="unit-body"><a class="phone" href="tel:#">Erdal ??leti??im Hatt?? - 05XX-XXX-XX-XX</a></div>
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
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="index.jsp">Ana Sayfa</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="vizyondakiler.jsp">Vizyondakiler</a>
                      </li>
                     <!-- <li class="rd-nav-item"><a class="rd-nav-link" href="kampanyalar.jsp">Kampanyalar</a>
                      </li>-->
                      <%
                            boolean loginSuccess = false;
                            boolean isAdmin = false;
                            Cookie cookie= null;
                            Cookie[] cookies= null;
                            cookies = request.getCookies();
                            if(cookies != null){
                            for(int i = 0; i < cookies.length; i++){
                                cookie= cookies[i];
                                if(cookie.getName().equals("SESSIONID") && cookie.getValue() != "" ){
                                    loginSuccess = true;
                                    if(cookie.getValue().equals("1erdal")){
                                    isAdmin = true;}
                                    break;}
                            }
                            if(loginSuccess){
                      %>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="filmlerim.jsp">Filmlerim</a>
                      </li>
                      <%            
                            if(isAdmin){
                      %>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="panel.jsp">Panel</a>
                      </li>
                      <%
                            }
                            else{
                      %>
                      <li class="rd-nav-item">
                            <div class="popup" onclick="myFunction()"><img src="images/basket.png" alt="basket">
                                <span class="popuptext" id="myPopup">
                                    <div class="movie-tickets">
                                      <%String[] cartMovieNames, cartMoviePictureNames;
                                        cartMovieNames = cart.getCartMovieNames();
                                        cartMoviePictureNames = cart.getCartMoviePictureNames();
                                        if(!(cartMovieNames[0].equals("")) && !(cartMoviePictureNames[0].equals(""))){
                                        for(int i = 0; i < cartMovieNames.length; i++){
                                      %>
                                        <div class="row movie-ticket">
                                            <img class="cartimg" src="images/<%out.println(cartMoviePictureNames[i]);%>-vizyondakiler.jpg" alt="foto"></img>
                                            <span class="movie-info">
                                                <span class="movie-name"><%out.println(cartMovieNames[i]);%></span>
                                                <button class="decbuttons" type="button" value="dec">-</button>
                                                <span class="ticketcount"> 1 </span>
                                                <button class="addbuttons" type="button" value="add">+</button> 
                                                <span class="movie-price">30TL</span> 
                                            </span>
                                         </div>
                                      <%}
                                      }%>
                                    </div>
                                    <div class="priceinfo">
                                        <span id="toplamfiyat"> Toplam Fiyat: <span class="fiyat"><%out.println(cart.getTotalPrice());%></span></span>
                                        <button class="cartbutton" type="button" value="payment">??de</button>
                                        <button class="cancelbutton" type="button" value="payment">Sil</button>
                                    </div>
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
                      <li class="rd-nav-item"><a class="rd-nav-link" href="login.jsp">Giri??</a>
                      </li>
                      <%
                            }
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
      <section class="section section-last bg-default">
          <br>
          <br>
          <h3 class="oh-desktop"><span class="d-inline-block wow slideInUp">??OK SATANLAR</span></h3>
          <br>
          <br>
        <div class="container-fluid container-inset-0 isotope-wrap">
          <div class="row row-10 gutters-10 isotope" data-isotope-layout="masonry" data-isotope-group="gallery" data-lightgallery="group">
            <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInLeft"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(2).getPictureName());%>-coksatanlar.jpg" alt="" width="310" height="585"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="#"><%out.println(movies.get(2).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(2).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
            <div class="col-xs-6 col-sm-8 col-xl-4 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary thumbnail-mary-big wow slideInRight"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(3).getPictureName());%>-coksatanlar.jpg" alt="" width="631" height="587"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="vizyondakiler.jsp#tabs-4-2"><%out.println(movies.get(3).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(3).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
            <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInDown"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(4).getPictureName());%>-coksatanlar.jpg" alt="" width="311" height="289"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="#"><%out.println(movies.get(4).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(4).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
            <div class="col-xs-6 col-sm-8 col-xl-4 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary wow slideInUp"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(0).getPictureName());%>-coksatanlar.jpg" alt="" width="631" height="289"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="#"><%out.println(movies.get(0).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(0).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
            <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInUp"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(1).getPictureName());%>-coksatanlar.jpg" alt="" width="311" height="289"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="#"><%out.println(movies.get(1).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(1).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
            <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInRight"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(5).getPictureName());%>-coksatanlar.jpg" alt="" width="311" height="289"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="#"><%out.println(movies.get(5).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(5).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
            <div class="col-xs-6 col-sm-4 col-xl-2 isotope-item oh-desktop">
              <!-- Thumbnail Mary-->
              <article class="thumbnail thumbnail-mary thumbnail-mary-2 wow slideInLeft"><a class="thumbnail-mary-figure" href="vizyondakiler.jsp"><img src="images/<%out.println(movies.get(6).getPictureName());%>-coksatanlar.jpg" alt="" width="311" height="289"/></a>
                <div class="thumbnail-mary-caption">
                  <div>
                    <h6 class="thumbnail-mary-title"><a href="#"><%out.println(movies.get(6).getName());%></a></h6>
                    <div class="thumbnail-mary-location"><%out.println(movies.get(6).getCategory());%></div>
                  </div>
                </div>
              </article>
            </div>
          </div>
        </div>
      </section>
      
      <!-- Our Team-->
      <section class="section section-lg section-bottom-md-70 bg-default">
        <div class="container">
          <h3 class="oh"><span class="d-inline-block wow slideInUp" data-wow-delay="0s">??OK YAKINDA</span></h3>
          <div class="row row-lg row-40 justify-content-center">
           <%for(int i = 0; i < movies.size(); i++){
           if(movies.get(i).getPublished() == 0){%>
            <div class="col-sm-6 col-lg-3 wow fadeInLeft" data-wow-delay=".2s" data-wow-duration="1s">
              <!-- Team Modern-->
              <article class="team-modern"><a class="team-modern-figure" href="#"><img src="images/<%out.println(movies.get(i).getPictureName());%>-cokyakinda.jpg" alt="" width="270" height="236"/></a>
                <div class="team-modern-caption">
                    <h6 class="team-modern-name"><a href="#"><%out.println(movies.get(i).getName());%></a></h6>
                  <div class="team-modern-status"><%out.println(movies.get(i).getPublishDate());%></div>
                </div>
              </article>
            </div>
            <%}}%>
          </div>
        </div>
      </section>
     
      <section>
        <!-- Swiper Pagination-->
        <div class="swiper-pagination" data-bullet-custom="true"></div>
        <!-- Swiper Navigation-->
        <div class="swiper-button-prev">
          <div class="preview">
            <div class="preview__img"></div>
          </div>
          <div class="swiper-button-arrow"></div>
        </div>
        <div class="swiper-button-next">
          <div class="swiper-button-arrow"></div>
          <div class="preview">
            <div class="preview__img"></div>
          </div>
        </div>
      </section>
      <!-- What We Offer-->
      <section class="section section-md bg-default">
        <div class="container">
          <h3 class="oh-desktop"><span class="d-inline-block wow slideInDown">F??LM T??RLER??</span></h3>
          <div class="row row-md row-30">
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInUp">
                  <div class="services-terri-figure"><img src="images/cokyakinda-background.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-gun"></span>
                    <h5 class="services-terri-title"><a href="#">Aksiyon</a></h5> <!-- 1.s?ra 1.resim -->
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInDown">
                  <div class="services-terri-figure"><img src="images/cokyakinda-background.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-dna"></span>
                    <h5 class="services-terri-title"><a href="#">Bilim-Kurgu</a></h5> <!-- 1.s?ra 2.resim -->
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInUp">
                  <div class="services-terri-figure"><img src="images/cokyakinda-background.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-speed-fast"></span>
                    <h5 class="services-terri-title"><a href="#">Macera</a></h5> <!-- 1.s?ra 3.resim -->
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInDown">
                  <div class="services-terri-figure"><img src="images/cokyakinda-background.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-skull"></span>
                    <h5 class="services-terri-title"><a href="#">??iddet</a></h5> <!-- 2.s?ra 1.resim -->
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInUp">
                  <div class="services-terri-figure"><img src="images/cokyakinda-background.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-saw"></span>
                    <h5 class="services-terri-title"><a href="#">Korku</a></h5> <!-- 2.s?ra 2.resim -->
                  </div>
                </article>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4">
              <div class="oh-desktop">
                <!-- Services Terri-->
                <article class="services-terri wow slideInDown">
                  <div class="services-terri-figure"><img src="images/cokyakinda-background.jpg" alt="" width="370" height="278"/>
                  </div>
                  <div class="services-terri-caption"><span class="services-terri-icon linearicons-sad"></span>
                    <h5 class="services-terri-title"><a href="#">Drama</a></h5> <!-- 2.s?ra 3.resim -->
                  </div>
                </article>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Section Services  Last section-->
      <section class="section section-sm bg-default">
        <div class="container">
          <div class="owl-carousel owl-style-11 dots-style-2" data-items="1" data-sm-items="1" data-lg-items="2" data-xl-items="4" data-margin="30" data-dots="true" data-mouse-drag="true" data-rtl="true">
            <article class="box-icon-megan wow fadeInUp">
              <div class="box-icon-megan-header">
                <div class="box-icon-megan-icon linearicons-bag"></div>
              </div>
              <h5 class="box-icon-megan-title"><a href="#">Online Rezervasyon</a></h5>
              <p class="box-icon-megan-text">??stedi??iniz zaman koltu??unuzu ay??rtabilirsiniz!</p>
            </article>
            <article class="box-icon-megan wow fadeInUp" data-wow-delay=".05s">
              <div class="box-icon-megan-header">
                <div class="box-icon-megan-icon linearicons-map2"></div>
              </div>
              <h5 class="box-icon-megan-title"><a href="#">Ferah Salonlar??m??z</a></h5>
              <p class="box-icon-megan-text">Sinema salonlar??m??z geni??, havadar ve konforludur!</p>
            </article>
            <article class="box-icon-megan wow fadeInUp" data-wow-delay=".1s">
              <div class="box-icon-megan-header">
                <div class="box-icon-megan-icon linearicons-radar"></div>
              </div>
              <h5 class="box-icon-megan-title"><a href="#">G??ncel Teknolojiler</a></h5>
              <p class="box-icon-megan-text">Kulland??????m??z g??ncel teknolojilerle birlikte film seyriniz e??siz bir deneyime d??n????ecek!</p>
            </article>
            <article class="box-icon-megan wow fadeInUp" data-wow-delay=".15s">
              <div class="box-icon-megan-header">
                <div class="box-icon-megan-icon linearicons-thumbs-up"></div>
              </div>
              <h5 class="box-icon-megan-title"><a href="#">M????teri Memnuniyeti</a></h5>
              <p class="box-icon-megan-text">7-24 deste??e haz??r??z!</p>
            </article>
          </div>
        </div>
      </section>
        <!-- What We Offer-->
      <!--<section class="section section-xl bg-default">
        <div class="container">
          <h3 class="wow fadeInLeft">??ZLEY??C??LER??M??Z NE D??YOR?</h3>
        </div>
        <div class="container container-style-1">
          <div class="owl-carousel owl-style-12" data-items="1" data-sm-items="2" data-lg-items="3" data-margin="30" data-xl-margin="45" data-autoplay="true" data-nav="true" data-center="true" data-smart-speed="400">
            <!-- Quote Tara
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Ger??ekten de sevdi??im t??rler aras??ndan bir film se??ilmi??, bu hizmetten ??ok memnun kald??m!</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-6-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullan??c?? - 1</h6>
              <div class="quote-tara-status">??ye</div>
            </article>
            <!-- Quote Tara
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Normalde ??ok zor film be??enirim ama buna bay??ld??m! Tam zevkime hitap ediyor...</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-8-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullan??c?? - 2</h6>
              <div class="quote-tara-status">??ye</div>
            </article>
            <!-- Quote Tara
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Bazen film se??mekte ??ok zorlan??yorum, sa??olsun erdal sinema benim yerime se??mi??, m??kemmel!</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-7-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullan??c?? - 3</h6>
              <div class="quote-tara-status">??ye</div>
            </article>
            <!-- Quote Tara
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Film sevdi??im t??rlere hitap ediyordu ama s??k??ld??m...</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-9-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullan??c?? - 4</h6>
              <div class="quote-tara-status">??ye</div>
            </article>
          </div>
        </div>
      </section>-->
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/cart.js"></script>
    <!-- coded by Himic-->
  </body>
</html>