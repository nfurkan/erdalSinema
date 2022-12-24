<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.erdal.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<jsp:useBean id="user" class="com.erdal.clsUser" scope="session"/>
<html>
    <head>
    <title>Giriş Yap</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:100,300,300i,400,500,600,700,900%7CRaleway:500">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/fonts.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/basket.css">
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
                  <div class="rd-navbar-brand"><a class="brand" href="index.jsp"><img class="brand-logo-dark" src="images/erdallogo.png" alt=""/></a></div>
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
                      <li class="rd-nav-item"><a class="rd-nav-link" href="vizyondakiler.jsp">Vizyondakiler</a>
                      </li>
                      <!--<li class="rd-nav-item"><a class="rd-nav-link" href="kampanyalar.jsp">Kampanyalar</a>
                      </li>-->
                      <li class="rd-nav-item"><a class="rd-nav-link" href="filmlerim.jsp">Filmlerim</a>
                      
                      </li>
                      <li class="rd-nav-item active"><a class="rd-nav-link" href="#">Giriş</a>
                      </li>
                    </ul>
                  </div>
                </div>
            </div>
        </div>
    </div>
    <section class="section section-sm section-first bg-default">
        <div class="container">
          <h3 class="heading-3">Giriş Yap</h3>
          <form class="rd-form rd-mailform form-style-1" data-form-output="form-output-global" data-form-type="contact" method="post" action="login.jsp">
            <div class="row row-20 gutters-20">
              <div class="col-md-6 col-lg-4 oh-desktop">
                <div class="form-wrap wow slideInDown">
                  <input class="form-input" id="userMail" type="email" name="loginMail" data-constraints="@Email @Required">
                  <%String mail = request.getParameter("loginMail");%>
                  <label class="form-label" for="userMail">E-Mail</label>
                </div>
              </div>
              <div class="col-md-6 col-lg-4 oh-desktop">
                <div class="form-wrap wow slideInUp">
                  <input class="form-input" id="userPassword" type="password" name="loginPassword" data-constraints="@Required">
                  <%String password = request.getParameter("loginPassword");%>
                  <label class="form-label" for="userPassword">Şifre</label>
                </div>
              </div>
            </div>
            <div class="group-custom-1 group-middle oh-desktop">
              <button class="button button-lg button-primary button-winona wow fadeInRight" type="submit">Giriş Yap</button>
              <!-- Quote Classic-->
              <article class="quote-classic quote-classic-3 wow slideInDown">
                <div class="quote-classic-text">
                  <p class="q">Lütfen bütün alanları doğru ve eksiksiz girdiğinizden emin olun.</p>
                </div>
              </article>
            </div>
          </form><br><br><br>
          <h3 class="heading-3">Kayıt Ol</h3><br><br>
          <article class="quote-classic quote-classic-3 wow slideInDown">
            <div class="quote-classic-text">
                <p class="q">Siz de Erdal Sinemaya katılın!</p>
            </div>
          </article><br><br>
          <form action='register.jsp' method='post'>
          <button class="button button-lg button-primary button-winona wow fadeInRight" type="submit">Kayıt Ol</button>
          </form>
        </div>
      </section>
    <%
        clsUser newUser = new clsUser();
        if(mail != null && password != null){
        
            if(newUser.checkUser(mail, password)){
                clsUser admin;
                admin = newUser.getUser(mail);
                
                Cookie cookie = new Cookie("SESSIONID",user.sessionIdGenerator(mail));
                user.setSessionId(user.sessionIdGenerator(mail));
                cookie.setMaxAge(60*60*24);
                response.addCookie(cookie);
                
                if(admin.getName().equals("erdal"))
                response.sendRedirect(request.getContextPath() + "/admin.jsp");
                else
                response.sendRedirect(request.getContextPath() + "/index.jsp");
                
            }
            else{
                response.sendRedirect(request.getContextPath() + "/login.jsp");
            }
        }
    %>
    <script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
    <script src="js/basket.js"></script>
    </body>
</html>
