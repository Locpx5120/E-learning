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
            <form action="modifyquestion" method="POST" >
                <div class="form-group">
                    <label for="name">Question Title:</label>
                    <input type="text" class="form-control" name="title" value="${question.getTitle()}">
                </div>
                <div class="form-group">
                    <label for="name">Question Content:</label>
                    <textarea class="form-control" minlength="20" style="height: 200px" name="content">${question.getContent()}</textarea>
                </div>

                <!--Tag part-->
                <div class="form-row" id="tagFields">
                    <c:forEach var="tag" items="${question.getListTag()}" varStatus="loopStatus">
                        <input type="hidden" name="tagID" value="${tag.getTagId()}">
                        <div class="form-group" style="margin-right: 10px">
                            <label>Tag Name ${loopStatus.index + 1}:</label>
                            <input class="form-control" type="text" name="tagName" value="${tag.getTagName()}" readonly>
                            <a id="deleteButton" href="deletequestiontag?did=${tag.getTagId()}&questionID=${question.getQuestionId()}&modeQ=1">Delete tag</a>
                        </div>
                    </c:forEach>
                </div>
                <button type="button" id="addTagButton" class="btn btn-primary">Add New Tag</button>

                <c:forEach items="${listAnswer}" var="answer">
                    <div class="flex-r-m justify-content-between" style="margin: 20px 0; color: #002752">
                        <img class="rounded-circle" style="width:60px; height: 60px; object-fit: cover;"  src="${answer.getUser().getImg()}" alt="IMG-BLOG">
                        <div class="flex-col-c justify-content-center col-lg-11" style="border: 1px solid; border-radius: 20px; padding-top: 10px; margin-left: 20px" >
                            <p style="margin: 0;"><strong>${answer.getUser().getFullName()}</strong></p>
                            <p style="margin: 0;">${answer.getContent()}</p>
                            <p style="margin: 0; font-size: 10px; text-align: right;">${answer.getCreateDate()}</p>
                        </div>
                    </div>
                </c:forEach>
                
                <div class="d-flex justify-content-between align-items-lg-center mt-5">
                    <input type="hidden" name="id" value="${question.getQuestionId()}">
                    <input name="updateBtn" type="submit" class="btn btn-primary col-half mr-1" value="Update" onclick="return confirm('Are you sure you want to update?')">
                    <input name="deleteBtn" type="submit" class="btn btn-primary col-half" value="End" onclick="return confirm('Close this question?')">
                </div>
                    <div class="mt-4 d-flex justify-content-center">
                    <a href="viewlistcreatedquestion" class="btn btn-primary">Go back</a>
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


        <script>
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
    </body>
</html>
