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
        <style>
            label {
                color: black;
                font-weight: bold
            }
        </style>
    </head>

    <body>
        <!-- form create lecturer account -->
        <div class="container" style="width: 80%; max-width: 50vw">
            <form action="updatecourse" method="POST" >
                <input class="input--style-6" type="hidden" name="cid" readonly value="${course.getCourseId()}">
                <div class="form-group">
                    <label for="name">Course Name:</label>
                    <input type="text" class="form-control" required name="courseName" value="${course.courseName}">
                </div>
                <div class="form-group">
                    <label for="name">Course Image Link:</label>
                    <input type="text" class="form-control"  required name="courseImg" value="${course.getImage()}">
                </div>
                <div class="form-group">
                    <label for="name">Course Description:</label>
                    <input type="text" class="form-control"  required name="courseDescription" value="${course.getDescription()}">
                </div>    
                <div class="form-group">
                    <label for="name">Detail Description:</label>
                    <textarea class="form-control" required name="longDescription" style="height:500px;">${course.getLongDescription()}</textarea>
                </div> 
                <div class="form-group">
                    <label for="name">Price: </label>
                    <input type="text" class="form-control"  required name="price" value="${String.format("%.0f", course.getPrice())}">
                </div>
                <div class="form-group">
                    <label for="name">Discount: </label>
                    <input type="text" class="form-control"  required name="discount" value="${course.getDiscount()}">
                </div>
                <div class="form-group">
                    <label for="level">Level:</label>
                    <select name="level" id="level" class="form-control" required>
                        <option value="Beginner">Beginner</option>
                        <option value="Intermediate" ${course.getLevel() eq 'Intermediate' ? 'selected' : ''}>Intermediate</option>
                        <option value="Advanced" ${course.getLevel() eq 'Advanced' ? 'selected' : ''}>Advanced</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Status: </label>
                    <c:if test="${course.getStatus() == 1}">
                        <input class="form-control" style="color: green;" name="status" readonly value="Active">
                    </c:if>
                    <c:if test="${course.getStatus() == 0}">
                        <input class="form-control" style="color: red;"  name="status" readonly value="Banned">
                    </c:if>
                    <c:if test="${course.getStatus() == 2}">
                        <input class="form-control" style="color: blue;"  name="status" readonly value="Pending">
                    </c:if>
                    <c:if test="${course.getStatus() == 3}">
                        <input class="form-control" style="color: grey;"  name="status" readonly value="Draft Saved">
                    </c:if>
                    <c:if test="${course.getStatus() == 4}">
                        <input class="form-control" style="color: red;"  name="status" readonly value="Rejected">
                    </c:if>
                </div>

                <!--Section part-->
                <div class="row" id="sectionFields">
                    <c:choose>
                        <c:when test="${not empty nullMSG}">
                            <div class="name">${nullMSG}</div>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="courseSection" items="${listSection}" varStatus="loopStatus">
                                <input type="hidden" name="sectionID" value="${courseSection.getSectionId()}">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Title of Section ${loopStatus.index + 1}:</label>
                                        <input class="form-control" type="text" name="sectionTitle" value="${courseSection.getTitle()}">
                                    </div>
                                </div>

                                <div class="form-group" style="margin-right: 10px">
                                    <div class="form-group">
                                        <label>Video link:</label>
                                        <input type="hidden" name="sectionVideo" value="${courseSection.getVideo()}">
                                        <div class="link">
                                            <a href="${courseSection.getVideo()}" target="_blank">
                                                ${courseSection.getVideo()} 
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Section Description:</label>
                                        <textarea class="form-control" type="text" name="sectionDescription" style="height:200px;">${courseSection.getDescription()}</textarea>
                                    </div>
                                </div>            
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </div>    
                <button type="button" id="addSectionButton" style="margin-bottom: 50px">Add New Section</button>  
                <!--Tag part-->
                <div class="form-row" id="tagFields">
                    <c:choose>
                        <c:when test="${not empty tagNullMSG}">
                            <div class="name">${tagNullMSG}</div>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="courseTag" items="${listTag}" varStatus="loopStatus">
                                <input type="hidden" name="tagID" value="${courseTag.getTagId()}">
                                <div class="form-group" style="margin-right: 10px">
                                    <label>Tag Name ${loopStatus.index + 1}:</label>
                                    <input class="form-control" type="text" name="tagName" value="${courseTag.getTagName()}" readonly>
                                    <a id="deleteButton" href="deletetag?did=${courseTag.getTagId()}&courseID=${course.getCourseId()}&modeD=1">Delete tag</a>
                                </div>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                </div>
                <button type="button" id="addTagButton">Add New Tag</button>
                <div class="card-footer">
                    <button class="btn btn--radius-2 btn--blue-2" type="submit" name="save" onclick="changeButton(0)">Save Draft</button>
                    <input class="btnMode" type="radio" name="mode" value="3" style="display: none" checked>
                    <input class="btnMode" type="radio" name="mode" value="2" style="display: none">
                    <span style="margin: 0 10px;"></span>
                    <button class="btn btn--radius-2 btn--green" type="submit" name="update" onclick="changeButton(1)">Send Pending Request</button>
                    <span style="margin: 0 10px;"></span>
                    <a href="lecturehome" class="button-link">Back to home</a>
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
                        
                        // Check if errorMsg is not empty
                        var successMsg = "${successMsg}";
                        if (successMsg.trim() !== "") {
                            window.alert(successMsg);
                        }
        </script>
        <script src="js/sidebar.js"></script>

        <script>
                        // Function to add a new section
                        function addSection() {
                            const sectionFields = document.getElementById('sectionFields');
                            const newSection = document.createElement('div');
                            newSection.innerHTML = `
                                <input type="hidden" name="sectionID" value="add">
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Title of Section:</label>
                                        <input class="form-control" style="width: 100%" type="text" name="sectionTitle" >
                                    </div>
                                </div>
                                <div class="form-group" style="margin-right: 10px">
                                    <div class="form-group">
                                        <label>Video link:</label>
                                        <input type="text" name="sectionVideo">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="form-group">
                                        <label>Section Description:</label>
                                        <input class="form-control" type="text" name="sectionDescription">
                                    </div>
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
                            <div class="form-group" style="margin-right: 15px;">
                                <label>Tag Name:</label>
                                <input class="form-control" type="text" name="tagName">
                            </div>
                            `;
                            tagFields.appendChild(newTag);
                        }
                        document.getElementById('addTagButton').addEventListener('click', addTag);

        </script>

        <script>

            function changeButton(mode) {
                let btn = document.getElementsByClassName('btnMode');
                btn[mode].checked = true;
            }
            // Get references to the button and the textarea
            const toggleButton = document.getElementById("toggleButton");
            const textarea = document.querySelector(".sectionArea");

            let isTextAreaVisible = false;

            function toggleVisibility() {
                isTextAreaVisible = !isTextAreaVisible;
                if (isTextAreaVisible) {
                    textarea.style.display = "none";
                    toggleButton.textContent = "View Detail";
                } else {
                    textarea.style.display = "block";
                    toggleButton.textContent = "Hide Detail";
                }
            }

            toggleButton.addEventListener("click", toggleVisibility);

        </script>
    </body>
</html>
