
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="entity.TimeSession"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">


        <title>profile edit data and skills - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Title -->
        <title>Mediplus - Medical and Doctor Directory HTML Template.</title>

        <!-- Favicon -->
        <link rel="icon" href="img/favicon.png">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/Main Template/css/color/color1.css">


        <link rel="stylesheet" href="#" id="colors">

    </head>
    <body>

        <!-- Preloader -->
        <!--        <div class="preloader">
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
                </div>-->
        <!-- End Preloader -->

        <!-- Mediplus Color Plate -->
        <div class="color-plate">
            <a class="color-plate-icon"><i class="fa fa-cog fa-spin"></i></a>
            <h4>Mediplus</h4>
            <p>Here is some awesome color's available on Mediplus Template.</p>
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
        <header class="header" >
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-5 col-12">
                            <!-- Contact -->
                            <ul class="top-link">
                                <li><a href="#">About</a></li>
                                <li><a href="#">Doctors</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">FAQ</a></li>
                            </ul>
                            <!-- End Contact -->
                        </div>
                        <div class="col-lg-6 col-md-7 col-12">
                            <!-- Top Contact -->
                            <ul class="top-contact">
                                <li><i class="fa fa-phone"></i>+880 1234 56789</li>
                                <li><i class="fa fa-envelope"></i><a href="mailto:support@yourmail.com">support@yourmail.com</a></li>
                            </ul>
                            <!-- End Top Contact -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Topbar -->
            <!-- Header Inner -->
            <div class="header-inner">
                <div class="container">
                    <div class="inner">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-12">
                                <!-- Start Logo -->
                                <div class="logo">
                                    <a href="index.html"><img src="img/logo.png" alt="#"></a>
                                </div>
                                <!-- End Logo -->
                                <!-- Mobile Nav -->
                                <div class="mobile-nav"></div>
                                <!-- End Mobile Nav -->
                            </div>
                            <div class="col-lg-7 col-md-9 col-12">
                                <!-- Main Menu -->
                                <div class="main-menu">
                                    <nav class="navigation">
                                        <ul class="nav menu">
                                            <li class="active"><a href="#">Home <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="index.html">Home Page 1</a></li>
                                                    <li><a href="index2.html">Home Page 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Doctos <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="${pageContext.request.contextPath}/doctors">Doctor</a></li>
                                                    <li><a href="doctor-details.html">Doctor Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Services <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="service.html">Service</a></li>
                                                    <li><a href="service-details.html">Service Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Pages <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="about.html">About Us</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/appointment">Appointment</a></li>
                                                    <li><a href="time-table.html">Time Table</a></li>
                                                    <li><a href="testimonials.html">Testimonials</a></li>
                                                    <li><a href="pricing.html">Our Pricing</a></li>
                                                    <li><a href="register.html">Sign Up</a></li>
                                                    <li><a href="login.html">Login</a></li>
                                                    <li><a href="faq.html">Faq</a></li>
                                                    <li><a href="mail-success.html">Mail Success</a></li>
                                                    <li><a href="404.html">404 Error</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Blogs <i class="icofont-rounded-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="blog-grid.html">Blog Grid</a></li>
                                                    <li><a href="blog-single.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact Us</a></li>
                                        </ul>
                                    </nav>
                                </div>
                                <!--/ End Main Menu -->
                            </div>
                            <div class="col-lg-2 col-12">
                                <div class="get-quote">
                                    <a href="${pageContext.request.contextPath}/appointment" class="btn">Book Appointment</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Header Inner -->
        </header>
        <!-- End Header Area -->

        <!-- Breadcrumbs -->
        <div class="breadcrumbs overlay">
            <div class="container">
                <div class="bread-inner">
                    <div class="row">
                        <div class="col-12">
                            <h2>Time Table</h2>
                            <ul class="bread-list">
                                <li><a href="index.html">Home</a></li>
                                <li><i class="icofont-simple-right"></i></li>
                                <li class="active">Time Table</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumbs -->


        <!-- Start Doctor Calendar Area -->
        <section class="doctor-calendar-area section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title">
                            <h2>Determine Your Date to Come</h2>
                            <img src="${pageContext.request.contextPath}/Main Template/img/section-img.png" alt="#">
                            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit praesent aliquet. pretiumts</p>
                        </div>
                    </div>
                </div>
         
                  
                      
                            <div class="container">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="doctor-calendar-table table-responsive">
                                            <table class="table">

                                                <thead>

                                                    <tr>        
                                                        
                                                        <th>
                                                            Doctor
                                                        </th>
                                                        <th>
                                                            Start time
                                                        </th>
                                                        <th>
                                                            End time
                                                        </th>
                                                        <th>
                                                            Functions
                                                        </th>
                                                    </tr>

                                                </thead>
                                                <tbody>

                                                    <c:forEach items="${dayOfWeeks}" var="day">
                                                        <tr>
                                                            <td>
                                                                ${day.dayOfWeekName}
                                                            </td>
                                                            <c:forEach items="${requestScope.timeSessions}" var="timeSession">
                                                                <c:url var="updateLink" value="TimeSessionServlet">
                                                                    <c:param name="command" value="loadToUpdate"></c:param>
                                                                    <c:param name="timeSessionId" value="${timeSession.timeSessionId}"></c:param>
                                                                </c:url>
                                                                <c:url var="deleteLink" value="TimeSessionServlet">
                                                                    <c:param name="command" value="delete"></c:param>
                                                                    <c:param name="timeSessionId" value="${timeSession.timeSessionId}"></c:param>
                                                                </c:url>
                                                                <c:if test="${timeSession.day.dayOfWeekId== day.dayOfWeekId}" >

                                                                <tr>
                                                                    <td>
                                                                        ${timeSession.user.getName()}
                                                                    </td>
                                                                    <td>
                                                                        <span class="time">
                                                                            ${timeSession.timeManagement.timeStart}
                                                                        </span> 
                                                                    </td>
                                                                    <td>
                                                                        <span class="time">
                                                                            ${timeSession.timeManagement.timeEnd} 
                                                                        </span>

                                                                    </td>
                                                                    <td>

                                                                        <a href="${updateLink}">
                                                                            Edit
                                                                        </a>
                                                                        <a href="${deleteLink}">
                                                                            Delete
                                                                        </a>    
                                                                    </td>
                                                                </tr>



                                                            </c:if>
                                                        </c:forEach>
                                                        </tr>
                                                    </c:forEach>


                                                        <c:url value="TimeSessionServlet" var="addUrl">
                                                        <c:param name="command" value="loadToAdd" />
                                                        <!-- Add other parameters as needed -->
                                                    </c:url>
                                                <br><!-- comment -->
                                                <button class="btn btn-dark">
                                                    <li><a href="${addUrl}">Add</a></li>
                                                </button>
                                                </tbody>
                                            </table>
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
                                                <p>© Copyright 2018  |  All Rights Reserved by <a href="https://www.wpthemesgrid.com" target="_blank">wpthemesgrid.com</a> </p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--/ End Copyright -->
                        </footer>
                        <!--/ End Footer Area -->

                        <!-- jquery Min JS -->
                        <script src="js/jquery.min.js"></script>
                        <!-- jquery Migrate JS -->
                        <script src="js/jquery-migrate-3.0.0.js"></script>
                        <!-- jquery Ui JS -->
                        <script src="js/jquery-ui.min.js"></script>
                        <!-- Easing JS -->
                        <script src="js/easing.js"></script>
                        <!-- Color JS -->
                        <script src="js/colors.js"></script>
                        <!-- Popper JS -->
                        <script src="js/popper.min.js"></script>
                        <!-- Bootstrap Datepicker JS -->
                        <script src="js/bootstrap-datepicker.js"></script>
                        <!-- Jquery Nav JS -->
                        <script src="js/jquery.nav.js"></script>
                        <!-- Slicknav JS -->
                        <script src="js/slicknav.min.js"></script>
                        <!-- ScrollUp JS -->
                        <script src="js/jquery.scrollUp.min.js"></script>
                        <!-- Niceselect JS -->
                        <script src="js/niceselect.js"></script>
                        <!-- Tilt Jquery JS -->
                        <script src="js/tilt.jquery.min.js"></script>
                        <!-- Owl Carousel JS -->
                        <script src="js/owl-carousel.js"></script>
                        <!-- counterup JS -->
                        <script src="js/jquery.counterup.min.js"></script>
                        <!-- Steller JS -->
                        <script src="js/steller.js"></script>
                        <!-- Wow JS -->
                        <script src="js/wow.min.js"></script>
                        <!-- Magnific Popup JS -->
                        <script src="js/jquery.magnific-popup.min.js"></script>
                        <!-- Counter Up CDN JS -->
                        <script src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
                        <!-- Bootstrap JS -->
                        <script src="js/bootstrap.min.js"></script>
                        <!-- Main JS -->
                        <script src="js/main.js"></script>
                        </body>
                        </html>