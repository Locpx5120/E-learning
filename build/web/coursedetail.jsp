<%-- 
    Document   : roomdetail
    Created on : Jan 20, 2024, 3:52:19 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="Sona Template">
        <meta name="keywords" content="Sona, unica, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Sona | Template</title>

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <!-- Css Styles -->
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="css/flaticon.css" type="text/css">
        <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="css/style_1.css" type="text/css">


        <style>
            .select-option input[type = text] {
                width: 100%;
                height: 50px;
                border: 1px solid #e5e5e5;
                font-size: 16px;
                color: #aaaab3;
                padding-left: 20px;
                margin-bottom: 25px;
            }
        </style>

        <style>
            .footer-color {
                background: #7dbaab;
            }

            .footer-btn {
                background: #415762;
            }

            .check-container {
                background: #7dbaab;
                height: 82px;
                width: 82px;
            }

            .iconheight {
                height: 36px;
                width: 36px;
            }

            .btn:hover {
                color: var(--bs-btn-hover-color);
                background: #415762;
                border-color: #415762;
            }

            .angle::after {
                position: absolute;
                content: "";
                height: 20px;
                width: 20px;
                top: -1px;
                left: 48%;
                background: #fff;
                clip-path: polygon(50% 50%, 0 0, 100% 0);
            }
        </style>

        <style>
            #content li{
                display: flex;
                margin-top: 15px;
            }

            #content li i {
                margin-right:  25px;

            }

            #lecture:hover {
                color: #7dbaab;
            }
            
            #course-suggested {
                color: #dfa974;
            }
            
            #course-suggested:hover {
                color: #e9e9e9;
            }
        </style>
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Offcanvas Menu Section Begin -->
        <div class="offcanvas-menu-overlay"></div>
        <div class="canvas-open">
            <i class="icon_menu"></i>
        </div>
        <div class="offcanvas-menu-wrapper">
            <div class="canvas-close">
                <i class="icon_close"></i>
            </div>
            <div class="search-icon search-switch">
                <i class="icon_search"></i>
            </div>
            <div class="header-configure-area">
                <div class="language-option">
                    <img src="img/flag.jpg" alt="">
                    <span>EN <i class="fa fa-angle-down"></i></span>
                    <div class="flag-dropdown">
                        <ul>
                            <li><a href="#">Zi</a></li>
                            <li><a href="#">Fr</a></li>
                        </ul>
                    </div>
                </div>
                <a href="#" class="bk-btn">Booking Now</a>
            </div>
            <nav class="mainmenu mobile-menu">
                <ul>
                    <li class="active"><a href="./index.html">Home</a></li>
                    <li><a href="./rooms.html">Rooms</a></li>
                    <li><a href="./about-us.jsp">About Us</a></li>
                    <li><a href="./pages.html">Pages</a>
                        <ul class="dropdown">
                            <li><a href="./room-details.html">Room Details</a></li>
                            <li><a href="./blog-details.html">Blog Details</a></li>
                            <li><a href="#">Family Room</a></li>
                            <li><a href="#">Premium Room</a></li>
                        </ul>
                    </li>
                    <li><a href="./blog.html">News</a></li>
                    <li><a href="./contact.jsp">Contact</a></li>
                </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="top-social">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-tripadvisor"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
            </div>
            <ul class="top-widget">
                <li><i class="fa fa-phone"></i> (12) 345 67890</li>
                <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
            </ul>
        </div>
        <!-- Offcanvas Menu Section End -->

        <!-- Header Section Begin -->
        <header class="header-section header-normal">
            <div class="top-nav">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="tn-left">
                                <li><i class="fa fa-phone"></i> (12) 345 67890</li>
                                <li><i class="fa fa-envelope"></i> info.colorlib@gmail.com</li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <div class="tn-right">
                                <a href="viewCourse" class="bk-btn">Booking Now</a>
                                <div class="language-option">
                                    <img src="https://cdn-icons-png.flaticon.com/512/1077/1077114.png" alt="">
                                    <c:if test="${sessionScope.User != null}">

                                        <span>User <i class="fa fa-angle-down"></i></span>
                                        </c:if>
                                        <c:if test="${sessionScope.User eq null}">
                                        <span><i class="fa fa-sign-in"></i></span>
                                        </c:if>
                                    <div class="flag-dropdown">
                                        <ul>
                                            <c:if test="${sessionScope.User != null}">
                                                <li><a href="profile">Profile</a></li>
                                                <li><a href="mycourses">Enrolled</a></li> 
                                                <li><a href="log">Logout</a></li>
                                                </c:if>
                                                <c:if test="${sessionScope.User eq null}">
                                                <li><a href="login.jsp">Login</a></li>
                                                </c:if>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="menu-item">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2">
                            <div class="logo">
                                <a href="home">
                                    <img src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="nav-menu">
                                <nav class="mainmenu">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li class="active"><a href="viewCourse">Courses</a></li>
                                        <li><a href="./about-us.html">About Us</a></li>
                                        <li><a href="viewquestion">Community</a></li>
                                        <li><a href="./contact.jsp">Contact</a></li>
                                    </ul>
                                </nav>
                                <div class="nav-right search-switch">
                                    <i class="icon_search"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header End -->

        <!-- Breadcrumb Section Begin -->
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>Our Rooms</h2>
                            <div class="bt-option">
                                <a href="home">Home</a>
                                <span>Rooms</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->

        <!-- Room Details Section Begin -->
        <section class="room-details-section spad">
            <c:forEach items="${courseDetail}" var="courseEntry">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <c:set var="course" value="${courseEntry.key}" />
                            <div class="room-details-item">
                                <img src="${course.getImage()}" style="width: 100%;" alt="">
                                <div class="rd-text">
                                    <div class="rd-title">
                                        <h3>${course.getCourseName()}</h3>
                                        <c:set var="ratingData" value="${courseEntry.value}" />
                                        <c:forEach var="ratingEntry" items="${ratingData}">
                                            <c:set var="rating" value="${ratingEntry.key}"/>
                                            <c:set var="roundedRating" value="${Math.floor(rating)}"/>
                                            <c:set var="hasHalfStar" value="${rating - roundedRating > 0}"/>
                                            <div class="rdt-right">

                                                <div class="rating">

                                                    <c:forEach begin="1" end="5" var="i">
                                                        <c:choose>
                                                            <c:when test="${i <= roundedRating}">
                                                                <i class="bx bxs-star"></i>
                                                            </c:when>
                                                            <c:when test="${i == roundedRating + 1 && hasHalfStar}">
                                                                <i class="bx bxs-star-half"></i>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <i class="bx bx-star"></i>
                                                            </c:otherwise>
                                                        </c:choose>
                                                    </c:forEach>
                                                    <i><p>${String.format("%.2f", rating)} / 5 </p></i>
                                                </div>
                                            </div>
                                        </c:forEach>

                                    </div>
                                    <h2>${String.format("%,.0f", course.getPrice() * (100 - course.getDiscount())/100)}$<span>/Enroll</span></h2>
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td class="r-o">Total student: </td>
                                                <td>${studentsNumber} students</td>
                                            </tr>
                                            <tr>
                                                <td class="r-o">Level: </td>
                                                <td>${course.getLevel()}</td>
                                            </tr>
                                            <tr>
                                                <td class="r-o">Created by: </td>
                                                <td><a id="lecture" href="viewlecturerdetail?username=${course.getAuthor().getUsername()}">${course.getAuthor().getFullName()}</a></td>
                                            </tr>
                                            <tr>
                                                <td class="r-o">Last updated:</td>
                                                <td>${course.getUpdateDate()}</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p class="f-para">
                                        ${course.getLongDescription()}
                                    </p>
                                </div>
                            </div>

                            <div class="rd-reviews">
                                <h4>Students also bought: </h4>

                                <c:forEach items="${listSuggested}" var="course">
                                    <div class="review-item">
                                        <div class="ri-pic">
                                            <img src="${course.getKey().getImage()}" alt="">
                                        </div>
                                        <div class="ri-text">
                                            <span>${course.getKey().getLevel()}</span>
                                            <div class="rating">
                                                <c:set var="roundedRating" value="${Math.floor(course.getValue())}"/>
                                                <c:set var="hasHalfStar" value="${course.getValue() - roundedRating > 0}"/>    
                                                <c:forEach begin="1" end="5" var="i">
                                                    <c:choose>
                                                        <c:when test="${i <= roundedRating}">
                                                            <i class="bx bxs-star"></i>
                                                        </c:when>
                                                        <c:when test="${i == roundedRating + 1 && hasHalfStar}">
                                                            <i class="bx bxs-star-half"></i>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <i class="bx bx-star"></i>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                                <i><p>${String.format("%.2f", course.getValue())} / 5 </p></i>
                                                <i >
                                                    <a id="course-suggested" href="coursedetail?id=${courses.getCourseId()}" style="border-bottom: 3px solid #dfa974;">
                                                        View detail <i class="fa fa-long-arrow-right" ></i>
                                                    </a>
                                                </i>
                                            </div>
                                            <h5>${course.getKey().getCourseName()}</h5>
                                            <p>${course.getKey().getDescription()}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="rd-reviews">
                                <h4>Reviews</h4>

                                <c:forEach items="${listFeedback}" var="fb">
                                    <div class="review-item">
                                        <div class="ri-pic">
                                            <img src="https://cdn-icons-png.flaticon.com/512/1077/1077114.png" alt="">
                                        </div>
                                        <div class="ri-text">
                                            <span>${fb.getEnrollDate()}</span>
                                            <div class="rating">
                                                <c:forEach begin="1" end="${fb.getRating()}">
                                                    <i class="bx bxs-star"></i>
                                                </c:forEach>

                                                <c:forEach begin="${fb.getRating()}" end="4">
                                                    <i class="bx bx-star"></i>
                                                </c:forEach>
                                            </div>
                                            <h5>${fb.getUsername()}</h5>
                                            <p>${fb.getFeedback()}</p>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="room-booking">
                                <h2 style="font-size: 1.2rem; font-weight: bold" class="ud-heading-md incentives--header--2F4_e" data-purpose="header">This course includes:</h2>
                                <ul id="content" class="d-flex flex-column justify-content-between"  style="list-style-type: none">
                                    <li><i class='bx bxs-videos'></i> 9.5 hours on-demand video</li>
                                    <li><i class='bx bx-download' ></i>95 downloadable resources</li>
                                    <li><i class='bx bx-mobile-alt' ></i>Access on mobile and TV</li>
                                    <li><i class='bx bx-infinite' ></i>Full lifetime access</li>
                                    <li><i class='bx bx-medal' ></i>Certificate of completion</li>
                                    <li><i class='bx bx-world' ></i>English</li>
                                </ul>
                                <div style="margin-top: 30px">
                                    <h3 style="font-size: 1.2rem; font-weight: bold">Top companies using: </h3>
                                    <div>
                                        <img style="margin-bottom: 20px;" src="https://s.udemycdn.com/partner-logos/v4/nasdaq-dark.svg" alt="">
                                        <img style="margin-bottom: 20px;" src="https://s.udemycdn.com/partner-logos/v4/netapp-dark.svg" alt="">
                                        <img style="margin-bottom: 20px;" src="https://s.udemycdn.com/partner-logos/v4/eventbrite-dark.svg" alt="">
                                        <img style="margin-bottom: 20px;" src="https://s.udemycdn.com/partner-logos/v4/box-dark.svg" alt="">
                                    </div>
                                </div>

                                <form action="enroll" class="ra-form" method="post">
                                    <input type="hidden" name="id" value="${courseEntry.key.getCourseId()}">
                                    <input type="hidden" name="amount" value="${courseEntry.key.getPrice() * ((100 - courseEntry.key.getDiscount())/100)}">
                                    <c:choose>
                                        <c:when test="${not empty isEnrolled && isEnrolled}">
                                            <a href="#" style="width: 100%; color: white; border: 0;" class="btn btn-primary">Go to course</a>  
                                        </c:when>
                                        <c:otherwise>
                                            <button type="submit" class="btn btn-primary">Enroll now </button>
                                        </c:otherwise>
                                    </c:choose>
                                    <button id="bookingbtnn" type="button" style="display: none" data-bs-toggle="modal" data-bs-target="#exampleModal"/></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </section>
        <!-- Room Details Section End -->



        <!-- Footer Section Begin -->
        <footer class="footer-section">
            <div class="container">
                <div class="footer-text">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="ft-about">
                                <div class="logo">
                                    <a href="#">
                                        <img src="img/footer-logo.png" alt="">
                                    </a>
                                </div>
                                <p>We inspire and reach millions of travelers<br /> across 90 local websites</p>
                                <div class="fa-social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-tripadvisor"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-youtube-play"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 offset-lg-1">
                            <div class="ft-contact">
                                <h6>Contact Us</h6>
                                <ul>
                                    <li>(12) 345 67890</li>
                                    <li>info.colorlib@gmail.com</li>
                                    <li>856 Cordia Extension Apt. 356, Lake, United State</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 offset-lg-1">
                            <div class="ft-newslatter">
                                <h6>New latest</h6>
                                <p>Get the latest updates and offers.</p>
                                <form action="#" class="fn-form">
                                    <input type="text" placeholder="Email">
                                    <button type="submit"><i class="fa fa-send"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-option">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7">
                            <ul>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Terms of use</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Environmental Policy</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-5">
                            <div class="co-text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer Section End -->

        <!-- Search model Begin -->
        <div class="search-model">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-switch"><i class="icon_close"></i></div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Search here.....">
                </form>
            </div>
        </div>
        <!-- Search model end -->

        <c:if test="${status eq 'available'}">
            <!-- Modal -->
            <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog ">
                    <div class="modal-content rounded-0">
                        <div class="modal-header border-0">
                            <!-- <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1> -->
                            <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="text-center">
                                <div class="d-flex justify-content-center pb-2">
                                    <div class="check-container d-flex justify-content-center align-items-center rounded-pill">
                                        <img class="iconheight"
                                             src="https://img.icons8.com/office/16/000000/checkmark--v1.png"
                                             alt="check-lg">
                                    </div>
                                </div>
                                <h1 class="fw-bold">Awesome!</h1>
                                <p class="fw-bold">You're ready to proceed using Dbook</p>
                            </div>
                        </div>
                        <div class="modal-footer border-0 justify-content-center footer-color rounded-0 position-relative">
                            <div class="angle "></div>
                            <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
                            <div class="text-center p-4 ">
                                <form action="confirmbooking" id="confirmbookingform">
                                    <input type="hidden" class="date-input" id="date-in" name="checkIn" value="${checkIn}">
                                    <input type="hidden" class="date-input" id="date-out" name="checkOut" value="${checkOut}">
                                    <input type="hidden"  name="numRoom" value="${numRoom}">
                                    <input  type="hidden"name="numPeople" value="${numPeople}">
                                    <input  type="hidden"name="id" value="${room.getRID()}">
                                    <button type="button" class="btn shadow-none footer-btn text-white rounded-0 px-5" onclick="submit()">
                                        Start
                                        Booking</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>

        <c:if test="${status ne 'available' && status ne null}">
            <!-- Modal -->
            <div class="modal fade " id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog ">
                    <div class="modal-content rounded-0">
                        <div class="modal-header border-0">
                            <!-- <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1> -->
                            <button type="button" class="btn-close shadow-none" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <div class="text-center">
                                <div class="d-flex justify-content-center pb-2">
                                    <div class="check-container d-flex justify-content-center align-items-center rounded-pill" style="background: red">
                                        <img class="iconheight"
                                             src="images/close.png" alt="check-lg">
                                    </div>
                                </div>
                                <h1 class="fw-bold">Sadly!</h1>
                                <p class="fw-bold">Our room remain only ${total}! please try ours others rooms.</p>
                            </div>
                        </div>
                        <div class="modal-footer border-0 justify-content-center footer-color rounded-0 position-relative" style="background: red">
                            <div class="angle "></div>
                            <!-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> -->
                            <div class="text-center p-4 ">
                                <form action="confirmbooking" id="confirmbookingform">
                                    <input type="hidden" class="date-input" id="date-in" name="checkIn" value="${checkIn}">
                                    <input type="hidden" class="date-input" id="date-out" name="checkOut" value="${checkOut}">
                                    <input type="hidden"  name="numRoom" value="${numRoom}">
                                    <input  type="hidden"name="numPeople" value="${numPeople}">
                                    <button type="button" class="btn shadow-none footer-btn text-white rounded-0 px-5" aria-label="Close" data-bs-dismiss="modal">
                                        Try Again</button>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>



        <!-- bootstrap link -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>


    <script>
                                        if ('${status}' !== null) {
                                            document.getElementById('bookingbtnn').click();
                                        }
                                        function submit() {
                                            document.getElementById('confirmbookingform').submit();
                                        }

    </script>


</html>
