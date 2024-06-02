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
            .filter-option {
                font-size: 20px;
                margin-top: 20px;
            }
            .filter-option h2, #tag {
                width: 80%;
            }

            .filter-option h2, #tag {
                border-bottom: 1px solid lightgrey;
                padding-bottom: 5px;
                margin-bottom: 15px;
            }
            
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
        <div class="breadcrumb-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="breadcrumb-text">
                            <h2>Our Course</h2>
                            <div class="bt-option">
                                <a href="home">Home</a>
                                <span>Course</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Breadcrumb Section End -->

        <div class="select-option row col-lg-11 justify-content-end" style="margin-bottom: 30px;">
            <input id="searchText" type="text" placeholder="Search courses..." value="${search}"> 
            <i id="search" class="bx bx-search" onclick="submitForm()" style="margin-left: -40px; padding: 10px; cursor: pointer"></i>
        </div>


        <!-- Rooms Section Begin -->
        <section class="rooms-section spad col-lg-12 d-flex justify-content-center" style="width: 100vw">

            <div class="container d-flex justify-content-between" style="margin: 0; width: 100%" >
                <div class="row col-lg-2">
                    <div class="filter-sections" style="font-family: 'Lora'">
                        <form id="filter" action="viewCourse">
                            <input id="searchInput" type="hidden" name="searchContent">
                            <div class="filter-option">
                                <h2>Ratings</h2>
                                <div>
                                    <input type="radio" name="ratings" value="4.5"
                                           <c:forEach items="${ratings}" var="rating">
                                               ${rating eq 4.5 ? 'checked="checked"' : ''}  
                                           </c:forEach> onclick="submitForm()">
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <span>4.5 & up</span>
                                </div>
                                <div>
                                    <input type="radio" name="ratings" value="4.0"
                                           <c:forEach items="${ratings}" var="rating">
                                               ${rating eq 4.0 ? 'checked="checked"' : ''}  
                                           </c:forEach> onclick="submitForm()">
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <span>4.0 & up</span>
                                </div>
                                <div>
                                    <input type="radio" name="ratings" value="3.5"
                                           <c:forEach items="${ratings}" var="rating">
                                               ${rating eq 3.5 ? 'checked="checked"' : ''}  
                                           </c:forEach> onclick="submitForm()">
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <span>3.5 & up</span>
                                </div>
                                <div>
                                    <input type="radio" name="ratings" value="3.0"
                                           <c:forEach items="${ratings}" var="rating">
                                               ${rating eq 3.0 ? 'checked="checked"' : ''}  
                                           </c:forEach> onclick="submitForm()">
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <i class="bx bx-star"></i>
                                    <span>3.0 & up</span>
                                </div>

                            </div>

                            <div class="filter-option">
                                <h2>Level</h2>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="level" value="beginner"
                                           <c:forEach items="${level}" var="level">
                                               ${level eq 'beginner' ? 'checked="checked"' : ''}  
                                           </c:forEach>   onclick="submitForm()">
                                    <span>Beginner</span>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="level" value="intermediate" 
                                           <c:forEach items="${level}" var="level">
                                               ${level eq 'intermediate' ? 'checked="checked"' : ''}  
                                           </c:forEach>   onclick="submitForm()">
                                    <span>Intermediate</span>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" name="level" value="advanced" 
                                           <c:forEach items="${level}" var="level">
                                               ${level eq 'advanced' ? 'checked="checked"' : ''}  
                                           </c:forEach>     onclick="submitForm()">
                                    <span>Advanced</span>
                                </div>
                            </div>

                            <div class="filter-option">
                                <h2>Price</h2>
                                <div class="filter-checkbox">
                                    <input type="checkbox" value="0" name="price"
                                           <c:forEach items="${price}" var="price">
                                               ${price eq 0 ? 'checked="checked"' : ''}  
                                           </c:forEach>   onclick="submitForm()">
                                    <span>Free</span>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" value="1000000" name="price"
                                           <c:forEach items="${price}" var="price">
                                               ${price eq 1000000 ? 'checked="checked"' : ''}  
                                           </c:forEach>   onclick="submitForm()">
                                    <span>Up to 1,000,000</span>
                                </div>
                                <div class="filter-checkbox">
                                    <input type="checkbox" value="1000001" name="price"
                                           <c:forEach items="${price}" var="price">
                                               ${price eq 1000001 ? 'checked="checked"' : ''}  
                                           </c:forEach> onclick="submitForm()">
                                    <span>More than 1,000,000</span>
                                </div>
                            </div>
                            <h2 id="tag">Tags</h2>   
                            <div class="filter-option" style="margin-bottom: 300px;
                                 height: 200px;
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
                        </form>
                    </div>
                </div>
                <div class="row col-lg-10">
                    <c:forEach items="${requestScope.listPagedCourse}" var="courseEntry">
                        <c:set var="courses" value="${courseEntry.key}" />
                        <c:set var="ratingData" value="${courseEntry.value}" />
                        <div class="col-lg-4 col-md-6" style="">
                            <div class="room-item" style="width: 300px;">
                                <img src="${courses.getImage()}" alt="" style="aspect-ratio: 1.5/1">
                                <div class="ri-text d-flex flex-column justify-content-between" style="height: 360px; padding: 24px 20px 30px 28px">
                                    <div>
                                        <h4>${courses.getCourseName()}</h4>
                                        <h3>${String.format("%,.0f", courses.getPrice() * (100 - courses.getDiscount())/100)} VND<span>/Enroll</span></h3>
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td class="r-o">Author:</td>
                                                    <td>${courses.getAuthor().getFullName()}</td>
                                                </tr>
                                                <tr>
                                                    <td class="r-o">Level: </td>
                                                    <td>${courses.getLevel()}</td>
                                                </tr>
                                                <tr>
                                                    <td class="r-o">Rating: </td>
                                                    <td>
                                                        <c:forEach var="ratingEntry" items="${ratingData}">
                                                            <c:set var="rating" value="${ratingEntry.key}"/>
                                                            <span>${String.format("%.1f", rating)}</span>
                                                            <c:set var="roundedRating" value="${Math.floor(rating)}"/>
                                                            <c:set var="hasHalfStar" value="${rating - roundedRating > 0}"/>
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
                                                        </c:forEach>                    
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <a href="coursedetail?id=${courses.getCourseId()}" style="bottom: 0; width: 40%" class="primary-btn">View detail</a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="col-lg-12">
                        <div class="room-pagination">
                            <c:if test="${index ne 1}">
                                <c:if test="${tag > 1}">
                                    <a class="page" href="viewCourse?index=${tag - 1}&
                                       searchContent=${search}&
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
                                    <c:when test="${i == tag}">
                                        <a href="#" style="background-color: #DFA974; color: white" class="page active">${i}</a>
                                    </c:when>
                                    <c:when test="${i <= 5 || i >= tag - 1 && i <= tag + 1 || i >= endPage - 4}">
                                        <a class="page" href="viewCourse?index=${i}&
                                           searchContent=${search}&
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
                                           </c:if>" ${page == index ? 'style="background-color: #DFA974; color: white"' : ''}>${i}</a>
                                    </c:when>
                                    <c:otherwise>
                                        <span class="page">...</span>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>

                            <c:if test="${tag < endPage}">
                                <a class="page" href="viewCourse?index=${tag + 1}&
                                   searchContent=${search}&
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
                                   </c:if>">Next <i class="fa fa-long-arrow-right"></i></a>
                                </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Rooms Section End -->

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

        <script>
            function submitForm() {
                document.getElementById('searchInput').value = document.getElementById('searchText').value;
                document.getElementById('filter').submit();
            }
        </script>

        <script>
            ("input[name='ratings']").click(function () {
                sendCheckboxValue(this);
            });

            $("input[name='level']").click(function () {
                sendCheckboxValue(this);
            });

            $("input[name='price']").click(function () {
                sendCheckboxValue(this);
            });
            $("input[name='tagsID']").click(function () {
                sendCheckboxValue(this);
            });
        </script>

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
