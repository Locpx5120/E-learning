<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Staff Management</title>
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
                        <a href="dashboard" class="nav_link">
                            <i class='bx bx-home-alt nav_icon'></i>
                            <span class="nav_name">Dashboard</span>
                        </a>
                        <a href="managestaff" class="nav_link">
                            <i class='bx bx-child nav_icon'></i>
                            <span class="nav_name">Staff Management</span>
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
                <h1>Admin Dashboard</h1>
                <div style="border: 1px solid black; padding: 8%; box-shadow: 1px 1px 4px 1px black">
                    <div class="analyse" style="display: flex; justify-content: space-between; margin-bottom: 4%">
                        <div class="sales">
                            <div class="status">
                                <h1 style="font-weight: bold">Total Income</h1>
                                <h3 style="font-weight: bold; color: #00a308">${String.format("%,.0f", totalIncome)} VND</h3>
                            </div>
                        </div>

                        <div class="lecturer">
                            <div class="status">
                                <h1 style="font-weight: bold; ">Total Lecturers</h1>
                                <h3 style="font-weight: bold; color: #007fff"><c:out value="${totalLecturer}"/></h3>
                            </div>
                        </div>

                        <div class="student">
                            <div class="status" >
                                <h1 style="font-weight: bold">Total Students</h1>
                                <h3 style="font-weight: bold; color: #3868cd"><c:out value="${totalStudent}"/></h3>
                            </div>
                        </div>
                    </div>

                    <div class="rank">
                        <div class="lecturers">
                            <h1 style="font-weight: bold">Lecturers Rank</h1>
                            <table width="100%">
                                <tr style="height: 3rem;">
                                    <td>Top</td>
                                    <td>Name</td>
                                    <td>Overall rating:</td>
                                </tr>
                                <c:set var="x" value="1"/>
                                <c:forEach items="${listTopLecturer}" var="user">
                                    <tr style="height: 2rem;">
                                        <td>${x}</td>
                                        <c:set var="x" value="${x+1}"></c:set>
                                            <td style="text-align: left;
                                                text-indent: 1.2rem;">${user.getKey().getUsername()}</td>
                                        <td>${user.getValue()}</td>
                                    </tr>    
                                </c:forEach>
                            </table>
                        </div>

                        <div class="courses">
                            <h1 style="font-weight: bold">Courses Rank</h1>

                            <table width="100%">
                                <tr style="height: 3rem;">
                                    <td>Top</td>
                                    <td>Name</td>
                                    <td>Overall rating:</td>
                                </tr>
                                <c:set var="i" value="1"/>
                                <c:forEach items="${listTopCourse}" var="course">
                                    <tr style="height: 2rem;">
                                        <td>${i}</td>
                                        <c:set var="i" value="${i+1}"></c:set>
                                            <td style="text-align: left;
                                                text-indent: 1.2rem;">${course.getKey().getCourseName()}</td>
                                        <td>${course.getValue()} </td>
                                    </tr>    
                                </c:forEach>
                            </table>
                        </div>
                    </div>
                </div>
            </div>



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
</body>
</html>
