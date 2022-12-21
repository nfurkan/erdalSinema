<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.erdal.*"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<html class="wide wow-animation" lang="en">
  <head>
    <title>Vizyondakiler</title>
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
                  <div class="rd-navbar-brand"><a class="brand" href="index.jsp"><img class="brand-logo-dark" src="images/erdallogo.png" alt="" width="198" height="66"/></a></div>
                </div>
                <div class="rd-navbar-right rd-navbar-nav-wrap">
                  <div class="rd-navbar-aside">
                    <ul class="rd-navbar-contacts-2">
                      <li>
                        <div class="unit unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-phone"></span></div>
                          <div class="unit-body"><a class="phone" href="tel:#">erdal</a></div>
                        </div>
                      </li>
                      <li>
                        <div class="unit unit-spacing-xs">
                          <div class="unit-left"><span class="icon mdi mdi-map-marker"></span></div>
                          <div class="unit-body"><a class="address" href="#">erdal</a></div>
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
                      <li class="rd-nav-item"><a class="rd-nav-link" href="index.jsp">Ana Sayfa</a>
                      </li>
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="#">Vizyondakiler</a>
                      </li>
                      <!--<li class="rd-nav-item"><a class="rd-nav-link" href="kampanyalar.jsp">Kampanyalar</a>
                      </li>-->
                      <li class="rd-nav-item"><a class="rd-nav-link" href="filmlerim.jsp">Filmlerim</a>
                      </li>
                      <li class="rd-nav-item"><a class="rd-nav-link" href="login.jsp">Giriş</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <div class="rd-navbar-project-hamburger rd-navbar-project-hamburger-open rd-navbar-fixed-element-1" data-multitoggle=".rd-navbar-inner" data-multitoggle-blur=".rd-navbar-wrap" data-multitoggle-isolate="data-multitoggle-isolate">
                  <div class="project-hamburger"><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span><span class="project-hamburger-arrow"></span>
                  </div>
                </div>
                <div class="rd-navbar-project">
                  <div class="rd-navbar-project-header">
                    <h5 class="rd-navbar-project-title">Gallery</h5>
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
      <!-- parallax top-->
      <!-- Breadcrumbs -->
      <section class="bg-gray-7">
        <div class="breadcrumbs-custom box-transform-wrap context-dark">
          <div class="container">
            <h3 class="breadcrumbs-custom-title">VİZYONDA NE VAR?</h3>
            <div class="breadcrumbs-custom-decor"></div>
          </div>
          <div class="box-transform" style="background-image: url(images/film-background.jpg);"></div>
        </div>
        <div class="container">
          <ul class="breadcrumbs-custom-path">
            <li><a href="index.jsp">ANA SAYFAYA DÖN</a></li>
            <li class="active">VİZYONDAKİLER</li>
          </ul>
        </div>
      </section>
      <section class="section section-lg bg-default">
        <div class="container">
          <div class="tabs-custom row row-50 justify-content-center flex-lg-row-reverse text-center text-md-left" id="tabs-4">
            <div class="col-lg-4 col-xl-3">
              <h5 class="text-spacing-200 text-capitalize">FİLM LİSTESİ</h5>
              <ul class="nav list-category list-category-down-md-inline-block">
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay="0s"><a class="active" href="#tabs-4-1" data-toggle="tab">
                <%out.println(movies.get(0).getName());%>
                </a></li>
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay=".1s"><a href="#tabs-4-2" data-toggle="tab">
                <%out.println(movies.get(1).getName());%>
                </a></li>
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay=".2s"><a href="#tabs-4-3" data-toggle="tab">
                <%out.println(movies.get(2).getName());%>    
                </a></li>
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay=".3s"><a href="#tabs-4-4" data-toggle="tab">
                <%out.println(movies.get(3).getName());%>    
                </a></li>
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay=".3s"><a href="#tabs-4-5" data-toggle="tab">
                <%out.println(movies.get(4).getName());%>    
                </a></li>
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay=".3s"><a href="#tabs-4-6" data-toggle="tab">
                <%out.println(movies.get(5).getName());%>    
                </a></li>
                <li class="list-category-item wow fadeInRight" role="presentation" data-wow-delay=".3s"><a href="#tabs-4-7" data-toggle="tab">
                <%out.println(movies.get(6).getName());%>    
                </a></li>
              </ul><a class="button button-xl button-primary button-winona" href="index.jsp">BİLET AL</a>
            </div>
            <div class="col-lg-8 col-xl-9">
              <!-- Tab panes-->
              <div class="tab-content tab-content-1">
                <div class="tab-pane fade show active" id="tabs-4-1">
                  <h4><%out.println(movies.get(0).getName());%></h4>
                  <p><%out.println(movies.get(0).getSummary());%></p>
                  <p>Gösterime giriş tarihi: <%out.println(movies.get(0).getPublishDate());%></p><img src="images/<%out.println(movies.get(0).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(0).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(0).getCategory());%></p>
                </div>
                <div class="tab-pane fade" id="tabs-4-2">
                  <h4><%out.println(movies.get(1).getName());%></h4>
                  <p><%out.println(movies.get(1).getSummary());%></p>
                  <p>Gösterime giriş tarihi: </p><img src="images/<%out.println(movies.get(1).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(1).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(1).getCategory());%></p>
                </div>
                <div class="tab-pane fade" id="tabs-4-3">
                  <h4><%out.println(movies.get(2).getName());%></h4>
                  <p><%out.println(movies.get(2).getSummary());%></p>
                  <p>Gösterime giriş tarihi: <%out.println(movies.get(2).getPublishDate());%></p><img src="images/<%out.println(movies.get(2).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(2).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(2).getCategory());%></p>
                </div>
                <div class="tab-pane fade" id="tabs-4-4">
                  <h4><%out.println(movies.get(3).getName());%></h4>
                  <p><%out.println(movies.get(3).getSummary());%></p>
                  <p>Gösterime giriş tarihi: <%out.println(movies.get(3).getPublishDate());%></p><img src="images/<%out.println(movies.get(3).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(3).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(3).getCategory());%></p>
                </div>
                  <div class="tab-pane fade" id="tabs-4-5">
                  <h4><%out.println(movies.get(4).getName());%></h4>
                  <p><%out.println(movies.get(4).getSummary());%></p>
                  <p>Gösterime giriş tarihi: <%out.println(movies.get(4).getPublishDate());%></p><img src="images/<%out.println(movies.get(4).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(4).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(4).getCategory());%></p>
                </div>
                  <div class="tab-pane fade" id="tabs-4-6">
                  <h4><%out.println(movies.get(5).getName());%></h4>
                  <p><%out.println(movies.get(5).getSummary());%></p>
                  <p>Gösterime giriş tarihi: <%out.println(movies.get(5).getPublishDate());%></p><img src="images/<%out.println(movies.get(5).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(5).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(5).getCategory());%></p>
                </div>
                  <div class="tab-pane fade" id="tabs-4-7">
                  <h4><%out.println(movies.get(6).getName());%></h4>
                  <p><%out.println(movies.get(6).getSummary());%></p>
                  <p>Gösterime giriş tarihi: <%out.println(movies.get(6).getPublishDate());%></p><img src="images/<%out.println(movies.get(6).getPictureName());%>" alt="" width="835" height="418"/>
                  <p>Yönetmeni: <%out.println(movies.get(6).getDirector());%></p>
                  <p>Kategori: <%out.println(movies.get(6).getCategory());%></p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      
       <!-- Our Shop-->
      <section class="section section-lg bg-default">
        <div class="container">
          <h3 class="oh-desktop"><span class="d-inline-block wow slideInUp">ÇOK SATANLAR</span></h3>
          <div class="row row-lg row-30">
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft" data-wow-delay=".15s">
                <div class="product-figure"><img src="images/product-1-161x162.png" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                </div>
                <h6 class="product-title">Yakında Film - 1</h6>
                <div class="product-price-wrap">
                  <div class="product-price">Yayın Tarihi</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Bilet Al</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">Film'e Göz At</a></div>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft" data-wow-delay=".1s">
                <div class="product-figure"><img src="images/product-2-161x162.png" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                </div>
                <h6 class="product-title">Yakında Film - 2</h6>
                <div class="product-price-wrap">
                  <div class="product-price">Yayın Tarihi</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Bilet Al</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">Film'e Göz At</a></div>
                </div><span class="product-badge product-badge-new">Yeni</span>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft" data-wow-delay=".05s">
                <div class="product-figure"><img src="images/product-3-161x162.png" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star text-gray-13"></span>
                </div>
                <h6 class="product-title">Yakında Film - 3</h6>
                <div class="product-price-wrap">
                  <div class="product-price">Yayın Tarihi</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Bilet Al</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">Film'e Göz At</a></div>
                </div>
              </article>
            </div>
            <div class="col-sm-6 col-lg-4 col-xl-3">
              <!-- Product-->
              <article class="product wow fadeInLeft">
                <div class="product-figure"><img src="images/product-4-161x162.png" alt="" width="161" height="162"/>
                </div>
                <div class="product-rating"><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span><span class="mdi mdi-star"></span>
                </div>
                <h6 class="product-title">Yakında Film - 4</h6>
                <div class="product-price-wrap">
                  <!--<div class="product-price product-price-old">$40.00</div>-->
                  <div class="product-price">Yayın Tarihi</div>
                </div>
                <div class="product-button">
                  <div class="button-wrap"><a class="button button-xs button-primary button-winona" href="#">Bilet Al</a></div>
                  <div class="button-wrap"><a class="button button-xs button-secondary button-winona" href="#">Film'e Göz At</a></div>
                </div><span class="product-badge product-badge-sale">Kampanya</span>
              </article>
            </div>
          </div>
        </div>
      </section>
      <section class="section section-lg bg-gray-100 text-left section-relative">
        <div class="container">
          <div class="row row-60 justify-content-center justify-content-xxl-between">
            <div class="col-lg-6 col-xxl-5 position-static">
              <h3>FİLM ÖZETİNİZ</h3>
              <div class="tabs-custom" id="tabs-5">
                <div class="tab-content tab-content-1">
                  <div class="tab-pane fade" id="tabs-5-1">
                    <h5 class="font-weight-normal text-transform-none text-spacing-75">XX/XX/XXXX tarihinde şu filmi izlediniz</h5>
                    <p>FİLM ADI - KATEGORİSİ</p>
                  </div>
                  <div class="tab-pane fade" id="tabs-5-2">
                    <h5 class="font-weight-normal text-transform-none text-spacing-75">XX/XX/XXXX tarihinde şu filmi izlediniz</h5>
                    <p>FİLM ADI - KATEGORİSİ</p>
                  </div>
                  <div class="tab-pane fade" id="tabs-5-3">
                    <h5 class="font-weight-normal text-transform-none text-spacing-75">XX/XX/XXXX tarihinde şu filmi izlediniz</h5>
                    <p>FİLM ADI - KATEGORİSİ</p>
                  </div>
                  <div class="tab-pane fade show active" id="tabs-5-4">
                    <h5 class="font-weight-normal text-transform-none text-spacing-75">Sizin için seçtiğimiz film:</h5>
                    <p>FİLM ADI - KATEGORİSİ</p>
                  </div>
                </div>
                <div class="list-history-wrap">
                  <ul class="nav list-history">
                    <li class="list-history-item" role="presentation"><a href="#tabs-5-1" data-toggle="tab">
                        <div class="list-history-circle"></div>2005</a></li>
                    <li class="list-history-item" role="presentation"><a href="#tabs-5-2" data-toggle="tab">
                        <div class="list-history-circle"></div>2012</a></li>
                    <li class="list-history-item" role="presentation"><a href="#tabs-5-3" data-toggle="tab">
                        <div class="list-history-circle"></div>2015</a></li>
                    <li class="list-history-item" role="presentation"><a class="active" href="#tabs-5-4" data-toggle="tab">
                        <div class="list-history-circle"></div>2019</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-md-9 col-lg-6 position-static index-1">
              <div class="bg-image-right-1 bg-image-right-lg"><img src="images/our_history-1110x710.jpg" alt="" width="1110" height="710"/>
                
                <div class="box-transform" style="background-image: url(images/our_history-1110x710.jpg);"></div>
              </div>
            </div>
          </div>
        </div>
      </section>

        <!-- What We Offer-->
      <section class="section section-xl bg-default">
        <div class="container">
          <h3 class="wow fadeInLeft">İZLEYİCİLERİMİZ NE DİYOR?</h3>
        </div>
        <div class="container container-style-1">
          <div class="owl-carousel owl-style-12" data-items="1" data-sm-items="2" data-lg-items="3" data-margin="30" data-xl-margin="45" data-autoplay="true" data-nav="true" data-center="true" data-smart-speed="400">
            <!-- Quote Tara-->
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Gerçekten de sevdiğim türler arasından bir film seçilmiş, bu hizmetten çok memnun kaldım!</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-6-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullanıcı - 1</h6>
              <div class="quote-tara-status">Üye</div>
            </article>
            <!-- Quote Tara-->
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Normalde çok zor film beğenirim ama buna bayıldım! Tam zevkime hitap ediyor...</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-8-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullanıcı - 2</h6>
              <div class="quote-tara-status">Üye</div>
            </article>
            <!-- Quote Tara-->
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Bazen film seçmekte çok zorlanıyorum, sağolsun erdal sinema benim yerime seçmiş, mükemmel!</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-7-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullanıcı - 3</h6>
              <div class="quote-tara-status">Üye</div>
            </article>
            <!-- Quote Tara-->
            <article class="quote-tara">
              <div class="quote-tara-caption">
                <div class="quote-tara-text">
                  <p class="q">Film sevdiğim türlere hitap ediyordu ama sıkıldım...</p>
                </div>
                <div class="quote-tara-figure"><img src="images/user-9-115x115.jpg" alt="" width="115" height="115"/>
                </div>
              </div>
              <h6 class="quote-tara-author">Kullanıcı - 4</h6>
              <div class="quote-tara-status">Üye</div>
            </article>
          </div>
        </div>
      </section>

      <!--
      <section class="section section-lg bg-default text-md-left">
        <div class="container">
          <div class="row row-60 justify-content-center flex-lg-row-reverse">
            <div class="col-md-8 col-lg-6 col-xl-5">
              <div class="offset-left-xl-70">
                <h3 class="heading-3">What People Say</h3>
                <div class="slick-quote">
                  <!-- Slick Carousel--
                  <div class="slick-slider carousel-parent" data-autoplay="true" data-swipe="true" data-items="1" data-child="#child-carousel-5" data-for="#child-carousel-5" data-slide-effect="true">
                    <div class="item">
                      <!-- Quote Modern--
                      <article class="quote-modern">
                        <h5 class="quote-modern-text"><span class="q">Torus accelerares, tanquam ferox cacula. Fluctuss experimentum in burdigala! Ubi est peritus classis? Peregrinatione superbe ducunt ad magnum verpa.</span></h5>
                        <h5 class="quote-modern-author">Stephen Adams,</h5>
                        <p class="quote-modern-status">Regular Client</p>
                      </article>
                    </div>
                    <div class="item">
                      <!-- Quote Modern--
                      <article class="quote-modern">
                        <h5 class="quote-modern-text"><span class="q">Gluten, fluctus, et galatae. Germanus classiss ducunt ad brodium. Pol, a bene cedrium. Tabess unda in neuter avenio! Orexiss sunt adelphiss de rusticus parma.</span></h5>
                        <h5 class="quote-modern-author">Sam Peterson,</h5>
                        <p class="quote-modern-status">Regular Client</p>
                      </article>
                    </div>
                    <div class="item">
                      <!-- Quote Modern--
                      <article class="quote-modern">
                        <h5 class="quote-modern-text"><span class="q">Pol, silva! Grandis contencios ducunt ad torus. Monss congregabo in nobilis tectum! Velox, fatalis victrixs sapienter talem de emeritis, festus torus.</span></h5>
                        <h5 class="quote-modern-author">Jane McMillan,</h5>
                        <p class="quote-modern-status">Regular Client</p>
                      </article>
                    </div>
                    <div class="item">
                      <!-- Quote Modern--
                      <article class="quote-modern">
                        <h5 class="quote-modern-text"><span class="q">Fluctuss sunt eras de neuter plasmator. Heuretes noster brabeuta est. Nixus, visus, et mensa. Primus, magnum tatas rare locus de altus, camerarius clabulare.</span></h5>
                        <h5 class="quote-modern-author">Will Jones,</h5>
                        <p class="quote-modern-status">Regular Client</p>
                      </article>
                    </div>
                  </div>
                  <div class="slick-slider child-carousel" id="child-carousel-5" data-arrows="true" data-for=".carousel-parent" data-items="4" data-sm-items="4" data-md-items="4" data-lg-items="4" data-xl-items="4" data-slide-to-scroll="1">
                    <div class="item"><img class="img-circle" src="images/team-5-83x83.jpg" alt="" width="83" height="83"/>
                    </div>
                    <div class="item"><img class="img-circle" src="images/team-6-83x83.jpg" alt="" width="83" height="83"/>
                    </div>
                    <div class="item"><img class="img-circle" src="images/team-7-83x83.jpg" alt="" width="83" height="83"/>
                    </div>
                    <div class="item"><img class="img-circle" src="images/team-8-83x83.jpg" alt="" width="83" height="83"/>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-xl-7"><img src="images/wp-say-669x447.jpg" alt="" width="669" height="447"/>
            </div>
          </div>
        </div>
      </section>

   
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- Javascript-->
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/basket.js"></script>
  </body>
</html>