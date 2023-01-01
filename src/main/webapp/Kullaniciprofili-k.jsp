
<%@page import="tumani.kullaniciBorcEkle"%>
<%@page import="java.util.ArrayList"%>
<%@page import="tumani.Borclar"%>
<%@page import="tumani.Kullanici"%>
<% 
if(session.getAttribute("yoneticiEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<%request.setCharacterEncoding("utf-8");%>
<% String email=(String)session.getAttribute("kullaniciEmail");%>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
    
  
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>TU-MANİ</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="icon" href="images/favicon.png" type="image/x-icon">
            <link rel="stylesheet" href="css/bootstrap.min.css">
                <link rel="stylesheet" href="css/normalize.css">
                    <link rel="stylesheet" href="css/scrollbar.css">
                        <link rel="stylesheet" href="css/fontawesome/fontawesome-all.css">
                            <link rel="stylesheet" href="css/font-awesome.min.css">
                                <link rel="stylesheet" href="css/owl.carousel.min.css">
                                    <link rel="stylesheet" href="css/jquery-ui.css">
                                        <link rel="stylesheet" href="css/linearicons.css">
                                            <link rel="stylesheet" href="css/tipso.css">
                                                <link rel="stylesheet" href="css/chosen.css">
                                                    <link rel="stylesheet" href="css/prettyPhoto.css">
                                                        <link rel="stylesheet" href="css/main.css">
                                                            <link rel="stylesheet" href="css/color.css">
                                                                <link rel="stylesheet" href="css/transitions.css">
                                                                    <link rel="stylesheet" href="css/responsive.css">
                                                                        <script src="js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
                                                                        </head>
                                                                        <body class="wt-login">
                                                                            <!--[if lt IE 8]>
                                                                                    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
                                                                            <![endif]-->
                                                                            <!-- Preloader Start -->
                                                                        <div class="preloader-outer">
                                                                            <div class="loader"></div>
                                                                        </div>
                                                                        <!-- Preloader End -->
                                                                        <!-- Wrapper Start -->
                                                                        <div id="wt-wrapper" class="wt-wrapper wt-haslayout">
                                                                            <!-- Content Wrapper Start -->
                                                                            <div class="wt-contentwrapper">
                                                                                <!-- Header Start -->
                                                                                <header id="wt-header" class="wt-header wt-headervtwo wt-haslayout">
                                                                                    <div class="wt-navigationarea">
                                                                                        <div class="container-fluid">
                                                                                            <div class="row">
                                                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                                                                                    
                                                                                                    <form class="wt-formtheme wt-formbanner wt-formbannervtwo">
                                                                                                        <style>
                                                                                                    p.tumanu {
                                                                                                        font-family: "Brush Script MT", cursive;
                                                                                                        font-size: 200%;
                                                                                                        color:#800000;
                                                                                                    }

                                                                                                </style>
                                                                                                </head>
                                                                                                <body>

                                                                                                    <br><p class="tumanu">Tu-Mani</p>
                                                                                                    </form>
                                                                                                    <div class="wt-rightarea">
                                                                                                        <nav id="wt-nav" class="wt-nav navbar-expand-lg">
                                                                                                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                                                                                                <i class="lnr lnr-menu"></i>
                                                                                                            </button>
                                                                                                            <div class="collapse navbar-collapse wt-navigation" id="navbarNav">
                                                                                                                <ul class="navbar-nav">
                                                                                                                    <li class="menu-item-has-children page_item_has_children">
                                                                                                                        <a href="Duyurular.jsp">Duyurular</a>
                                                                                                                    </li>
                                                                                                                    <li class="menu-item-has-children page_item_has_children">
                                                                                                                        <a href="Kullaniciprofili-k.jsp">Kişi Bilgileri</a>
                                                                                                                    </li>
                                                                                                                    <li class="menu-item-has-children page_item_has_children">
                                                                                                                        <a href="Giderlertakvimi-k.jsp">Giderler Takvimi</a>                                  
                                                                                                                    </li>
                                                                                                                    <li >
                                                                                                                        <a href="CikisYap.jsp">Çıkış Yap</a>
                                                                                                                    </li>
                                                                                                                    <div class="wt-userlogedin">
                                                                                                                        <figure class="wt-userimg">
                                                                                                                            <img src="images/save-2.png" alt="image description">
                                                                                                                        </figure>
                                                                                                                        <div class="wt-username">
                                                                                                                            <h3>TU-MANİ</h3>
                                                                                                                            
                                                                                                                    </div>
                                                                                                            </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                </header>
                                                                                                <!--Header End-->
                                                                                                <!--Inner Home Banner Start-->
                                                                                                <div class="wt-haslayout wt-innerbannerholder wt-innerbannerholdervtwo">
                                                                                                    <div class="container">
                                                                                                        <div class="row justify-content-md-center">
                                                                                                            <div class="col-xs-12 col-sm-12 col-md-8 push-md-2 col-lg-6 push-lg-3">
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <!--Inner Home End-->
                                                                                                <!--Main Start-->
                                                                                                <main id="wt-main" class="wt-main wt-haslayout wt-innerbgcolor">
                                                                                                    <!-- User Profile Start-->
                                                                                                    <div class="wt-main-section wt-paddingtopnull wt-haslayout">
                                                                                                        <div class="container">
                                                                                                            <div class="row">	
                                                                                                                <div class="col-12 col-sm-12 col-md-12 col-lg-12 float-left">
                                                                                                                    <div class="wt-userprofileholder">
                                                                                                                        <span class="wt-featuredtag"><img src="images/featured.png" alt="img description" data-tipso="Plus Member" class="template-content tipso_style"></span>
                                                                                                                        <div class="col-12 col-sm-12 col-md-12 col-lg-3 float-left">
                                                                                                                            <div class="row">
                                                                                                                                <div class="wt-userprofile">

                                                                                                                                    <div class="wt-title">
                                                                                                                                        <h3><i class="fa fa-check-circle"></i> 
                                                                                                                                            <%
                                                                                                                                            
                                                                                                                                            Kullanici k3 = new Kullanici();
                                                                                                                                            out.println(k3.kullaniciAdiCek(email));
                                                                                                                                            %></h3>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="col-12 col-sm-12 col-md-12 col-lg-9 float-left">
                                                                                                                            <div class="row">
                                                                                                                                <div class="wt-proposalhead wt-userdetails">
                                                                                                                                    <h2><%
                                                                                                                                        
                                                                                                                                      
                                                                                                                                        Kullanici kullanici = new Kullanici();
                                                                                                                                        out.println(kullanici.katNOCek(email) + " " + ".Kat");
                                                                                                                                        out.println(kullanici.daireNOCek(email) + " " + "Nolu daire");
                                                                                                                                        %></h2>
                                                                                                                                    <div class="wt-description">
                                                                                                                                        <p>Elektrik Borcu:<%
                                                                                                                                            Borclar b1 = new Borclar();
                                                                                                                                            kullaniciBorcEkle kullaniciBorc = new kullaniciBorcEkle();

                                                                                                                                            double toplamElektrik = b1.toplamElektrikBorcu();
                                                                                                                                            Kullanici k1 = new Kullanici();
                                                                                                                                            ArrayList<Kullanici> kullanicilar = k1.kullaniciIDCek();
                                                                                                                                            toplamElektrik = toplamElektrik / kullanicilar.size();

                                                                                                                                            kullaniciBorc.kullaniciElektrigiEkle(toplamElektrik);

                                                                                                                                            out.println(toplamElektrik);

                                                                                                                                            %></p>

                                                                                                                                        <p>Çalışan Borcu:
                                                                                                                                            <%                                                                                                            Borclar b2 = new Borclar();
                                                                                                                                                double toplamCalisan = b2.toplamCalisanBorcu();
                                                                                                                                                kullaniciBorcEkle kullaniciBorc2 = new kullaniciBorcEkle();
                                                                                                                                                Kullanici k2 = new Kullanici();
                                                                                                                                                ArrayList<Kullanici> kullanicilar2 = k2.kullaniciIDCek();
                                                                                                                                                toplamCalisan = toplamCalisan / kullanicilar2.size();
                                                                                                                                                kullaniciBorc2.kullaniciCalisanEkle(toplamCalisan);
                                                                                                                                                out.println(toplamCalisan);

                                                                                                                                            %></p>

                                                                                                                                        <p>Diğer Giderler Borcu:
                                                                                                                                            <%                                                                                                            Borclar b3 = new Borclar();

                                                                                                                                                double toplamDigerler = b3.toplamDigerGiderlerBorcu();
                                                                                                                                                kullaniciBorcEkle kullaniciBorc3 = new kullaniciBorcEkle();
                                                                                                                                                Kullanici k5 = new Kullanici();

                                                                                                                                                ArrayList<Kullanici> kullanicilar3 = k5.kullaniciIDCek();
                                                                                                                                                toplamDigerler = toplamDigerler / kullanicilar3.size();
                                                                                                                                                kullaniciBorc3.kullaniciDigerEkle(toplamDigerler);
                                                                                                                                                out.println(toplamDigerler);

                                                                                                                                            %></p>
                                                                                                                                        <p>Aidat Borcu:
                                                                                                                                            <% Borclar b4 = new Borclar();
                                                                                                                                                double toplamAidat = b4.toplamAidatBorcu();
                                                                                                                                                kullaniciBorcEkle kullaniciBorc4 = new kullaniciBorcEkle();
                                                                                                                                                Kullanici k4 = new Kullanici();
                                                                                                                                                ArrayList<Kullanici> kullanicilar4 = k4.kullaniciIDCek();
                                                                                                                                                toplamAidat = toplamAidat / kullanicilar4.size();
                                                                                                                                                kullaniciBorc4.kullaniciAidatEkle(toplamAidat);
                                                                                                                                                out.println(toplamAidat);


                                                                                                                                            %></p>
                                                                                                                                        <p>Ödeme Türü:Kredi Kartı </p>
                                                                                                                                        <p>Ödeme Durumu:Ödendi </p>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <!-- User Profile End-->
                                                                                                    </div>
                                                                                                </main>
                                                                                                <!--Main End-->
                                                                                                <!--Footer Start-->
                                                                                                <footer id="wt-footer" class="wt-footer wt-haslayout">
                                                                                                    <div class="wt-footerholder wt-haslayout">
                                                                                                        <div class="container">
                                                                                                            <div class="row">
                                                                                                                <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                                                                                                    <div class="wt-footerlogohold">
                                                                                                                        <strong class="wt-logo"><img src="images/14.png" alt="company logo here"></strong>
                                                                                                                        <div class="wt-description">
                                                                                                                        </div>
                                                                                                                        <ul class="wt-socialiconssimple wt-socialiconfooter">
                                                                                                                            <li class="wt-facebook"><a href="https://www.facebook.com/ostimteknikuniversitesi/"><i class="fa fa-facebook-f"></i></a></li>
                                                                                                                            <li class="wt-twitter"><a href="https://twitter.com/ostimteknikuniv?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><i class="fab fa-twitter"></i></a></li>
                                                                                                                            <li class="wt-youtube"><a href="https://www.youtube.com/channel/UCJr3uk1QO8ZsM-PiRI4-Oog"><i class="fab fa-youtube"></i></a></li>
                                                                                                                            <li class="wt-instagram"><a href="https://www.instagram.com/ostimteknikuniv/"><i class="fab fa-instagram"></i></a></li>
                                                                                                                        </ul>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="col-12 col-sm-6 col-md-3 col-lg-3">
                                                                                                                    <div class="wt-footercol wt-widgetcompany">
                                                                                                                        <div class="wt-fwidgettitle">
                                                                                                                            <h3>TU-MANİ</h3>
                                                                                                                        </div>
                                                                                                                        <ul class="wt-fwidgetcontent">
                                                                                                                        </ul>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </footer>
                                                                                                <!--Footer End-->
                                                                                            </div>
                                                                                            <!--Content Wrapper End-->
                                                                                        </div>
                                                                                        <!--Wrapper End-->
                                                                                        <script src="js/vendor/jquery-3.3.1.js"></script>
                                                                                        <script src="js/vendor/jquery-library.js"></script>
                                                                                        <script src="js/vendor/bootstrap.min.js"></script>
                                                                                        <script src="js/owl.carousel.min.js"></script>
                                                                                        <script src="js/chosen.jquery.js"></script>
                                                                                        <script src="js/tilt.jquery.js"></script>
                                                                                        <script src="js/scrollbar.min.js"></script>
                                                                                        <script src="js/prettyPhoto.js"></script>
                                                                                        <script src="js/jquery-ui.js"></script>
                                                                                        <script src="js/readmore.js"></script>
                                                                                        <script src="js/countTo.js"></script>
                                                                                        <script src="js/appear.js"></script>
                                                                                        <script src="js/tipso.js"></script>
                                                                                        <script src="js/jRate.js"></script>
                                                                                        <script src="js/main.js"></script>
                                                                                        </body>


                                                                                        </html>