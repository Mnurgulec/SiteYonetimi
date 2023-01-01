
<%@page import="tumani.Borclar"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<% 
if(session.getAttribute("yoneticiEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<html class="no-js" lang=""> 
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
                                                                                                        <script>
                                                                                                            window.onload = function () {

                                                                                                                var chart = new CanvasJS.Chart("chartContainer", {
                                                                                                                    theme: "light2", // "light1", "light2", "dark1", "dark2"
                                                                                                                    exportEnabled: true,
                                                                                                                    animationEnabled: true,
                                                                                                                    title: {
                                                                                                                        text: "Gider Dağılımı"
                                                                                                                    },
                                                                                                                    data: [{
                                                                                                                            type: "pie",
                                                                                                                            startAngle: 60,
                                                                                                                            toolTipContent: "<b>{label}</b>: {y}",
                                                                                                                            showInLegend: "true",
                                                                                                                            legendText: "{label}",
                                                                                                                            indexLabelFontSize: 18,
                                                                                                                            indexLabel: "{label} - {y}",
                                                                                                                            dataPoints: [
                                                                                                                                {y: <% Borclar b1 = new Borclar();
                                                                                                                                    double aidat = b1.toplamAidatBorcu();
                                                                                                                                    out.println(aidat);
                                                                                                            %>, label: "Aidat"},
                                                                                                                                {y: <% Borclar b2 = new Borclar();
                                                                                                                                    double elektrik = b2.toplamElektrikBorcu();
                                                                                                                                    out.println(elektrik);

                                                                                                            %>, label: "Elektrik"},
                                                                                                                                {y: <% Borclar b3 = new Borclar();
                                                                                                                                    double calisan = b3.toplamCalisanBorcu();
                                                                                                                                    out.println(calisan);
                                                                                                            %>, label: "Çalışan"},
                                                                                                                                {y: <%Borclar b4 = new Borclar();
                                                                                                                                    double diger = b4.toplamDigerGiderlerBorcu();
                                                                                                                                    out.println(diger);
                                                                                                            %>, label: "Diğer Giderler"}
                                                                                                                            ]
                                                                                                                        }]
                                                                                                                });
                                                                                                                chart.render();

                                                                                                            }
                                                                                                        </script>
                                                                                                        <div id="chartContainer" style="height: 700px; width: 100%;"></div>
                                                                                                        <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                                                                                                        <!--Register Form End-->			
                                                                                                    </main>
                                                                                                    <script src="js/vendor/jquery-3.3.1.js"></script>
                                                                                                    <script src="js/vendor/jquery-library.js"></script>
                                                                                                    <script src="js/vendor/bootstrap.min.js"></script>
                                                                                                    <script src="js/jquery.basictable.min.js"></script>
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
                                                                                                    <script src="js/chart.js"></script>
                                                                                                    <script src="js/jRate.js"></script>
                                                                                                    <script src="js/main.js"></script>

                                                                                                    </body>
                                                                                                    </html>