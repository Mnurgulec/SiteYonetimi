<%@page import="tumani.Kullanici"%>
<%@page import="tumani.DaireAtama"%>
<% 
if(session.getAttribute("kullaniciEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<!doctype html>
<!--[if lt IE 7]>		<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>			<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>			<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->	<html class="no-js" lang=""> <!--<![endif]-->
    <script>

        function bosOlupOlmadigi() {
            var x = document.forms["formGiris"]["katNo"].value;
            var y = document.forms["formGiris"]["daireNo"].value;
            if (x === null || x === '' && y === null || y === '') {
                alert("Kat no ve daire no boş geçilemez!");
                return false;
            } else if (isNaN(x) || x < 0 && isNaN(y) || y < 0) {
                alert("Lütfen doğru değer girdiğinize emin olun!");
                return false;
            } else if (x > 10) {
                alert("Apartmanımız 10 katlıdır. Lütfen kat noyu düzgün giriniz.");
                return false;
            } else if (y > 20) {
                alert("Apartmanımızda 20 daire mevcuttur. Lütfen daire numarasını düzgün giriniz.");
                return false;
            }



        }

    </script>
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
                                                                                                                                   
                                                                                                                                        <li class="menu-item-has-children page_item_has_children">
                                                                                                                                            <a href="Duyurular-a.jsp">Duyurular</a>
                                                                                                                                        </li>
                                                                                                                                        <li class="menu-item-has-children page_item_has_children">
                                                                                                                                            <a href="DuyuruEkle-a.jsp">Duyuru Ekle</a>
                                                                                                                                        </li> <li class="menu-item-has-children page_item_has_children">
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
                                                                                                                    </header>
                                                                                                                </div>
                                                                                                                </ul>
                                                                                                                </nav>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    </header>
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
                                                                                                        <li class="menu-item-has-children">
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
                                                                                        <section class="wt-haslayout wt-dbsectionspace">
                                                                                            <div class="row">
                                                                                                <div class="col-xs-12 col-sm-12 col-md-12 col-lg-9">
                                                                                                    <div class="wt-dashboardbox wt-dashboardtabsholder wt-accountsettingholder">
                                                                                                        <div class="wt-dashboardtabs">
                                                                                                            <ul class="wt-tabstitle nav navbar-nav">
                                                                                                                <li class="nav-item">
                                                                                                                    <a class="active" data-toggle="tab" href="#wt-security">Daire Ata</a>
                                                                                                                </li>
                                                                                                            </ul>
                                                                                                        </div>
                                                                                                        <div class="wt-tabscontent tab-content">
                                                                                                            <div class="wt-securityhold tab-pane active fade show" id="wt-security">
                                                                                                                <div class="wt-securitysettings wt-tabsinfo">
                                                                                                                    <div class="wt-tabscontenttitle">
                                                                                                                        <h2>TU-MANİ</h2>
                                                                                                                    </div>
                                                                                                                    <form class="wt-formtheme wt-userform" action="" method="post" name="formGiris" onsubmit="return bosOlupOlmadigi()">

                                                                                                                        <fieldset>
                                                                                                                            <div class="form-group form-group-half">
                                                                                                                                <input type="text" name="katNo" class="form-control" placeholder="Kat no giriniz.">
                                                                                                                            </div>
                                                                                                                            <div class="form-group form-group-half">
                                                                                                                                <input type="text" name="daireNo" class="form-control" placeholder="Daire No giriniz..">
                                                                                                                            </div>
                                                                                                                        </fieldset>
                                                                                                                        <div class="wt-updatall">
                                                                                                                            <i class="ti-announcement"></i>
                                                                                                                            <span>Kaydet</span>
                                                                                                                            <input type="submit" class="wt-btn" href="javascript:void(0);" value="Kaydet">
                                                                                                                        </div>

                                                                                                                    </form>
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



                                                                                    <%
                                                                                        try {

                                                                                            int id = Integer.parseInt(request.getParameter("id"));
                                                                                            int daireNo = Integer.parseInt(request.getParameter("daireNo"));
                                                                                            int katNo = Integer.parseInt(request.getParameter("katNo"));
                                                                                            Kullanici k1 = new Kullanici();

                                                                                            int katNovarMiID = k1.katNoVarMi();
                                                                                            int daireNovarMiID = k1.daireNoVarMi();

                                                                                            if (daireNo != daireNovarMiID) {
                                                                                                DaireAtama d1 = new DaireAtama();
                                                                                                boolean b1 = d1.daireNoAta(id, katNo, daireNo);
                                                                                                if (b1 == true) {
                                                                                                    out.println("<script>alert('Kullanıcıya daire atandı.')</script>");
                                                                                                    out.println("<script>window.location.href='Uyebilgileri-a.jsp';</script>");
                                                                                                } else {
                                                                                                    out.println("<script>alert('Kullanıcıya daire atanmadıı!.')</script>");
                                                                                                    out.println("<script>window.location.href='Uyebilgileri-a.jsp';</script>");
                                                                                                }

                                                                                            } else {
                                                                                                out.println("<script>alert('Olmadı!.')</script>");
                                                                                            }

                                                                                        } catch (Exception e) {
                                                                                            out.println(e);
                                                                                        }


                                                                                    %>