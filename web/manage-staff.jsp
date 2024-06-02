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
                <h1>Staff Management</h1>
                <div class="w-100 text-right">
                    <a href="createaccount" class="btn btn-primary mb-3">Add User</a>
                </div>

                <table id="roomTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <td>Avatar</td>
                            <td>Full Name</td>
                            <td>Role</td>
                            <td>DOB</td>
                            <td>Email</td>
                            <td>Gender</td>
                            <td>Status</td>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${listUser}">
                            <tr style="height: 100px">
                                <td>
                                    <c:if test="${user.getImg() != 'none'}">
                                        <img src="${user.getImg()}" style="width: 50px; height: 50px; object-fit: contain" alt="alt" width="100%"/>
                                    </c:if>
                                </td>
                                <td>
                                    <p style="text-align: left; margin-left: 0;">
                                        <a style="color: black">${user.getFullName()}</a>
                                    </p> 
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${user.getRole() == 0}"> Admin</c:when>
                                        <c:when test="${user.getRole() == 1}"> Content Manager</c:when>
                                        <c:when test="${user.getRole() == 2}"> Lecturer</c:when>
                                    </c:choose>
                                </td>
                                <td>${user.getDob()}</td>
                                <td>${user.getEmail()}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${user.getGender() == 0}"> Male</c:when>
                                        <c:when test="${user.getGender() == 1}"> Female</c:when>
                                    </c:choose>
                                </td>
                                <td>
                                    <c:choose>
                                        <c:when test="${user.getStatus() == 1}"> 
                                            <a class="status btn1" href="managestaff?modeBan=1&name=${user.getUsername()}">Active</a>
                                        </c:when>
                                        <c:when test="${user.getStatus() == 0}"> 
                                            <a class="status btn2" href="managestaff?modeUnBan=1&name=${user.getUsername()}">Banned</a>
                                        </c:when>
                                    </c:choose>
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
