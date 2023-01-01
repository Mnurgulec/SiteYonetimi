<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.List"%>
<%@page import="tumani.Kullanici"%>
<% 
if(session.getAttribute("kullaniciEmail")!=null){
    response.sendRedirect("Girisyap.jsp");
}
%>
<!doctype html>
<html class="no-js" lang=""> <!--<![endif]-->
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
                                                                                                                                <h2><a href="javascript:void(0);">İsim</a></h2>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                 <nav id="wt-navdashboard" class="wt-navdashboard">
                                                                                                            <ul>
                                                                                                                <li>
                                                                                                                  
                                                                                                                    <a href="Giderlertakvimi-a.jsp">
                                                                                                                        <i class="ti-tag"></i>
                                                                                                                        <span>Gider Ekle</span>
                                                                                                                    </a>
                                                                                                                </li>
                                                                                                                <li>
                                                                                                                    <a href="Uyebilgileri-a.jsp">
                                                                                                                        <i class="ti-tag"></i>
                                                                                                                        <span>Profil</span>
                                                                                                                    </a>
                                                                                                                </li>
                                                                                                             
                                                                                                                <li>
                                                                                                                    <a href="Iletisim.jsp">
                                                                                                                        <i class="ti-tag"></i>
                                                                                                                        <span>İletişim</span>
                                                                                                                    </a>
                                                                                                                </li>
                                                                                                              
                                                                                                            </ul>
                                                                                                        </nav>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <!--Sidebar Start-->
                                                                                                            <!--Register Form Start-->
                                                                                                            <table class="table">
                                                                                                                <thead class="thead-dark">
                                                                                                                    <tr>

                                                                                                                        <th scope="col">id</th>
                                                                                                                        <th scope="col">Ad</th>

                                                                                                                        <th scope="col">Telefon Numarası</th>
                                                                                                                        <th scope="col">Email</th>
                                                                                                                        <th scope="col">Kat Numarası</th>
                                                                                                                        <th scope="col">Daire Numarası</th>
                                                                                                                        <th scope="col"> Daire Ata</th>
                                                                                                                        <th scope="col"> Sil</th>


                                                                                                                    </tr>
                                                                                                                </thead>
                                                                                                                <tbody>
                                                                                                                    <%
                                                                                                                        Kullanici k1 = new Kullanici();
                                                                                                                        ArrayList<Kullanici> kullanicilar = k1.Yazdir();
                                                                                                                        for (int i = 0; i < kullanicilar.size(); i++) {
                                                                                                                    %>
                                                                                                                    <tr>

                                                                                                                        <td><%=kullanicilar.get(i).getId()%></td>
                                                                                                                        <td><%=kullanicilar.get(i).getKullaniciAdi()%></td>

                                                                                                                        <td><%=kullanicilar.get(i).getKullaniciTelefonNo()%></td>
                                                                                                                        <td><%=kullanicilar.get(i).getKullaniciEmail()%></td>   
                                                                                                                        <td><%=kullanicilar.get(i).getkatNo()%></td> 
                                                                                                                        <td><%=kullanicilar.get(i).getdaireNo()%></td> 
                                                                                                                        <td><a href="DaireAta.jsp?id=<%=kullanicilar.get(i).getId()%>" id="linkId">Daire Ata</td>
                                                                                                                         <td><a href="UyeBilgileriSil.jsp?id=<%=kullanicilar.get(i).getId()%>" id="linkId">Sil</td>
                                                                                                               
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