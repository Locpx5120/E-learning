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
            <form action="cmhome" method="POST" >
                <c:forEach items="${course}" var="courseEntry">
                    <c:set var="course" value="${courseEntry.key}" />
                    <c:set var="ratingData" value="${courseEntry.value}" />
                    <div class="form-group">
                        <label for="name">Course ID:</label>
                        <input type="text" class="form-control" name="cid" readonly value="${course.getCourseId()}">
                    </div>
                    <div class="form-group">
                        <label for="name">Course Name:</label>
                        <input type="text" class="form-control"  readonly name="courseName" value="${course.courseName}">
                    </div>

                    <div class="form-group">
                        <label for="name">Lecturer Name:</label>
                        <input type="text" class="form-control"  readonly name="lecturerName" value="${course.getAuthor().getFullName()}">
                    </div>

                    <div class="form-group">
                        <label for="name">Lecturer Email:</label>
                        <input type="text" class="form-control"  readonly name="lecturerEmail" value="${course.getAuthor().getEmail()}">
                    </div>

                    <div class="form-group">
                        <label for="name">Course Image Link:</label>
                        <input type="text" class="form-control"  readonly name="courseImg" value="${course.getImage()}">
                    </div>
                    <div class="form-group">
                        <label for="name">Course Description:</label>
                        <input type="text" class="form-control"  readonly name="courseDescription" value="${course.getDescription()}">
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
                    </div>

                    <div class="form-group">
                        <c:forEach var="ratingEntry" items="${ratingData}">
                            <c:set var="rating" value="${ratingEntry.key}"/>
                            <label>Average rating:</label>
                            <input class="form-control" type="text" name="avgRate" readonly value="${String.format("%.2f", rating)}">
                            <label>Number of Rates:</label>
                            <input class="form-control" type="text" name="numberOfRates" readonly value="${ratingEntry.value}">
                        </c:forEach>
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
                                            <textarea class="form-control" type="text" name="sectionDescription" readonly style="height:200px;">${courseSection.getDescription()}</textarea>
                                        </div>
                                    </div>            
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>

                    </div>
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
                                    </div>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>

                    </div>
                    
                    <div class="form-group">
                        <c:choose>
                            <c:when test="${course.getStatus() == 1}">
                                <label>Reason for suspension: </label>
                            </c:when>
                            <c:otherwise>
                                <label>Message for active courses:</label>
                            </c:otherwise>
                        </c:choose> 
                        <textarea class="form-control" style="height:200px;" name="message" placeholder="Message sent to the lecturer" required></textarea>
                    </div>

                    <div class="card-footer">
                        <c:choose>
                            <c:when test="${course.getStatus() == 1}">
                                <button class="btn btn-primary" style="margin-right: 30px" type="submit">Ban</button>
                            </c:when>
                            <c:otherwise>
                                <button class="btn btn-primary" style="margin-right: 30px" type="submit">Unban</button>
                            </c:otherwise>
                        </c:choose>
                        <a href="cmhome" class="button-link">Back to home</a>
                    </div>
                </c:forEach>
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
