<%-- 
    Document   : listrooms
    Created on : Jan 20, 2024, 2:23:09 PM
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
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            .contain-section {
                border: 1px solid #777;
            }
            
            li {
                list-style-type: none
            }

            .lesson {
                border: 1px solid #777;
                padding: 10px;
            }

            .lesson a {
                color: black;
            }

            .col-lg-3 {
                padding: 0;
            }

            .lesson a:hover {
                text-decoration: none;
                color: #888;
            }

            .activee {
                background-color: #888;
            }
        </style>
        
        <link rel="stylesheet" href="css/certificates.css"/>
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
                                    <img style="width: 50px; height: 50px" src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="nav-menu">
                                <nav class="mainmenu">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li class="active"><a href="viewCourse">Course</a></li>
                                        <li><a href="./about-us.jsp">About Us</a></li>

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
        <div class="breadcrumb-section" style="padding-bottom: 10px">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>Our Course</h2>
                            <div class="bt-option">
                                <a href="home">Home</a>
                                <span>Certificate</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->

        <!-- Rooms Section Begin -->
        <section class="rooms-section spad col-lg-12 d-flex justify-content-center" style="width: 100vw;  height: 100vh;">
            <div class="main-content">
            <h2 style="margin-left: 100px; font-size: 30px; margin-bottom: 50px; text-align: center">
                Congratigation on finishing our course,
                here is your certificate</h2>
            <div class="contain-certificate">

                <div style="width: 45%; margin-right: 40px; height: fit-content; height: 100vh;">
                    <div class="user">
                        <img src="${sessionScope.User.getImg()}" alt="">
                        <div style="margin-left: 30px;">
                            <p>
                                <strong>Completed by:</strong>  ${sessionScope.User.getFullName()}
                            </p>
                            <p>
                                <strong>Enroll Date:</strong> ${enrollDate}
                            </p>
                            <p>
                                <strong>Finished Date:</strong> ${finishDate}
                            </p>
                            <p style="max-width: 450px;">
                                ${sessionScope.User.getFullName()}'s account is verified. FocusLearn certifies their successful completion
                                of ${course.getCourseName()}
                            </p>
                        </div>
                    </div>

                    <div style="margin-top: 30px; ">
                        <div class="course">
                            <img src="${course.getImage()}" alt="">
                            <div>
                                <p style="max-width: 450px; font-weight: bold;">
                                    ${course.getCourseName()}
                                </p>
                                <a href="viewlecturerdetail?username=${course.getAuthor().getUsername()}">${courses.getAuthor().getFullName()}</a>
                                <ul style="margin: 0; padding: 0; display: flex;">
                                    <c:forEach items="${courseDetail}" var="courseEntry">
                                        <c:set var="ratingData" value="${courseEntry.value}" />
                                        <c:forEach var="ratingEntry" items="${ratingData}">
                                            <c:set var="rating" value="${ratingEntry.key}"/>
                                            <c:set var="roundedRating" value="${Math.floor(rating)}"/>
                                            <c:set var="hasHalfStar" value="${rating - roundedRating > 0}"/>
                                            <c:forEach begin="1" end="5" var="i">
                                                <c:choose>
                                                    <c:when test="${i <= roundedRating}">
                                                        <li><i class="bx bxs-star"></i></li>
                                                        </c:when>
                                                        <c:when test="${i == roundedRating + 1 && hasHalfStar}">
                                                        <li><i class="bx bxs-star-half"></i></li>
                                                        </c:when>
                                                        <c:otherwise>
                                                        <li><i class="bx bx-star"></i></li>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                            <li>${String.format("%.2f", rating)} (${ratingEntry.value} ratings) | ${studentsNumber} students</li>
                                            </c:forEach>
                                        </c:forEach>
                                </ul>
                            </div>
                        </div>
                        <div style="padding:30px; border: 1px solid; margin-top: 30px;">
                            <h2 style="margin-bottom: 20px;">Description </h2>
                            <p>
                                ${course.getLongDescription()}
                            </p>
                        </div>
                    </div>
                </div>

                <div style="width: 40%; height: 100vh;">
                    <div id="loader" class="loader"></div>
                    <img id="ceritificate" src="${certificateImage eq '' ? 'images/blank-img.jpg' : certificateImage}" alt=""
                         style="width: 550px; aspect-ratio: 1.5/1; object-fit: cover; margin-bottom: 30px;">

                </div>

            </div>

        </div>
        </section>


                <div style="clear: both"></div>
        <!-- Footer Section Begin -->
        <footer class="footer-section" style="margin-top: 200px">
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




        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        
        <script>
            const certificateImage = document.getElementById('ceritificate');
            const loader = document.getElementById('loader');
        </script>

        <c:if test="${certificateImage eq ''}">
            <script>

                let data = {
                    "template": "RnxGpW5lj8jqbEXrJ1",
                    "modifications": [
                        {
                            "name": "name",
                            "text": "${sessionScope.User.getFullName()}"
                        },
                        {
                            "name": "course",
                            "text": "${course.getCourseName()}"
                        }
                    ]
                };

                loader.style.display = 'flex';

                fetch('https://sync.api.bannerbear.com/v2/images', {
                    method: 'POST',
                    body: JSON.stringify(data),
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': 'Bearer bb_pr_db02338abb9b189ebef13742756569'
                    }
                }).then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                        .then(data => {
                            // Handle the response from Bannerbear, which may include image details
                            console.log('Image generated:', data);
                            console.log('ImageURL: ', data.image_url);
                            certificateImage.src = data.image_url;
                            fetch(`./addcertificate?url=` + data.uid + `&courseId=${course.getCourseId()}`);
                            loader.style.display = 'none';
                        })
                        .catch(error => {
                            console.error('Error generating image:', error);
                        });
            </script>
        </c:if>

        <c:if test="${certificateImage ne ''}">
            <script>

                fetch('https://api.bannerbear.com/v2/images/${certificateImage}', {
                    method: 'GET',
                    headers: {
                        'Content-Type': 'application/json',
                        'Authorization': 'Bearer bb_pr_db02338abb9b189ebef13742756569'
                    }
                }).then(response => {
                    if (!response.ok) {
                        throw new Error(`HTTP error! Status: ${response.status}`);
                    }
                    return response.json();
                })
                        .then(data => {
                            // Handle the response from Bannerbear, which may include image details
                            console.log('Image generated:', data);
                            console.log('Uid', data.uid);
                            console.log('ImageURL: ', data.image_url);
                            certificateImage.src = data.image_url;
                            loader.style.display = 'none';
                        })
                        .catch(error => {
                            console.error('Error generating image:', error);
                        });
            </script>
        </c:if>
    </body>

</html>
