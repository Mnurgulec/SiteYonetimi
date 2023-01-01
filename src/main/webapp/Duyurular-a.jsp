<%@page import="java.util.ArrayList"%>
<%@page import="tumani.Duyurular"%>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
 <% 
if(session.getAttribute("kullaniciEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
    
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%request.setCharacterEncoding("utf-8");%>
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
                                                                                                                                <a href="Duyurular-a.jsp">Duyurular</a>
                                                                                                                            </li>
                                                                                                                            <li class="menu-item-has-children page_item_has_children">
                                                                                                                                <a href="DuyuruEkle-a.jsp">Duyuru Ekle</a>
                                                                                                                            </li> 
                                                                                                                               <li class="menu-item-has-children page_item_has_children">
                                                                                                                        <a href="Kaydol.jsp">Kullanıcı Kaydet</a>
                                                                                                                    </li>
                                                                                                                            <li class="menu-item-has-children page_item_has_children">
                                                                                                                                <a href="Uyebilgileri-a.jsp">Üye Bilgileri</a>
                                                                                                                            </li>
                                                                                                                            <li class="menu-item-has-children page_item_has_children">
                                                                                                                                <a href="Kullaniciprofili-a.jsp">Kişi Bilgileri</a>
                                                                                                                            </li>
                                                                                                                            <li class="menu-item-has-children page_item_has_children">
                                                                                                                                <a href="Giderlertakvimi-a.jsp">Giderler Takvimi</a>
                                                                                                                            </li>
                                                                                                                            </li>
                                                                                                                            <li class="menu-item-has-children page_item_has_children">
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
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    </header>
                                                                                                </div>
                                                                                                </ul>
                                                                                                </nav>
                                                                                            </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--Header End-->
                                                                                <!--Inner Home Banner Start-->
                                                                                <div class="wt-haslayout wt-innerbannerholder">
                                                                                    <div class="container">
                                                                                        <div class="row justify-content-md-center">
                                                                                            <div class="col-xs-12 col-sm-12 col-md-8 push-md-2 col-lg-6 push-lg-3">
                                                                                                <div class="wt-innerbannercontent">
                                                                                                    <div class="wt-title"><h2>Duyuru Tablosu</h2></div>
                                                                                                    <ol class="wt-breadcrumb">
                                                                                                      
                                                                                                    </ol>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--Inner Home End-->
                                                                                <!--Main Start-->
                                                                                <main id="wt-main" class="wt-main wt-haslayout wt-innerbgcolor">
                                                                                    <!--Categories Start-->
                                                                                    <div class="wt-haslayout wt-main-section">
                                                                                        <div class="container">
                                                                                            <div class="row justify-content-md-center">
                                                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
                                                                                                    <div class="wt-dashboardbox wt-dashboardtabsholder wt-accountsettingholder">
                                                                                                        <div class="wt-dashboardtabs">
                                                                                                            <ul class="wt-tabstitle nav navbar-nav">

                                                                                                            </ul>
                                                                                                        </div>
                                                                                                        <div class="wt-tabscontent tab-content">
                                                                                                            <div class="wt-securityhold tab-pane active fade show" id="wt-security">

                                                                                                                <div class="wt-tabscontenttitle">
                                                                                                                    <h2>Duyurular</h2>
                                                                                                                </div>
                                                                                                                <table class="table">
                                                                                                                    <thead class="thead-dark">
                                                                                                                        <tr>

                                                                                                                            <th scope="col">id</th>
                                                                                                                            <th scope="col">Duyuru Başlığı</th>

                                                                                                                            <th scope="col">Duyuru Metni</th>

                                                                                                                            <th scope="col"> Güncelle</th>
                                                                                                                            <th scope="col"> Sil</th>


                                                                                                                        </tr>
                                                                                                                    </thead>
                                                                                                                    <tbody>
                                                                                                                        <%
                                                                                                                            Duyurular d1 = new Duyurular();
                                                                                                                            ArrayList<Duyurular> duyuruBasligiCek = d1.duyuruBasligiCek();

                                                                                                                            ArrayList<Duyurular> duyuruMetniCek = d1.duyuruMetniCek();
                                                                                                                            ArrayList<Duyurular> duyurular = d1.duyuruIDCek();
                                                                                                                            for (int i = 0; i < duyurular.size(); i++) {
                                                                                                                        %>
                                                                                                                        <tr>

                                                                                                                            <td><%=duyurular.get(i).getId()%></td>
                                                                                                                            <td><%=duyuruBasligiCek.get(i).getBaslik()%></td>
                                                                                                                            <td><%=duyuruMetniCek.get(i).getDuyuru()%></td>       
                                                                                                                            <td><a href="DuyuruGuncelle.jsp?id=<%=duyurular.get(i).getId()%>" id="linkId">Güncelle</td>
                                                                                                                            <td><a href="DuyuruSil.jsp?id=<%=duyurular.get(i).getId()%>" id="linkId">Sil</td>

                                                                                                                    <p id="linkStatus"></p>


                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                        <%
                                                                                                                            }
                                                                                                                        %>
                                                                                                                    </tr>
                                                                                                                    </tbody>
                                                                                                                </table>	


                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <!--Limitless Experience End-->
                                                                                </main>
                                                                                <!--Main End-->
                                                                                <!--Footer Start-->
                                                                                <footer id="wt-footer" class="wt-footer wt-haslayout">
                                                                                    <div class="wt-footerholder wt-haslayout">
                                                                                        <div class="container">
                                                                                            <div class="row">
                                                                                                <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                                                                                    <div class="wt-footerlogohold">
                                                                                                        <strong class="wt-logo"><img src="images/14.png" alt="company logo here"></a></strong>
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