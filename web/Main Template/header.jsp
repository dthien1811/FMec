<%-- 
    Document   : header
    Created on : Mar 13, 2024, 10:49:46 AM
    Author     : My Computer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Enums.UserRoleEnum"%>
<%@page import="entity.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /*CSS bieu tuong nguoi dung*/
            #user-icon:hover i {
                transform: scale(1.2); /* T?ng kích th??c c?a bi?u t??ng khi di chu?t qua */
                cursor: pointer !important;
            }

            #user-options a:hover {
                background-color: #1A76D1; /* ??i màu n?n khi di chu?t qua */
                color: #000; /* ??i màu ch? khi di chu?t qua */
            }
            
            .btn:hover {
                cursor: pointer !important;
            }
        </style>
        <script>
            window.onload = function(){
                var endPoint = document.getElementById("getStartEndTimeEndpoint").value;
                $.ajax({
                    type: "GET",
                    url: endPoint,
                    success: function (response) {
                        console.log(response);
                        const startDate = response.split("&")[0];
                        const endDate = response.split("&")[1];
                        console.log(startDate);
                        $("#startDate").append(startDate + "");
                        $("#endDate").append(endDate + "");
                    }
                });
            }
        </script>
    </head>
    <body>
        <input type="hidden" id="getStartEndTimeEndpoint" value="${pageContext.request.contextPath}/GetStartEndTimeController"/>
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
        <!-- Header Area -->
        <header class="header" >
            <!-- Topbar -->
            <div class="topbar">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-5 col-12">
                        </div>
                        <div class="col-lg-6 col-md-7 col-12">
                            <!-- Top Contact -->
                            <ul class="top-contact">
                                <c:if test="${not empty sessionScope.user}" >
                                    <li><i class="fa fa-user"></i>Welcome : ${sessionScope.user.email}</li>
                                </c:if>
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
                                <a href="${pageContext.request.contextPath}/HomeServlet"><img src="${pageContext.request.contextPath}/Main Template/img/logo.png" alt="#"></a>
                            </div>
                            <!-- End Logo -->
                        </div>
                        <div class="col-lg-9 col-md-9 col-12">
                            <div class="widget-main">
                                <!-- Single Widget -->
                                <div class="single-widget">
                                    <i class="icofont-clock-time"></i>
                                    <p>Opening Time</p>
                                    <h4>Mon-Sat: <span id="startDate"></span> - <span id="endDate"></span> </h4>
                                </div>
                                <!--/ End Single Widget -->
                                <!-- Single Widget -->
                                <div class="single-widget">
                                    <c:if test="${empty sessionScope.user or sessionScope.user.role eq 'Customer'}">
                                        <a href="${pageContext.request.contextPath}/appointment" class="btn" style="color: white;">Book Appointment</a>
                                    </c:if>
                                </div>
                                <!--/ End Single Widget -->
                                <!-- Single Widget: Thêm bi?u t??ng ng??i dùng -->
                                <!-- Single Widget: Thêm bi?u t??ng ng??i dùng -->
                                <div class="single-widget">
                                    <a id="user-icon">
                                        <i class="icofont-user-alt-7"></i>
                                    </a>
                                    <!-- Hi?n th? ch? Profile và Login -->
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
                            <div class="col-lg-7 col-md-9 col-12">
                                <c:choose>
                                    <c:when test="${not empty sessionScope.user and sessionScope.user.role eq 'Admin'}">
                                        <!-- Main Menu -->
                                        <div class="main-menu">
                                            <nav class="navigation">
                                                <ul class="nav menu">
                                                    <li><a href="${pageContext.request.contextPath}/createDoctor">Doctor Management <i class="icofont-rounded-down"></i></a>
                                                    </li>
                                                    <li><a href="${pageContext.request.contextPath}/viewAppointment">Appointment <i class="icofont-rounded-down"></i></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <!--/ End Main Menu -->
                                    </c:when>
                                    <c:when test="${not empty sessionScope.user and sessionScope.user.role eq 'Professor'}">
                                        <!-- Main Menu -->
                                        <div class="main-menu">
                                            <nav class="navigation">
                                                <ul class="nav menu">
                                                    <li><a href="${pageContext.request.contextPath}/timeTableRegistration">Time table <i class="icofont-rounded-down"></i></a>
                                                    </li>
                                                    <li><a href="${pageContext.request.contextPath}/doctorAppointment">Appointment <i class="icofont-rounded-down"></i></a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <!--/ End Main Menu -->
                                    </c:when>
                                    <c:otherwise>
                                        <!-- Main Menu -->
                                        <div class="main-menu">
                                            <nav class="navigation">
                                                <ul class="nav menu">
                                                    <li><a href="${pageContext.request.contextPath}/doctors">Doctors <i class="icofont-rounded-down"></i></a>
                                                    </li>
                                                    <li><a href="#">Services <i class="icofont-rounded-down"></i></a></li>
                                                    <li><a href="${pageContext.request.contextPath}/BlogServlet">Blogs <i class="icofont-rounded-down"></i></a>
                                                    </li>
                                                    <li><a href="#">Appointment <i class="icofont-rounded-down"></i></a>
                                                        <ul class="dropdown">
                                                            <li><a href="${pageContext.request.contextPath}/appointment">Booking Appointment</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/myAppointment">My Appointment</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Contact Us</a></li>
                                                </ul>
                                            </nav>
                                        </div>
                                        <!--/ End Main Menu -->
                                    </c:otherwise>
                                </c:choose>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ End Header Inner -->
        </header>
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
        <!-- End Header Area -->
    </body>
</html>
