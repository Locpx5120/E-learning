<%-- 
    Document   : createstaffaccount
    Created on : Mar 3, 2024, 10:26:19 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/create.css">
        <link rel="stylesheet" href="css/style_2.css">
        <title>Create Staff Account</title>
    </head>

    <body>
        

        <!-- form create lecturer account -->
        <div class="container">
            <!-- Form for adding new room -->
            <form action="createaccount" method="post">
                <div class="form-group">
                    <label for="username">User Name: </label>
                    <input type="text" class="form-control" id="username" name="username" placeholder="Username" value="${username}" required>
                </div>

                <div class="form-group">
                    <label for="fullname">Full Name: </label>
                    <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Fullname" value="${fullname}" required>
                </div>

                <div class="form-group">
                    <label for="email">Email: </label>
                    <input type="text" class="form-control" id="email" name="email" placeholder="Email Address" value="${email}" required>
                </div>

                <div class="form-group">
                    <label for="dob">Date of Birth: </label>
                    <input type="date" class="form-control" id="dob" name="dob" placeholder="dd/mm/yyyy" required><br>
                </div>
                <div class="form-group">
                    <label for="genderr">Gender: </label>
                    <select id="genderr" name="gender" class="form-control">
                        <option value="0">Male</option>
                        <option value="1">Female</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="description">Description: </label>
                    <textarea class="form-control" id="description" name="description" placeholder="Description"></textarea><br>
                </div>
                <div class="form-group">
                    <label for="role">Role: </label>
                    <select id="role" name="role" class="form-control">
                        <option value="0">Admin</option>
                        <option value="1">Content Manager</option>
                    </select>
                </div>
                <button type="submit" class="form-control btn btn-primary mt-4 mb-4" >Add User</button>
                <a href="managestaff" class="form-control btn btn-primary">Back</a>
            </form>
        </div>
        <!-- end of form -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script>
            // Check if errorMsg is not empty
            var errorMsg = "${errorMsg}";
            if (errorMsg.trim() !== "") {
                window.alert(errorMsg);
            }
        </script>
        <script src="js/sidebar.js"></script>
    </body>
</html>
