<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Lecture Home</title>
        <!-- Add Bootstrap CSS link -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" href="css/style_2.css">
        <!-- Add DataTables CSS link -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
        <style>
            * {
                box-sizing: border-box;
            }
        </style>
    </head>
    <body id="body-pd">
        <header class="header" id="header">
            <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        </header>
        <div class="l-navbar" id="nav-bar">
            <nav class="nav">
                <div>
                    <div class="nav_list">
                        <a href="cmhome" class="nav_link">
                            <i class='bx bx-home-alt nav_icon'></i>
                            <span class="nav_name">Public Course</span>
                        </a>
                        <a href="pendingcourse" class="nav_link">
                            <i class='bx bx-window-open nav_icon'></i>
                            <span class="nav_name">Pending Course</span>
                        </a>
                        <a href="profile" class="nav_link">
                            <i class='bx bx-user nav_icon'></i>
                            <span class="nav_name">Profile</span>
                        </a>
                    </div>
                </div>
                <a href="log" class="nav_link">
                    <i class='bx bx-log-out nav_icon'></i>
                    <span class="nav_name">SignOut</span>
                </a>
            </nav>
        </div>
        <!--Container Main start-->
        <div class="height-100 bg-light">
            <div class="container profile-container">
                <h1>Content Course Management</h1>
                <table id="roomTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                        <tr>
                            <th class="text-center">Image</th>
                            <th class="text-center">Course Name</th>
                            <th class="text-center">Rating Star</th>
                            <th class="text-center">Number of Rates</th>
                            <th class="text-center">Status</th>
                            <th class="text-center">Operations</th>
                        </tr>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${listCourse}" var="courseEntry">
                            <tr>
                                <c:set var="courses" value="${courseEntry.key}" />
                                <c:set var="ratingData" value="${courseEntry.value}" />
                        <input type="hidden" name="id" value="${courses.getCourseId()}"/>
                        <c:choose>
                            <c:when test="${courses.getImage().startsWith('https://')}">
                                <td class="text-center"><img height='120px' src="${courses.getImage()}" alt="Course Image"></td>
                                </c:when>
                                <c:otherwise>
                                <td class="text-center"><img height='120px' src="images/${courses.getImage()}" alt="Course Image"></td>
                                </c:otherwise>
                            </c:choose>
                        <td>${courses.getCourseName()}</td>
                        <c:forEach var="ratingEntry" items="${ratingData}">
                            <c:set var="rating" value="${ratingEntry.key}"/>
                            <td class="text-center"><span>${String.format("%.2f", rating)}</span></td>
                            <td class="text-center"span>${ratingEntry.value}</span></td>
                        </c:forEach>
                        <td class="text-center">
                            <c:if test="${courses.getStatus() == 1}">
                                <span>Active</span>
                            </c:if>
                            <c:if test="${courses.getStatus() == 0}">
                                <span>De-active</span>
                            </c:if>
                        </td>
                        <td class="text-center" >
                            <div class="btn-group">
                                <a class="btn btn-primary" style="height:40px" href="cmviewcourse?cid=${courses.getCourseId()}&modeView=1">View detail</a>
                            </div>
                        </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>

            </div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Include Bootstrap JS, Popper.js, and DataTables JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>

        <script src="js/sidebar.js"></script>

        <script>
            $(document).ready(function () {
                $('#roomTable').DataTable({
                    "pageLength": 5,
                    "lengthChange": false
                });
            });
        </script>


        <script>
            // Check if errorMsg is not empty
            var successMsg = "${successMsg}";
            if (successMsg.trim() !== "") {
                window.alert('Request process successfully');
            }
        </script>
    </body>
</html>
