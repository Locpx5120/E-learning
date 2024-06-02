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
        <title>Create Course Account</title>
        <style>
            label {
                color: black;
                font-weight: bold
            }
        </style>
    </head>

    <body>


        <!-- form create lecturer account -->
        <div class="container">
            <!-- Form for adding new room -->
            <form action="createcourse" method="POST">
                <input type="hidden" value="add" name="act">
                <div class="form-group">
                    <label for="name">Course Name:</label>
                    <input type="text" class="form-control" name="name" required value="${param.name}">
                </div>
                <div class="form-group">
                    <label for="qty">Short Description:</label>
                    <input type="text" class="form-control" name="shortDescription" required value="${param.shortDescription}">
                </div>
                <div class="form-group">
                    <label for="file">Thumbnail Image Link:</label>
                    <input type="text" class="form-control-file" id="file" name="img" required value="${param.img}">
                </div>
                <div class="form-group">
                    <label for="name">Price:</label>
                    <input type="text" class="form-control" name="price" required value="${param.price}">
                </div>
                <div class="form-group">
                    <label for="level">Level:</label>
                    <select name="level" id="level" class="form-control" required>
                        <option value="Beginner">Beginner</option>
                        <option value="Intermediate">Intermediate</option>
                        <option value="Advanced">Advanced</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="qty">Detail Description:</label>
                    <input type="text" class="form-control" name="longDescription" required value="${param.longDescription}">
                </div>
                <div class="form-group">
                    <button type="submit" class="form-control btn btn-secondary mb-4" id="upload" style="height:40px">Next Step</button>
                    <a href="lecturehome" class="form-control btn btn-secondary" id="upload" style="height:40px">Go back</a>
                </div>
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
        <script>
            // Function to add a new section
            function addSection() {
                const sectionFields = document.getElementById('sectionFields');
                const newSection = document.createElement('div');
                newSection.classList.add('sectionfield', 'form-row');
                newSection.innerHTML = `
                <input type="hidden" name="sectionID" value="add">
            <div class="name">Title of Section:</div>
            <div class="value">
                <div class="input-group">
                    <input class="input--style-6" type="text" name="sectionTitle">
                </div>
                <span style="margin:2px;"></span>
            </div>
            <div class="name">Video link:</div>
            <div class="value">
                <div class="input-group">
                    <input class="input--style-6" type="text" name="sectionVideo">
                </div>
                <span style="margin:2px;"></span>
            </div>
            <div class="name">Section Description:</div>
            <div class="value">
                <div class="input-group">
                    <input class="input--style-6" type="text" name="sectionDescription">
                </div>
                <span style="margin:15px;"></span>
            </div>
        `;
                sectionFields.appendChild(newSection);
            }
            document.getElementById('addSectionButton').addEventListener('click', addSection);

            // Function to add a new tag
            function addTag() {
                const tagFields = document.getElementById('tagFields');
                const newTag = document.createElement('div');
                newTag.classList.add('tagfield', 'form-row');
                newTag.innerHTML = `
                    <input type="hidden" name="tagID" value="add">
                        <div class="name">Tag Name:</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-6" type="text" name="tagName">
                            </div>
                        <span style="margin:2px;"></span>
                        </div> 
        `;
                tagFields.appendChild(newTag);
            }
            document.getElementById('addTagButton').addEventListener('click', addTag);

        </script>
    </body>
</html>
