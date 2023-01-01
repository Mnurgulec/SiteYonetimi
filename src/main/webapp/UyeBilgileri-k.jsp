<% 
if(session.getAttribute("yoneticiEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<%@page import="tumani.Kullanici"%>
<!doctype html>
<jsp:useBean id="obj" class="tumani.Kullanici" scope="session"/>
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
                                <link rel="stylesheet" href="css/themify-icons.css">
                                    <link rel="stylesheet" href="css/owl.carousel.min.css">
                                        <link rel="stylesheet" href="css/jquery-ui.css">
                                            <link rel="stylesheet" href="css/linearicons.css">
                                                <link rel="stylesheet" href="css/tipso.css">
                                                    <link rel="stylesheet" href="css/chosen.css">
                                                        <link rel="stylesheet" href="css/prettyPhoto.css">
                                                            <link rel="stylesheet" href="css/main.css">
                                                                <link rel="stylesheet" href="css/dashboard.css">
                                                                    <link rel="stylesheet" href="css/color.css">
                                                                        <link rel="stylesheet" href="css/transitions.css">
                                                                            <link rel="stylesheet" href="css/responsive.css">
                                                                                <link rel="stylesheet" href="css/dbresponsive.css">
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
                                                                                                                                    <a href=Uyebilgileri-k.jsp">Üye Bilgileri</a>

                                                                                                                                </li><!-- comment -->
                                                                                                                                <li class="menu-item-has-children page_item_has_children">
                                                                                                                                    <a href="Kullaniciprofili-k.jsp">Kişi Bilgileri</a>

                                                                                                                                </li>
                                                                                                                                <li class="menu-item-has-children page_item_has_children">
                                                                                                                                    <a href=Giderlertakvimi-k.jsp">Giderler Takvimi</a>

                                                                                                                                </li><li >
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
                                                                                                            </header>
                                                                                                        </div>
                                                                                                    </div>

                                                                                                    <!--Header End-->
                                                                                                    <!--Main Start-->
                                                                                                    <main id="wt-main" class="wt-main wt-haslayout">
                                                                                                        <!--Sidebar Start-->
                                                                                                        <div id="wt-sidebarwrapper" class="wt-sidebarwrapper">
                                                                                                            <div id="wt-btnmenutoggle" class="wt-btnmenutoggle">
                                                                                                                <span class="menu-icon">
                                                                                                                    <em></em>
                                                                                                                    <em></em>
                                                                                                                    <em></em>
                                                                                                                </span>
                                                                                                            </div>
                                                                                                            <div id="wt-verticalscrollbar" class="wt-verticalscrollbar">
                                                                                                                <div class="wt-companysdetails wt-usersidebar">
                                                                                                                    <figure class="wt-companysimg">
                                                                                                                        <img src="images/sidebar/img-01.jpg" alt="img description">
                                                                                                                    </figure>
                                                                                                                    <div class="wt-companysinfo">
                                                                                                                        <figure><img src="images/sidebar/3.jpg" alt="img description"></figure>
                                                                                                                        <div class="wt-title">
                                                                                                                            <h2><a href="javascript:void(0);"></a></h2>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <nav id="wt-navdashboard" class="wt-navdashboard">
                                                                                                                    <ul>
                                                                                                                        <li>
                                                                                                                            <a href="Iletisim.jsp">
                                                                                                                                <i class="ti-tag"></i>
                                                                                                                                <span>İletişim</span>
                                                                                                                            </a>
                                                                                                                        </li>
                                                                                                                        <li>
                                                                                                                            <a href="index.jsp">
                                                                                                                                <i class="ti-shift-right"></i>
                                                                                                                                <span>Ana Sayfa</span>
                                                                                                                            </a>
                                                                                                                        </li>
                                                                                                                    </ul>
                                                                                                                </nav>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <!--Sidebar Start-->
                                                                                                        <!--Register Form Start-->
                                                                                                        <section class="wt-haslayout">
                                                                                                            <div class="row">
                                                                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-8 col-xl-9">
                                                                                                                    <div class="wt-haslayout wt-dbsectionspace">
                                                                                                                        <div class="wt-dashboardbox wt-dashboardtabsholder">
                                                                                                                            <div class="wt-dashboardboxtitle">
                                                                                                                                <h2>Profil</h2>
                                                                                                                            </div>
                                                                                                                            <div class="wt-dashboardtabs">
                                                                                                                                <ul class="wt-tabstitle nav navbar-nav">
                                                                                                                                    <li class="nav-item">
                                                                                                                                        <a class="active" data-toggle="tab" href="#wt-skills">Kişisel Özellikler ve Detaylar</a>
                                                                                                                                    </li>
                                                                                                                                </ul>
                                                                                                                            </div>
                                                                                                                            <div class="wt-tabscontent tab-content">
                                                                                                                                <div class="wt-personalskillshold tab-pane active fade show" id="wt-skills">
                                                                                                                                    <div class="wt-yourdetails wt-tabsinfo">
                                                                                                                                        <div class="wt-tabscontenttitle">
                                                                                                                                            <h2>Detaylar</h2>
                                                                                                                                        </div>
                                                                                                                                        <form class="wt-formtheme wt-userform">
                                                                                                                                            <fieldset>
                                                                                                                                                <div class="form-group form-group-half">
                                                                                                                                                        <button  name="ad" class="form-control" placeholder=""><%
                                                                                                                                        Kullanici k1 = new Kullanici();
                                                                                                                                        out.println(k1.kullaniciAdiCek(obj.getKullaniciEmail()));%> </button>
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group form-group-half">
                                                                                                                                                        <button  name="ad" class="form-control" placeholder=""><%
                                                                                                                                        Kullanici k2 = new Kullanici();
                                                                                                                                        out.println(k2.sifreCek(obj.getKullaniciEmail()));%> </button>
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group form-group-half">
                                                                                                                                                        <button  name="ad" class="form-control" placeholder=""><%
                                                                                                                                        Kullanici k3 = new Kullanici();
                                                                                                                                        out.println(k3.TelefonNoCek(obj.getKullaniciEmail()));%> </button>
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group form-group-half">
                                                                                                                                                        <button  name="ad" class="form-control" placeholder=""><%
                                                                                                                                        Kullanici k4 = new Kullanici();
                                                                                                                                        out.println(k4.emailCek(obj.getKullaniciEmail()));%> </button>
                                                                                                                                                </div>
                                                                                                                                                <div class="form-group form-group-half">
                                                                                                                                                    <button  name="ad" class="form-control" placeholder="">
                                                                                                                                                        <%
                                                                                                                                                            Daireler d1 = new Daireler();
                                                                                                                                                            out.println(d1.katCek(obj.getKullaniciEmail()) + " " + ".Kat");
                                                                                                                                                            out.println(d1.daireNoCek(obj.getKullaniciEmail()) + " " + "Nolu Daire");
                                                                                                                                                        %> 


                                                                                                                                                    </button>
                                                                                                                                                </div>
                                                                                                                                            </fieldset>
                                                                                                                                        </form>
                                                                                                                                    </div>
                                                                                                                                </div>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-4 col-xl-3">
                                                                                                                    <div class="wt-haslayout wt-dbsectionspace wt-codescansidebar">
                                                                                                                        <div class="tg-authorcodescan wt-codescanholder">

                                                                                                                            <div class="wt-codescanicons">
                                                                                                                                <span>TU-MANİ</span>
                                                                                                                                <ul class="wt-socialiconssimple">
                                                                                                                                    <li class="wt-facebook"><a href="https://www.facebook.com/ostimteknikuniversitesi/"><i class="fa fa-facebook-f"></i></a></li>
                                                                                                                                    <li class="wt-twitter"><a href="https://twitter.com/ostimteknikuniv?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"><i class="fab fa-twitter"></i></a></li>
                                                                                                                                    <li class="wt-youtube"><a href="https://www.youtube.com/channel/UCJr3uk1QO8ZsM-PiRI4-Oog"><i class="fab fa-youtube"></i></a></li>
                                                                                                                                    <li class="wt-instagram"><a href="https://www.instagram.com/ostimteknikuniv/"><i class="fab fa-instagram"></i></a></li>
                                                                                                                                </ul>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                        <div class="wt-companyad">
                                                                                                                            <figure class="wt-companyadimg"><img src="images/work/img-01.jpg" alt="img description"></figure>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-3"></div>

                                                                                                            </div>
                                                                                                        </section>
                                                                                                        <!--Register Form End-->
                                                                                                    </main>
                                                                                                    <!--Main End-->	
                                                                                                </div>
                                                                                                <!--Content Wrapper End-->
                                                                                        </div>
                                                                                        <!--Wrapper End-->
                                                                                        <script src="js/vendor/jquery-3.3.1.js"></script>
                                                                                        <script src="js/vendor/jquery-library.js"></script>
                                                                                        <script src="js/vendor/bootstrap.min.js"></script>
                                                                                        <script src="https://maps.google.com/maps/api/js?key=AIzaSyCR-KEWAVCn52mSdeVeTqZjtqbmVJyfSus&amp;language=en"></script>
                                                                                        <script src="js/owl.carousel.min.js"></script>
                                                                                        <script src="js/jquery.sortable.js"></script>
                                                                                        <script src="js/chosen.jquery.js"></script>
                                                                                        <script src="js/tilt.jquery.js"></script>
                                                                                        <script src="js/scrollbar.min.js"></script>
                                                                                        <script src="js/prettyPhoto.js"></script>
                                                                                        <script src="js/jquery-ui.js"></script>
                                                                                        <script src="js/readmore.js"></script>
                                                                                        <script src="js/countTo.js"></script>
                                                                                        <script src="js/appear.js"></script>
                                                                                        <script src="js/tipso.js"></script>
                                                                                        <script src="js/gmap3.js"></script>
                                                                                        <script src="js/jRate.js"></script>
                                                                                        <script src="js/main.js"></script>
                                                                                        <script>
                                                                                            const menu_icon = document.querySelector('.menu-icon');
                                                                                            function addClassFunThree() {
                                                                                                this.classList.toggle("click-menu-icon");
                                                                                            }
                                                                                            menu_icon.addEventListener('click', addClassFunThree);
                                                                                        </script>
                                                                                        </body>


                                                                                        </html>