<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <style>
            /*CSS bieu tuong nguoi dung*/
            #user-icon:hover i {
                transform: scale(1.2); /* T?ng k�ch th??c c?a bi?u t??ng khi di chu?t qua */
            }

            #user-options a:hover {
                background-color: #1A76D1; /* ??i m�u n?n khi di chu?t qua */
                color: #000; /* ??i m�u ch? khi di chu?t qua */
            }
        </style>
        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="keywords" content="Site keywords here">
        <meta name="description" content="">
        <meta name='copyright' content=''>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Title -->
        <title>FPT Medical - FMed</title>

        <!-- Favicon -->
        <link rel="icon" href="${pageContext.request.contextPath}/Main Template/img/favicon.png">

        <!-- Google Fonts -->
        <link href="${pageContext.request.contextPath}/Main Template/https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/bootstrap.min.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/nice-select.css">
        <!-- Font Awesome CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/font-awesome.min.css">
        <!-- icofont CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/icofont.css">
        <!-- Slicknav -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/slicknav.min.css">
        <!-- Owl Carousel CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/owl-carousel.css">
        <!-- Datepicker CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/datepicker.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/animate.min.css">
        <!-- Magnific Popup CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/magnific-popup.css">

        <!-- Medipro CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/normalize.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/responsive.css">

        <!-- Color CSS -->
        <link rel="stylesheet" href="css/color/color1.css">
        <!--<link rel="stylesheet" href="css/color/color2.css">-->
        <!--<link rel="stylesheet" href="css/color/color3.css">-->
        <!--<link rel="stylesheet" href="css/color/color4.css">-->
        <!--<link rel="stylesheet" href="css/color/color5.css">-->
        <!--<link rel="stylesheet" href="css/color/color6.css">-->
        <!--<link rel="stylesheet" href="css/color/color7.css">-->
        <!--<link rel="stylesheet" href="css/color/color8.css">-->
        <!--<link rel="stylesheet" href="css/color/color9.css">-->
        <!--<link rel="stylesheet" href="css/color/color10.css">-->
        <!--<link rel="stylesheet" href="css/color/color11.css">-->
        <!--<link rel="stylesheet" href="css/color/color12.css">-->

        <link rel="stylesheet" href="#" id="colors">

    </head>
    <body>

        <!-- Preloader -->
        <div class="preloader">
            <div class="loader">
                <div class="loader-outter"></div>
                <div class="loader-inner"></div>

                <div class="indicator"> 
                    <svg width="16px" height="12px">
                    <polyline id="back" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                    <polyline id="front" points="1 6 4 6 6 11 10 1 12 6 15 6"></polyline>
                    </svg>
                </div>
            </div>
        </div>
        <!-- End Preloader -->

        <!-- FPT Medical Color Plate -->
        <div class="color-plate">
            <a class="color-plate-icon"><i class="fa fa-cog fa-spin"></i></a>
            <h4>FPT Medical</h4>
            <p>Here is some awesome color's theme available on FPT Medical.</p>
            <span class="color1"></span>
            <span class="color2"></span>
            <span class="color3"></span>
            <span class="color4"></span>
            <span class="color5"></span>
            <span class="color6"></span>
            <span class="color7"></span>
            <span class="color8"></span>
            <span class="color9"></span>
            <span class="color10"></span>
            <span class="color11"></span>
            <span class="color12"></span>
        </div>
        <!-- /End Color Plate -->

        <!-- Header Area -->
        <header class="header style2" >
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-5 col-12">
                            <!-- Contact -->
                            <ul class="top-link">
                                <li><a href="${pageContext.request.contextPath}/Main Template/about.html">About</a></li>
                                <li><a href="${pageContext.request.contextPath}/doctors">Doctors</a></li>
                                <li><a href="${pageContext.request.contextPath}/Main Template/contact.html">Contact</a></li>
                                <li><a href="${pageContext.request.contextPath}/Main Template/faq.html">FAQ</a></li>
                            </ul>
                            <!-- End Contact -->
                        </div>
                        <div class="col-lg-6 col-md-7 col-12">
                            <!-- Top Contact -->
                            <ul class="top-contact">
                                <li><i class="fa fa-phone"></i>+84 76 2222 764</li>
                                <li><i class="fa fa-envelope"></i><a href="${pageContext.request.contextPath}/Main Template/mailto:support@fptmedical.com">support@fptmedical.com</a></li>
                            </ul>
                            <!-- End Top Contact -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Topbar -->
            <!-- Middle Header -->
            <div class="middle-header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-12">
                            <!-- Start Logo -->
                            <div class="logo">
                                <a href="${pageContext.request.contextPath}/Main Template/index.jsp"><img src="${pageContext.request.contextPath}/Main Template/img/logo.png" alt="#"></a>
                            </div>
                            <!-- End Logo -->
                            <!-- Mobile Nav -->
                            <div class="mobile-nav"></div>
                            <!-- End Mobile Nav -->
                        </div>
                        <div class="col-lg-9 col-md-9 col-12">
                            <div class="widget-main">
                                <!-- Single Widget -->
                                <div class="single-widget">
                                    <i class="icofont-ui-call"></i>
                                    <p>Call us anytime</p>
                                    <h4>+84 76 2222 764</h4>
                                </div>
                                <!--/ End Single Widget -->
                                <!-- Single Widget -->
                                <div class="single-widget">
                                    <i class="icofont-clock-time"></i>
                                    <p>Opening Time</p>
                                    <h4>Mon-Sat: 9.00-18.00</h4>
                                </div>
                                <!--/ End Single Widget -->
                                <!-- Single Widget -->
                                <div class="single-widget button">
                                    <div class="get-quote">
                                        <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Book Appointment</a>
                                    </div>
                                </div>
                                <!--/ End Single Widget -->
                                <!-- Single Widget: Th�m bi?u t??ng ng??i d�ng -->
                                <!-- Single Widget: Th�m bi?u t??ng ng??i d�ng -->
                                <div class="single-widget">
                                    <a id="user-icon">
                                        <i class="icofont-user-alt-7"></i>
                                    </a>
                                    <!-- Hi?n th? ch? Profile v� Login -->
                                    <span id="user-options" style="display: none; position: absolute; background-color: #fff; border: 1px solid #ccc; padding: 5px; z-index: 999;">
                                        <a href="${pageContext.request.contextPath}/Main Template/profile.jsp" style="display: block;
                                           text-decoration: none; color: #333; font-weight: bold">Profile</a>                                          
                                        <c:if test="${sessionScope.user == null}">
                                            <a href="${pageContext.request.contextPath}/Main Template/login.jsp" style="display: block; text-decoration: none;
                                               color: #333; font-weight: bold">Login</a>
                                        </c:if>
                                        <c:if test="${sessionScope.user != null}">
                                            <a href="${pageContext.request.contextPath}/LogOutServlet" style="display: block; text-decoration: none;
                                               color: #333; font-weight: bold">Logout</a>
                                        </c:if>
                                    </span>
                                </div>
                                <!--/ End Single Widget -->

                                <!--/ End Single Widget -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- End Middle Header -->
            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="inner">
                        <div class="row">
                            <div class="col-12">
                                <!-- Main Menu -->
                                <div class="main-menu">
                                    <nav class="navigation">
                                        <ul class="nav menu">
                                            <li class="active"><a href="#">Home <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="index.html">FPT Medical Homepage</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/Main Template/https://daihoc.fpt.edu.vn">FPT University Homepage</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Doctors <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                   <c:url value="TimeSessionServlet" var="showUrl">
                                                        <c:param name="command" value="list" />
                                                        <!-- Add other parameters as needed -->
                                                    </c:url>
                                               <li><a href="${showUrl}">Doctor</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/doctor-details.html">Doctor Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Services <i class="icofont-rounded-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="${pageContext.request.contextPath}/Main Template/service.html">Service</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/service-details.html">Service Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Pages <i class="icofont-rounded-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="${pageContext.request.contextPath}/Main Template/about.html">About Us</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/appointment.html">Appointment</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/time-table.html">Time Table</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/testimonials.html">Testimonials</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/pricing.html">Our Pricing</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/register.jsp">Sign Up</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/login.jsp">Login</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/faq.html">Faq</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/mail-success.html">Mail Success</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/404.html">404 Error</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="#">Blogs <i class="icofont-rounded-down"></i></a>
                                            <ul class="dropdown">
                                                <li><a href="${pageContext.request.contextPath}/Main Template/blog-grid.html">Blog Grid</a></li>
                                                <li><a href="${pageContext.request.contextPath}/Main Template/blog-single.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="${pageContext.request.contextPath}/Main Template/contact.html">Contact Us</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <!--/ End Main Menu -->
                            <div class="right-bar">
                                <!-- Search Form -->
                                <div class="search-top">
                                    <div class="search"><a href="#0"><i class="icofont-search-1"></i></a></div>
                                    <form class="search-form">
                                        <input type="text" placeholder="search" name="search">
                                        <button value="search" type="submit"><i class="icofont-search-1"></i></button>
                                    </form>
                                </div>
                                <!--/ End Search Form -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Header Inner -->
    </header>
    <!-- End Header Area -->

    <!-- Slider Area -->
    <section class="slider index2">
        <div class="hero-slider">
            <!-- Start Single Slider -->
            <div class="single-slider" style="background-image:url('${pageContext.request.contextPath}/Main Template/img/slide1.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="text">
                                <div class="text-background">
                                    <h1>We Provide <span>Medical</span> Services That You Can <span>Trust!</span></h1>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed nisl pellentesque, faucibus libero eu, gravida quam. </p>
                                    <div class="button">
                                        <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                                        <a href="${pageContext.request.contextPath}/Main Template/service.html" class="btn primary">Our service</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Single Slider -->
            <!-- Start Single Slider -->
            <div class="single-slider" style="background-image:url('${pageContext.request.contextPath}/Main Template/img/slide2.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="text">
                                <div class="text-background">
                                    <h1>We Provide <span>Medical</span> Services That You Can <span>Trust!</span></h1>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed nisl pellentesque, faucibus libero eu, gravida quam. </p>
                                    <div class="button">
                                        <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                                        <a href="${pageContext.request.contextPath}/Main Template/about.html" class="btn primary">About Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Start End Slider -->
            <!-- Start Single Slider -->
            <div class="single-slider" style="background-image:url('${pageContext.request.contextPath}/Main Template/img/slide3.jpg')">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="text">
                                <div class="text-background">
                                    <h1>We Provide <span>Medical</span> Services That You Can <span>Trust!</span></h1>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sed nisl pellentesque, faucibus libero eu, gravida quam. </p>
                                    <div class="button">
                                        <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                                        <a href="${pageContext.request.contextPath}/Main Template/contact.html" class="btn primary">Contact Now</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Single Slider -->
        </div>
    </section>
    <!--/ End Slider Area -->

    <!-- Start Feautes -->
    <section class="Feautes index2 section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Are Always Ready to Help You & Your Family</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-12">
                    <!-- Start Single features -->
                    <div class="single-features wow fadeIn" data-wow-delay="0.4s" data-wow-duration="1s">
                        <div class="signle-icon">
                            <i class="icofont icofont-ambulance-cross"></i>
                        </div>
                        <h3>Emergency Help</h3>
                        <p>Lorem ipsum sit, consectetur adipiscing elit. Maecenas mi quam vulputate.</p>
                    </div>
                    <!-- End Single features -->
                </div>
                <div class="col-lg-4 col-12">
                    <!-- Start Single features -->
                    <div class="single-features wow fadeIn" data-wow-delay="0.6s" data-wow-duration="1s">
                        <div class="signle-icon">
                            <i class="icofont icofont-medical-sign-alt"></i>
                        </div>
                        <h3>Enriched Pharmecy</h3>
                        <p>Lorem ipsum sit, consectetur adipiscing elit. Maecenas mi quam vulputate.</p>
                    </div>
                    <!-- End Single features -->
                </div>
                <div class="col-lg-4 col-12">
                    <!-- Start Single features -->
                    <div class="single-features last wow fadeIn" data-wow-delay="0.6s" data-wow-duration="1s">
                        <div class="signle-icon">
                            <i class="icofont icofont-stethoscope"></i>
                        </div>
                        <h3>Medical Treatment</h3>
                        <p>Lorem ipsum sit, consectetur adipiscing elit. Maecenas mi quam vulputate.</p>
                    </div>
                    <!-- End Single features -->
                </div>
            </div>
        </div>
    </section>
    <!--/ End Feautes -->

    <!-- Start Fun-facts -->
    <div id="fun-facts" class="fun-facts section overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun wow fadeIn" data-wow-delay="1s" data-wow-duration="0.5s">
                        <i class="icofont icofont-home"></i>
                        <div class="content">
                            <span class="counter">3468</span>
                            <p>Hospital Rooms</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun wow fadeIn" data-wow-delay="0.8s" data-wow-duration="0.5s">
                        <i class="icofont icofont-user-alt-3"></i>
                        <div class="content">
                            <span class="counter">557</span>
                            <p>Specialist Doctors</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun wow fadeIn" data-wow-delay="0.6s" data-wow-duration="0.5s">
                        <i class="icofont-simple-smile"></i>
                        <div class="content">
                            <span class="counter">4379</span>
                            <p>Happy Patients</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
                <div class="col-lg-3 col-md-6 col-12">
                    <!-- Start Single Fun -->
                    <div class="single-fun wow fadeIn" data-wow-delay="0.4s" data-wow-duration="0.5s">
                        <i class="icofont icofont-table"></i>
                        <div class="content">
                            <span class="counter">32</span>
                            <p>Years of Experience</p>
                        </div>
                    </div>
                    <!-- End Single Fun -->
                </div>
            </div>
        </div>
    </div>
    <!--/ End Fun-facts -->

    <!-- Start Why choose -->
    <section class="why-choose section" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Offer Different Services To Improve Your Health</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-12">
                    <!-- Start Choose Left -->
                    <div class="choose-left">
                        <h3>Who We Are</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra antege vel est lobortis, a commodo magna rhoncus. In quis nisi non emet quam pharetra commodo. </p>
                        <p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. </p>
                        <div class="row">
                            <div class="col-lg-6">
                                <ul class="list">
                                    <li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
                                    <li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
                                    <li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
                                </ul>
                            </div>
                            <div class="col-lg-6">
                                <ul class="list">
                                    <li><i class="fa fa-caret-right"></i>Maecenas vitae luctus nibh. </li>
                                    <li><i class="fa fa-caret-right"></i>Duis massa massa.</li>
                                    <li><i class="fa fa-caret-right"></i>Aliquam feugiat interdum.</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End Choose Left -->
                </div>
                <div class="col-lg-6 col-12">
                    <!-- Start Choose Rights -->
                    <div class="choose-right">
                        <div class="video-image">
                            <!-- Video Animation -->
                            <div class="promo-video">
                                <div class="waves-block">
                                    <div class="waves wave-1"></div>
                                    <div class="waves wave-2"></div>
                                    <div class="waves wave-3"></div>
                                </div>
                            </div>
                            <!--/ End Video Animation -->
                            <a href="https://www.youtube.com/watch?v=I2rbCVN8KvQ" class="video video-popup mfp-iframe"><i class="fa fa-play"></i></a>
                        </div>
                    </div>
                    <!-- End Choose Rights -->
                </div>
            </div>
        </div>
    </section>
    <!--/ End Why choose -->

    <!-- Start Call to action -->
    <section class="call-action overlay" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="content">
                        <h2>Do you need Emergency Medical Care? Call @ 1234 56789</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque porttitor dictum turpis nec gravida.</p>
                        <div class="button">
                            <a href="#" class="btn">Contact Now</a>
                            <a href="#" class="btn second">Learn More<i class="fa fa-long-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ End Call to action -->

    <!-- Start portfolio -->
    <section class="portfolio section" >
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Maintain Cleanliness Rules Inside Our Hospital</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="owl-carousel portfolio-slider">
                        <div class="single-pf wow fadeIn" data-wow-delay="0.2s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="0.4s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="0.6s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="0.8s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="1s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="1.2s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="1.4s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                        <div class="single-pf wow fadeIn" data-wow-delay="1.6s" data-wow-duration="0.8s">
                            <img src="https://via.placeholder.com/320x250" alt="#">
                            <a href="${pageContext.request.contextPath}/Main Template/portfolio-details.html" class="btn">View Details</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ End portfolio -->

    <!-- Start service -->
    <section class="services section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Offer Different Services To Improve Your Health</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1s">
                        <i class="icofont icofont-prescription"></i>
                        <h4><a href="${pageContext.request.contextPath}/Main Template/service-details.html">General Treatment</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1s">
                        <i class="icofont icofont-tooth"></i>
                        <h4><a href="${pageContext.request.contextPath}/Main Template/service-details.html">Teeth Whitening</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service wow fadeInUp" data-wow-delay="0.8s" data-wow-duration="1s">
                        <i class="icofont icofont-heart-alt"></i>
                        <h4><a href="${pageContext.request.contextPath}/Main Template/service-details.html">Heart Surgery</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service wow fadeInUp" data-wow-delay="1s" data-wow-duration="1s">
                        <i class="icofont icofont-listening"></i>
                        <h4><a href="${pageContext.request.contextPath}/Main Template/service-details.html">Ear Treatment</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service wow fadeInUp" data-wow-delay="1.2s" data-wow-duration="1s">
                        <i class="icofont icofont-eye-alt"></i>
                        <h4><a href="${pageContext.request.contextPath}/Main Template/service-details.html">Vision Problems</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
                    </div>
                    <!-- End Single Service -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Start Single Service -->
                    <div class="single-service wow fadeInUp" data-wow-delay="1.4s" data-wow-duration="1s">
                        <i class="icofont icofont-blood"></i>
                        <h4><a href="${pageContext.request.contextPath}/Main Template/service-details.html">Blood Transfusion</a></h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus dictum eros ut imperdiet. </p>	
                    </div>
                    <!-- End Single Service -->
                </div>
            </div>
        </div>
    </section>
    <!--/ End service -->

    <!-- Start Testimonials -->
    <section class="section testimonials overlay" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>What Our Patients Say About Our Medical Treatments</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img2.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12 col-12">
                    <div class="owl-carousel testimonial-slider">
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Ruhfayed Sakib</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Shakil Hossain</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Naimur Rahman</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Ruhfayed Sakib</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Shakil Hossain</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Naimur Rahman</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Ruhfayed Sakib</h4>
                        </div>
                        <!-- End Single Testimonial -->
                        <!-- Start Single Testimonial -->
                        <div class="single-testimonial">
                            <img src="https://via.placeholder.com/55x55" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur eliet adipiscing. Aliquam nec suscipit turpis, vel pretium eros. </p>
                            <h4 class="name">Naimur Rahman</h4>
                        </div>
                        <!-- End Single Testimonial -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--/ End Testimonials -->

    <!-- Start Departments -->		
    <section class="departments section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Offer Different Departments To Diagnose Your Diseases</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="department-tab">
                        <!-- Nav Tab  -->                                                                                                   
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#t-tab1" role="tab"><i class="icofont-heart-beat"></i><span class="first">Cardiac Clinic</span><span class="second">Lorem Sit</span></a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab2" role="tab"><i class="icofont-brain-alt"></i><span class="first">Neurology</span><span class="second">Quis Est</span></a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab3" role="tab"><i class="icofont-tooth"></i><span class="first">Dentistry</span><span class="second">Sit Dolor</span></a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab4" role="tab"><i class="icofont-heart-beat"></i><span class="first">Gastroenterology</span><span class="second">Lorem Sit</span></a></li>
                            <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#t-tab5" role="tab"><i class="icofont-bone"></i><span class="first">Orthopedagogy</span><span class="second">Lorem Sit</span></a></li>
                        </ul>
                        <!--/ End Nav Tab -->
                        <div class="tab-content" id="myTabContent">
                            <!-- Tab 1 -->
                            <div class="tab-pane fade show active" id="t-tab1" role="tabpanel">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="department-left">
                                            <h3>Cardiac Clinic</h3>
                                            <p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
                                            <ul class="list">
                                                <li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
                                                <li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
                                                <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="department-right">
                                            <img src="https://via.placeholder.com/570x370" alt="#">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Tab 1 -->
                            <!-- Tab 2 -->
                            <div class="tab-pane fade" id="t-tab2" role="tabpanel">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="department-left">
                                            <h3>Neurology</h3>
                                            <p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
                                            <ul class="list">
                                                <li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
                                                <li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
                                                <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="department-right">
                                            <img src="https://via.placeholder.com/570x370" alt="#">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Tab 2 -->
                            <!-- Tab 3 -->
                            <div class="tab-pane fade" id="t-tab3" role="tabpanel">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="department-left">
                                            <h3>Dentistry</h3>
                                            <p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
                                            <ul class="list">
                                                <li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
                                                <li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
                                                <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="department-right">
                                            <img src="https://via.placeholder.com/570x370" alt="#">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Tab 3 -->
                            <!-- Tab 4 -->
                            <div class="tab-pane fade" id="t-tab4" role="tabpanel">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="department-left">
                                            <h3>Gastroenterology</h3>
                                            <p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
                                            <ul class="list">
                                                <li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
                                                <li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
                                                <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="department-right">
                                            <img src="https://via.placeholder.com/570x370" alt="#">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Tab 4 -->
                            <!-- Tab 5 -->
                            <div class="tab-pane fade" id="t-tab5" role="tabpanel">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="department-left">
                                            <h3>Orthopedagogy</h3>
                                            <p class="p1">?Vivamus ut tellus sed tellus finibus egestas. Mauris adipiscing aliquet et nisl nec eleifend adipiscing elit.?</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pharetra ante vel est lobortis, a commodo magna rhoncus. In quis nisi non quam pharetra commodo. </p>
                                            <ul class="list">
                                                <li><i class="fa fa-check"></i>Maecenas vitae luctus nibh. Curabitur pharetra luctus est, sit amet aliquam ex posuere id. </li>
                                                <li><i class="fa fa-check"></i> Maecenas pharetra ante vel est lobortis</li>
                                                <li><i class="fa fa-check"></i>Lorem ipsum dolor sit amet, consectetur.</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="department-right">
                                            <img src="https://via.placeholder.com/570x370" alt="#">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Tab 5 -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Departments -->	

    <!-- Pricing Table -->
    <section class="pricing-table section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Provide You The Best Treatment In Resonable Price</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Single Table -->
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="single-table wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1s">
                        <!-- Table Head -->
                        <div class="table-head">
                            <div class="icon">
                                <i class="icofont icofont-ui-cut"></i>
                            </div>
                            <h4 class="title">Plastic Suggery</h4>
                            <div class="price">
                                <p class="amount">$199<span>/ Per Visit</span></p>
                            </div>	
                        </div>
                        <!-- Table List -->
                        <ul class="table-list">
                            <li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
                            <li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
                            <li class="cross"><i class="icofont icofont-ui-close"></i>Nullam interdum enim</li>
                            <li class="cross"><i class="icofont icofont-ui-close"></i>Donec ultricies metus</li>
                            <li class="cross"><i class="icofont icofont-ui-close"></i>Pellentesque eget nibh</li>
                        </ul>
                        <div class="table-bottom">
                            <a class="btn" href="#">Book Now</a>
                        </div>
                        <!-- Table Bottom -->
                    </div>
                </div>
                <!-- End Single Table-->
                <!-- Single Table -->
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="single-table wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1s">
                        <!-- Table Head -->
                        <div class="table-head">
                            <div class="icon">
                                <i class="icofont icofont-tooth"></i>
                            </div>
                            <h4 class="title">Teeth Whitening</h4>
                            <div class="price">
                                <p class="amount">$299<span>/ Per Visit</span></p>
                            </div>	
                        </div>
                        <!-- Table List -->
                        <ul class="table-list">
                            <li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
                            <li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
                            <li><i class="icofont icofont-ui-check"></i>Nullam interdum enim</li>
                            <li class="cross"><i class="icofont icofont-ui-close"></i>Donec ultricies metus</li>
                            <li class="cross"><i class="icofont icofont-ui-close"></i>Pellentesque eget nibh</li>
                        </ul>
                        <div class="table-bottom">
                            <a class="btn" href="#">Book Now</a>
                        </div>
                        <!-- Table Bottom -->
                    </div>
                </div>
                <!-- End Single Table-->
                <!-- Single Table -->
                <div class="col-lg-4 col-md-12 col-12">
                    <div class="single-table wow fadeInUp" data-wow-delay="0.8s" data-wow-duration="1s">
                        <!-- Table Head -->
                        <div class="table-head">
                            <div class="icon">
                                <i class="icofont-heart-beat"></i>
                            </div>
                            <h4 class="title">Heart Suggery</h4>
                            <div class="price">
                                <p class="amount">$399<span>/ Per Visit</span></p>
                            </div>	
                        </div>
                        <!-- Table List -->
                        <ul class="table-list">
                            <li><i class="icofont icofont-ui-check"></i>Lorem ipsum dolor sit</li>
                            <li><i class="icofont icofont-ui-check"></i>Cubitur sollicitudin fentum</li>
                            <li><i class="icofont icofont-ui-check"></i>Nullam interdum enim</li>
                            <li><i class="icofont icofont-ui-check"></i>Donec ultricies metus</li>
                            <li><i class="icofont icofont-ui-check"></i>Pellentesque eget nibh</li>
                        </ul>
                        <div class="table-bottom">
                            <a class="btn" href="#">Book Now</a>
                        </div>
                        <!-- Table Bottom -->
                    </div>
                </div>
                <!-- End Single Table-->
            </div>	
        </div>	
    </section>	
    <!--/ End Pricing Table -->

    <!-- Start Team -->
    <section id="team" class="team section overlay" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Have Specialist Doctors To Solve Your Problems</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img2.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-3 col-md-6 col-12" data-tilt>
                    <!-- Single Team -->
                    <div class="single-team wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1s">
                        <div class="t-head">
                            <img src="https://via.placeholder.com/560x575" alt="#">
                            <div class="t-icon">
                                <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                            </div>
                        </div>
                        <div class="t-bottom">
                            <p>Neurosurgeon</p>
                            <h2><a href="${pageContext.request.contextPath}/Main Template/doctor-details.html">Collis Molate</a></h2>
                        </div>
                    </div>
                    <!-- End Single Team -->
                </div>	
                <div class="col-lg-3 col-md-6 col-12 " data-tilt>
                    <!-- Single Team -->
                    <div class="single-team wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1s">
                        <!-- Team Head -->
                        <div class="t-head">
                            <img src="https://via.placeholder.com/560x575" alt="#">
                            <div class="t-icon">
                                <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                            </div>
                        </div>
                        <!-- Team Bottom -->
                        <div class="t-bottom">
                            <p>Neurosurgeon</p>
                            <h2><a href="${pageContext.request.contextPath}/Main Template/doctor-details.html">Domani Plavon</a></h2>
                        </div>
                        <!--/ End Team Bottom -->
                    </div>
                    <!-- End Single Team -->
                </div>	
                <div class="col-lg-3 col-md-6 col-12 " data-tilt>
                    <!-- Single Team -->
                    <div class="single-team wow fadeInUp" data-wow-delay="0.8s" data-wow-duration="1s">
                        <!-- Team Head -->
                        <div class="t-head">
                            <img src="https://via.placeholder.com/560x575" alt="#">
                            <div class="t-icon">
                                <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                            </div>
                        </div>
                        <!-- Team Bottom -->
                        <div class="t-bottom">
                            <p>Dental Surgeon</p>
                            <h2><a href="${pageContext.request.contextPath}/Main Template/doctor-details.html">John Mard</a></h2>
                        </div>
                        <!--/ End Team Bottom -->
                    </div>
                    <!-- End Single Team -->
                </div>		
                <div class="col-lg-3 col-md-6 col-12" data-tilt>
                    <!-- Single Team -->
                    <div class="single-team wow fadeInUp" data-wow-delay="1s" data-wow-duration="1s">
                        <!-- Team Head -->
                        <div class="t-head">
                            <img src="https://via.placeholder.com/560x575" alt="#">
                            <div class="t-icon">
                                <a href="${pageContext.request.contextPath}/Main Template/appointment.html" class="btn">Get Appointment</a>
                            </div>
                        </div>
                        <!-- Team Bottom -->
                        <div class="t-bottom">
                            <p>Neurosurgeon</p>
                            <h2><a href="${pageContext.request.contextPath}/Main Template/doctor-details.html">Amanal Frond</a></h2>
                        </div>
                        <!--/ End Team Bottom -->
                    </div>
                    <!-- End Single Team -->
                </div>		
            </div>
        </div>
    </section>
    <!--/ End Team -->

    <!-- Start Blog Area -->
    <section class="blog section" id="blog">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Keep up with Our Most Recent Medical News.</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1s">
                        <div class="news-head">
                            <img src="https://via.placeholder.com/560x370" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">22 Aug, 2020</div>
                                <h2><a href="${pageContext.request.contextPath}/Main Template/blog-single.html">We have annnocuced our new product.</a></h2>
                                <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1s">
                        <div class="news-head">
                            <img src="https://via.placeholder.com/560x370" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">15 Jul, 2020</div>
                                <h2><a href="${pageContext.request.contextPath}/Main Template/blog-single.html">Top five way for solving teeth problems.</a></h2>
                                <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
                <div class="col-lg-4 col-md-6 col-12">
                    <!-- Single Blog -->
                    <div class="single-news wow fadeInUp" data-wow-delay="0.8s" data-wow-duration="1s">
                        <div class="news-head">
                            <img src="https://via.placeholder.com/560x370" alt="#">
                        </div>
                        <div class="news-body">
                            <div class="news-content">
                                <div class="date">05 Jan, 2020</div>
                                <h2><a href="${pageContext.request.contextPath}/Main Template/blog-single.html">We provide highly business soliutions.</a></h2>
                                <p class="text">Lorem ipsum dolor a sit ameti, consectetur adipisicing elit, sed do eiusmod tempor incididunt sed do incididunt sed.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Blog -->
                </div>
            </div>
        </div>
    </section>
    <!-- End Blog Area -->

    <!-- Start clients -->
    <div class="clients overlay">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-12">
                    <div class="owl-carousel clients-slider">
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                        <div class="single-clients">
                            <img src="https://via.placeholder.com/200x100" alt="#">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/Ens clients -->

    <!-- Start Appointment -->
    <section class="appointment">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>We Are Always Ready to Help You. Book An Appointment</h2>
                        <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-12 col-12">
                    <form class="form" action="#">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <input name="name" type="text" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <input name="email" type="email" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <input name="phone" type="text" placeholder="Phone">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <div class="nice-select form-control wide" tabindex="0"><span class="current">Department</span>
                                        <ul class="list">
                                            <li data-value="1" class="option selected ">Department</li>
                                            <li data-value="2" class="option">Cardiac Clinic</li>
                                            <li data-value="3" class="option">Neurology</li>
                                            <li data-value="4" class="option">Dentistry</li>
                                            <li data-value="5" class="option">Gastroenterology</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <div class="nice-select form-control wide" tabindex="0"><span class="current">Doctor</span>
                                        <ul class="list">
                                            <li data-value="1" class="option selected ">Doctor</li>
                                            <li data-value="2" class="option">Dr. Akther Hossain</li>
                                            <li data-value="3" class="option">Dr. Dery Alex</li>
                                            <li data-value="4" class="option">Dr. Jovis Karon</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="form-group">
                                    <input type="text" placeholder="Date" id="datepicker">
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-12">
                                <div class="form-group">
                                    <textarea name="message" placeholder="Write Your Message Here....."></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-5 col-md-4 col-12">
                                <div class="form-group">
                                    <div class="button">
                                        <button type="submit" class="btn">Book An Appointment</button>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-7 col-md-8 col-12">
                                <p>( We will be confirm by an Text Message )</p>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-6 col-md-12 ">
                    <div class="appointment-image">
                        <img src="${pageContext.request.contextPath}/Main Template/img/200x100(1).jpg" alt="#">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Appointment -->

    <!-- Start Newsletter Area -->
    <section class="newsletter section">
        <div class="container">
            <div class="row ">
                <div class="col-lg-6  col-12">
                    <!-- Start Newsletter Form -->
                    <div class="subscribe-text ">
                        <h6>Sign up for newsletter</h6>
                        <p class="">Cu qui soleat partiendo urbanitas. Eum aperiri indoctum eu,<br> homero alterum.</p>
                    </div>
                    <!-- End Newsletter Form -->
                </div>
                <div class="col-lg-6  col-12">
                    <!-- Start Newsletter Form -->
                    <div class="subscribe-form ">
                        <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                            <input name="EMAIL" placeholder="Your email address" class="common-input" onfocus="this.placeholder = ''"
                                   onblur="this.placeholder = 'Your email address'" required="" type="email">
                            <button class="btn">Subscribe</button>
                        </form>
                    </div>
                    <!-- End Newsletter Form -->
                </div>
            </div>
        </div>
    </section>
    <!-- /End Newsletter Area -->

    <!-- Footer Area -->
    <footer id="footer" class="footer ">
        <!-- Footer Top -->
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="single-footer">
                            <h2>About Us</h2>
                            <p>Lorem ipsum dolor sit am consectetur adipisicing elit do eiusmod tempor incididunt ut labore dolore magna.</p>
                            <!-- Social -->
                            <ul class="social">
                                <li><a href="#"><i class="icofont-facebook"></i></a></li>
                                <li><a href="#"><i class="icofont-google-plus"></i></a></li>
                                <li><a href="#"><i class="icofont-twitter"></i></a></li>
                                <li><a href="#"><i class="icofont-vimeo"></i></a></li>
                                <li><a href="#"><i class="icofont-pinterest"></i></a></li>
                            </ul>
                            <!-- End Social -->
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="single-footer f-link">
                            <h2>Quick Links</h2>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-12">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Home</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>About Us</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Services</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Our Cases</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Other Links</a></li>	
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-md-6 col-12">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Consuling</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Finance</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Testimonials</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>FAQ</a></li>
                                        <li><a href="#"><i class="fa fa-caret-right" aria-hidden="true"></i>Contact Us</a></li>	
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="single-footer">
                            <h2>Open Hours</h2>
                            <p>Lorem ipsum dolor sit ame consectetur adipisicing elit do eiusmod tempor incididunt.</p>
                            <ul class="time-sidual">
                                <li class="day">Monday - Fridayp <span>8.00-20.00</span></li>
                                <li class="day">Saturday <span>9.00-18.30</span></li>
                                <li class="day">Monday - Thusday <span>9.00-15.00</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <div class="single-footer">
                            <h2>Newsletter</h2>
                            <p>subscribe to our newsletter to get allour news in your inbox.. Lorem ipsum dolor sit amet, consectetur adipisicing elit,</p>
                            <form action="mail/mail.php" method="get" target="_blank" class="newsletter-inner">
                                <input name="email" placeholder="Email Address" class="common-input" onfocus="this.placeholder = ''"
                                       onblur="this.placeholder = 'Your email address'" required="" type="email">
                                <button class="button"><i class="icofont icofont-paper-plane"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Footer Top -->
        <!-- Copyright -->
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12">
                        <div class="copyright-content">
                            <p>? Copyright 2018  |  All Rights Reserved by <a href="${pageContext.request.contextPath}/Main Template/https://www.wpthemesgrid.com" target="_blank">wpthemesgrid.com</a> </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Copyright -->
    </footer>
    <!--/ End Footer Area -->

    <!-- jquery Min JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery.min.js"></script>
    <!-- jquery Migrate JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery-migrate-3.0.0.js"></script>
    <!-- jquery Ui JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery-ui.min.js"></script>
    <!-- Easing JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/easing.js"></script>
    <!-- Color JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/colors.js"></script>
    <!-- Popper JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/popper.min.js"></script>
    <!-- Bootstrap Datepicker JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/bootstrap-datepicker.js"></script>
    <!-- Jquery Nav JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery.nav.js"></script>
    <!-- Slicknav JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/slicknav.min.js"></script>
    <!-- ScrollUp JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery.scrollUp.min.js"></script>
    <!-- Niceselect JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/niceselect.js"></script>
    <!-- Tilt Jquery JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/tilt.jquery.min.js"></script>
    <!-- Owl Carousel JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/owl-carousel.js"></script>
    <!-- counterup JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery.counterup.min.js"></script>
    <!-- Steller JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/steller.js"></script>
    <!-- Wow JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/wow.min.js"></script>
    <!-- Magnific Popup JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/jquery.magnific-popup.min.js"></script>
    <!-- Counter Up CDN JS -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/bootstrap.min.js"></script>
    <!-- Main JS -->
    <script src="${pageContext.request.contextPath}/Main Template/js/main.js"></script>
    <script>
                                           document.getElementById("user-icon").addEventListener("click", function () {
                                               var userOptions = document.getElementById("user-options");
                                               if (userOptions.style.display === "none") {
                                                   userOptions.style.display = "inline-block";
                                               } else {
                                                   userOptions.style.display = "none";
                                               }
                                           });
    </script>
</body>
</html>