<%-- 
    Document   : allquestion
    Created on : Feb 19, 2024, 10:33:21 AM
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
        <title>All | Question</title>

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
            .select-option input[type = text] {
                width: 30%;
                height: 40px;
                border: 1px solid black;
                font-size: 16px;
                color: #aaaab3;
                padding-left: 20px;
                margin-bottom: 25px;
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
                    <li><a href="./about-us.html">About Us</a></li>
                    <li><a href="./pages.html">Pages</a>
                        <ul class="dropdown">
                            <li><a href="./room-details.html">Room Details</a></li>
                            <li><a href="./blog-details.html">Blog Details</a></li>
                            <li><a href="#">Family Room</a></li>
                            <li><a href="#">Premium Room</a></li>
                        </ul>
                    </li>
                    <li><a href="./blog.html">News</a></li>
                    <li><a href="./contact.html">Contact</a></li>
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
        <header class="header-section">
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

                                <a href="viewCourse" class="bk-btn">Enroll Now</a>
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
                            <div class="logo" style="width: 25px; height: 25px">
                                <a href="home">
                                    <img src="images/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-lg-10">
                            <div class="nav-menu">
                                <nav class="mainmenu">
                                    <ul>
                                        <li class="active"><a href="home">Home</a></li>
                                        <li><a href="viewCourse">Courses</a></li>
                                        <li><a href="./about-us.jsp">About Us</a></li>

                                        <li><a href="viewquestion">Community</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
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
                                <a href="./home.html">Home</a>
                                <span>Community</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->
        <c:if test="${sessionScope.User != null}">
            <div class="row col-lg-11 d-flex justify-content-end align-items-center"  style="margin-bottom: 30px;">
                <a href="viewlistcreatedquestion" class="btn btn-primary">My Questions</a>
                <span style="margin: 10px;"></span>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Create Question</button>
            </div>
        </c:if>

        <!--Modal for create question-->        
        <div class="modal fade custom-modal" id="myModal" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Ask a Question</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <form action="createquestion" method="POST">
                            <input type="hidden" value="add" name="act">
                            <div class="form-group">
                                <label for="name">Question Title:</label>
                                <input type="text" class="form-control" name="qtitle" required value="${param.qtitle}">
                            </div>
                            <div class="form-group">
                                <label for="name">Question Content:</label>
                                <textarea class="form-control" name="qcontent" minlength="20" required>${param.qcontent}</textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-secondary" id="upload" style="height:40px">Create</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal" style="height:40px">Close</button>
                    </div>
                </div>
            </div>
        </div>

        <div class="select-option row col-lg-11 justify-content-end" style="margin-bottom: 30px;">
            <input id="searchText" type="text" placeholder="Search question..." value="${searchContent}"> 
            <i id="search" class="bx bx-search" onclick="submitForm()" style="margin-left: -40px; padding: 10px; cursor: pointer"></i>
        </div>

        <!-- Blog Section Begin -->
        <section class="blog-section blog-page spad">
            <div class="container d-flex justify-content-between">
                <div class="filter-sections col-lg-2">
                    <form id="filter" action="viewquestion">
                        <input id="searchInput" type="hidden" name="searchContent">
                        <div class="filter-option">
                            <h2>Tags</h2>   
                            <div class="filter-option" style="
                                 overflow: scroll; overflow-x: hidden;">
                                <c:forEach items="${listTags}" var="tags">
                                    <div class="filter-checkbox">
                                        <input type="checkbox" value="${tags.getTagId()}" name="tagsID"
                                               <c:forEach items="${tagsID}" var="tagID">
                                                   ${tagID eq tags.getTagId() ? 'checked="checked"' : ''} 
                                               </c:forEach>   onclick="submitForm()">
                                        <span>${tags.getTagName()}</span>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>    
                    </form>
                </div>
                <div class="row col-lg-10">
                    <c:forEach items="${listPagedQuestion}" var="question">
                        <div class="col-lg-4 col-md-6">
                            <div class="blog-item set-bg" data-setbg="https://www.practiceportuguese.com/wp-content/uploads/2020/06/asking-questions.jpg">
                                <div class="bi-text">
                                    <c:forEach items="${question.getListTag()}" var="tag">
                                        <span class="b-tag">${tag.getTagName()}</span>
                                    </c:forEach>

                                    <h4><a href="questiondetail?id=${question.getQuestionId()}">${question.getTitle()}</a></h4>
                                    <div class="b-time">Author: ${question.getUser().getFullName()}</div>
                                    <div class="b-time"><i class="icon_clock_alt"></i> ${question.getCreatedDate()}</div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-lg-12">
                        <div class="room-pagination">
                            <c:if test="${index ne 1}">
                                <c:if test="${index > 1}">
                                    <a class="page" href="viewquestion?index=${index - 1}&
                                       searchContent=${searchContent}&
                                       <c:if test="${ratings != null}">
                                           &ratings=${ratings[0]}
                                       </c:if>
                                       <c:if test="${level != null}">
                                           <c:forEach items="${level}" var="level">
                                               &level=${level}&
                                           </c:forEach>
                                       </c:if>
                                       <c:if test="${price != null}">
                                           <c:forEach items="${price}" var="price">
                                               &price=${price}&
                                           </c:forEach>
                                       </c:if>
                                       <c:if test="${tagsID != null}">
                                           <c:forEach items="${tagsID}" var="tagsID">
                                               &tagsID=${tagsID}&
                                           </c:forEach>
                                       </c:if>">Previous <i class="fa fa-long-arrow-left"></i></a>
                                    </c:if>
                                </c:if>


                            <c:forEach begin="1" end="${endPage}" var="i">
                                <c:choose>
                                    <c:when test="${i == index}">
                                        <a href="#" style="background-color: #DFA974; color: white" class="page active">${i}</a>
                                    </c:when>
                                    <c:when test="${i <= 5 || i >= tag - 1 && i <= tag + 1 || i >= endPage - 4}">
                                        <a class="page" href="viewquestion?index=${i}&searchContent=${searchContent}&
                                           <c:if test="${tagsID != null}">
                                               <c:forEach items="${tagsID}" var="tagsID">
                                                   &tagsID=${tagsID}&
                                               </c:forEach>
                                           </c:if>" ${page == index ? 'style="background-color: #DFA974; color: white"' : ''}>${i}</a>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="page">...</span>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>

                            <c:if test="${index < endPage}">
                                <a class="page" href="viewquestion?index=${index + 1}&searchContent=${searchContent}&
                                   <c:if test="${tagsID != null}">
                                       <c:forEach items="${tagsID}" var="tagsID">
                                           &tagsID=${tagsID}&
                                       </c:forEach>
                                   </c:if>">Next <i class="fa fa-long-arrow-right"></i></a>
                                </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Blog Section End -->

        <script>
            function submitForm() {
                document.getElementById('searchInput').value = document.getElementById('searchText').value;
                document.getElementById('filter').submit();
            }
        </script>

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

</html>
