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

            .tag {
                font-size: 12px;
                color: #707079;
                background: #ebebeb;
                font-weight: 500;
                text-transform: uppercase;
                letter-spacing: 1px;
                display: inline-block;
                padding: 4px 16px;
                border-radius: 2px;
                -o-transition: all 0.3s;
                transition: all 0.3s;
                margin-right: 6px;
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
                                    <img style="width: 70px; height: 70px" src="img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="nav-menu">
                                <nav class="mainmenu">
                                    <ul>
                                        <li><a href="home">Home</a></li>
                                        <li ><a href="viewCourse">Courses</a></li>
                                        <li><a href="./about-us.html">About Us</a></li>
                                        <li class="active"><a href="viewquestion">Community</a></li>
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
                            <h2>Community</h2>
                            <div class="bt-option">
                                <a href="home">Home</a>
                                <span>Question</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->

        <!-- Room Details Section Begin -->
        <section class="room-details-section spad">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="room-details-item">
                            <img src="images/question.jpg" style="width: 100%;" alt="">
                            <div class="rd-text">
                                <div class="rd-title">
                                    <h3>${question.getTitle()}</h3>
                                </div>
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="r-o">Created by: </td>
                                            <td>${question.getUser().getFullName()}</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Create Date: </td>
                                            <td>${question.getCreatedDate()}</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Update on: </td>
                                            <td>${question.getUpdateDate()}</td>
                                        </tr>
                                        <tr>
                                            <td class="r-o">Total:</td>
                                            <td>${totalAnswer} answers</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <p class="f-para">
                                    ${question.getContent()}
                                </p>
                                <div class="tag-share">
                                    <div class="tags">
                                        <c:forEach items="${question.getListTag()}" var="tag">
                                            <a href="viewquestion?tagsID=${tag.getTagId()}" class="tag">
                                                ${tag.getTagName()}
                                            </a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="rd-reviews">
                            <h4>Answers</h4>
                            <c:if test="${listAnswer.size() eq 0}">
                                <div class="flex-row justify-content-center" style="margin-top: 20px;">
                                    <p class="text-center">No Comments</p>
                                </div>
                            </c:if>
                            <c:forEach items="${listAnswer}" var="answer">
                                <div class="review-item">
                                    <div class="ri-pic">
                                        <img src="${answer.getUser().getImg()}" alt="">
                                    </div>
                                    <div class="ri-text">
                                        <span>${answer.getCreateDate()}</span>
                                        <h5>${answer.getUser().getFullName()}</h5>
                                        <p>${answer.getContent()}</p>
                                    </div>
                                </div>
                            </c:forEach>
                            <div class="col-lg-12">
                                <div class="room-pagination">
                                    <c:if test="${index ne 1 && listAnswer.size() ne 0}">
                                        <a class="page" href="questiondetail?id=${question.getQuestionId()}&index=${index - 1}">Previous <i class="fa fa-long-arrow-left"></i></a>
                                        </c:if>
                                        <c:forEach begin="1" end="${endPage}" var="page">
                                        <a class="page" href="questiondetail?id=${question.getQuestionId()}&index=${page}" ${page == index ? 'style="background-color: #DFA974; color: white"' : ''}>${page}</a>
                                    </c:forEach>

                                    <c:if test="${index ne endPage && listAnswer.size() ne 0}">
                                        <a class="page" href="questiondetail?id=${question.getQuestionId()}&index=${index + 1}">Next <i class="fa fa-long-arrow-right"></i></a>
                                        </c:if>
                                </div>
                            </div>
                        </div>
                        <c:if test="${sessionScope.User ne null && question.status == 1}">
                            <div class="p-t-40" style="margin-top: 30px;">
                                <h5 class="mtext-113 cl2 p-b-12">
                                    Leave a Comment
                                </h5>

                                <p class="stext-107 cl6 p-b-40">
                                    Your email address will not be published.
                                </p>

                                <form action="answer">
                                    <div class="bor19 m-b-20">
                                        <textarea class="form-control" name="answer" style="height: 100px" placeholder="Comment..."></textarea>
                                    </div>
                                    <input type="hidden" name="id" value="${question.getQuestionId()}">
                                    <div class="d-flex justify-content-end">
                                        <input id="post-comment-btn" type="submit" class="btn btn-primary mt-2" value="Post Comment">
                                    </div>
                                </form>
                            </div>
                        </c:if>
                        <c:if test="${question.status == 0}">
                            <h2 style="text-align: center; color: #aaaab3">
                                This question is closed.
                            </h2>
                        </c:if>
                    </div>
                    <div class="col-lg-4">
                        <div class="room-booking">
                            <div class="rd-reviews">
                                <h4>Related course: </h4>
                                <c:forEach items="${listRelatedCourse}" var="course">
                                    <div class="review-item d-flex justify-content-center" style="align-items: center">
                                        <div>
                                            <img src="${course.getImage()}" style="width: 100px; height: 100px; padding: 10px; border-radius: 50%" alt="">
                                        </div>
                                        <div class="ri-text">
                                            <h5>${course.getCourseName()}</h5>
                                            <p>${course.getDescription()}</p>
                                            <p> 
                                                <a id="course-suggested" href="coursedetail?id=${course.getCourseId()}" style="border-bottom: 3px solid #dfa974;">
                                                    View detail <i class="fa fa-long-arrow-right" ></i>
                                                </a>
                                            </p>

                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <div>
                                <h4 class="mb-4">
                                    Other Tags:
                                </h4>
                                <div class="flex-w m-r--5 contain-tags">
                                    <c:forEach items="${listAvailableTag}" var="tag">
                                        <a href="viewquestion?tagsID=${tag.getTagId()}" class="tag">
                                            ${tag.getTagName()}
                                        </a>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
