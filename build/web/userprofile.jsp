<%-- 
    Document   : userprofile
    Created on : Feb 8, 2024, 8:39:27 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!--Website: wwww.codingdung.com-->
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Profile</title>

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
        <link rel="stylesheet" href="css/style_1.css">
        <link rel="stylesheet" href="css/styleprofile.css">



        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css?family=Lora:400,700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <!-- Add DataTables CSS link -->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">

    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div id="loader" class="loader"></div>
        </div>




        <div class="container light-style flex-grow-1 container-p-y">
            <h4 class="font-weight-bold py-3 mb-4">
                Account settings
            </h4>
            <div class="card overflow-hidden" style="padding: 50px">
                <div class="row no-gutters row-bordered row-border-light">
                    <div class="col-md-3 pt-0">
                        <div class="list-group list-group-flush account-settings-links">
                            <a class="list-group-item list-group-item-action ${message == null ? 'active' : ''}" data-toggle="list"
                               href="#account-general">General</a>
                            <a class="list-group-item list-group-item-action ${message == null ? '' : 'active'}" data-toggle="list"
                               href="#account-change-password">Change password</a>

                            <c:if test="${sessionScope.User.getRole() != 0 && sessionScope.User.getRole() != 1}">
                                <a class="list-group-item list-group-item-action" data-toggle="list"
                                   href="#account-wallet">User Wallet</a>
                                <a class="list-group-item list-group-item-action" data-toggle="list"
                                   href="#account-history-payment">History Payment</a>
                            </c:if>

                            <a class="list-group-item list-group-item-action"
                               href="${sessionScope.User.getRole() == 2 ? 'lecturehome' :
                                       sessionScope.User.getRole() == 1 ? 'cmhome' : sessionScope.User.getRole() == 0? 'dashboard' : 'home'}">Home</a>
                        </div>
                    </div>
                    <div class="col-md-9">

                        <div class="tab-content">

                            <div class="tab-pane fade ${message == null ? 'active show' : ''}" id="account-general" style="padding: 30px">
                                <form id="profile" action="profile" method="post" enctype="multipart/form-data">
                                    <div class="card-body media align-items-center">
                                        <img src="${sessionScope.User.getImg()}" alt
                                             class="d-block ui-w-80" id="image-preview" style="border-radius: 50%;
                                             aspect-ratio: 1/1;">
                                        <div class="media-body ml-4">
                                            <label class="btn btn-outline-primary">
                                                Upload new photo
                                                <input type="button" class="account-settings-fileinput"id="update-btn">
                                                <input type="file" id="image-upload" accept="image/*" style="display: none;">
                                                <input type="hidden" id="imgUrl" name="imgUrl" value="${sessionScope.User.getImg()}" >
                                            </label> &nbsp;
                                            <div class="text-light small mt-1">Allowed JPG, GIF or PNG. Max size of 800K</div>
                                        </div>
                                    </div>
                                    <hr class="border-light m-0">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label class="form-label">Full Name: </label>
                                            <input type="text" class="form-control mb-1" value="${user.getFullName()}" name="fullname">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Gender</label>
                                            <select class="form-control" id="exampleSelect" name="gender">
                                                <c:choose>
                                                    <c:when test="${user.gender == '1'}">
                                                        <option value="1" selected>Male</option>
                                                        <option value="0">Female</option>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <option value="1">Male</option>
                                                        <option value="0"selected>Female</option>
                                                    </c:otherwise>
                                                </c:choose>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Birthday</label>
                                            <input type="date" class="form-control" value="${user.dob}" name="dob" required>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Username</label>
                                            <input type="text" class="form-control" value="${user.username}" name="username" readonly>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">E-mail</label>
                                            <input type="text" class="form-control mb-1"  value="${user.email}" name="email"  readonly>
                                            <span style="color: #34ce57">Your email is confirmed.</span>
                                        </div>
                                    </div>
                                    <div class="text-right mt-3">
                                        <button type="submit" class="btn btn-primary">Save changes</button>&nbsp;
                                        <button type="button" class="btn btn-default" onclick="window.location.href = './profile'">Cancel</button>
                                    </div>
                                </form>
                            </div>

                            <div class="tab-pane fade ${message == null ? '' : 'active show'}" id="account-change-password" style="padding: 30px">
                                <form action="changepass">
                                    <div class="card-body pb-2">
                                        <div class="form-group">
                                            <label class="form-label" >Current password</label>
                                            <input type="password" name="oldpass" class="form-control" required>
                                            <span style="color: #dc3545;">${message}</span>
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">New password</label>
                                            <input id="newpass" type="password" name="newpass" class="form-control" required pattern="^\d{6,}$" title="Password must >= 6 characters">
                                        </div>
                                        <div class="form-group">
                                            <label class="form-label">Repeat new password</label>
                                            <input id="renewpass" type="password" name="renewpass" class="form-control" oninput="check()" required>
                                            <span id="error" style="color: #dc3545; display: none">Confirm-password is not match</span>
                                        </div>
                                    </div>

                                    <div class="text-right mt-3">
                                        <button type="submit" class="btn btn-primary">Save changes</button>&nbsp;
                                        <button type="button" class="btn btn-default" onclick="window.location.href = './profile'">Cancel</button>
                                    </div>
                                </form>

                            </div>



                            <div class="tab-pane fade" id="account-wallet" style="padding: 30px">
                                <form action="payment" method="post">
                                    <input type="hidden" name="info" value="Add money to wallet">
                                    <div class="card-body pb-2">
                                        <div class="form-group">
                                            <label class="form-label" >Current amount: </label>
                                            <input type="text" class="form-control" value="${String.format("%,.0f",sessionScope.User.getWallet())} vnd" readonly>
                                        </div>
                                        <div class="form-group" style="margin-bottom: 15px">
                                            <label for="amount">Charge Amount: </label>                      
                                            <input style="width: 100%; padding: 0.5rem" class="form-control" data-val="true" pattern="[0-9]+" title="The field Amount must be a number." 
                                                   id="amount" name="amount" type="number" onchange="checkAmount()"/>
                                        </div>
                                        <div class="form-group" style="margin-bottom: 20px">
                                            <h5 style="margin: 10px 0; margin-bottom: 15px"> Redirect to VNPAY Portal to choose payment method</h5>
                                            <input type="radio" Checked="True" id="bankCode" name="bankCode" value="VNBANK">
                                            <label for="bankCode">Payment portal VNPAYQR</label><br>
                                        </div>
                                        <div class="form-group" style="margin-bottom: 20px">
                                            <h5 style="margin-bottom: 15px">Select payment interface language:</h5>
                                            <input type="radio" id="language" Checked="True" name="language" value="vn">
                                            <label for="language">Vietnamese</label><br>
                                            <input type="radio" id="language" name="language" value="en">
                                            <label for="language">English</label><br>

                                        </div>
                                    </div>

                                    <div class="text-right mt-3">
                                        <button type="submit" class="btn btn-primary">Submit payment</button>&nbsp;
                                        <button type="button" class="btn btn-default" onclick="window.location.href = './profile'">Cancel</button>
                                    </div>
                                </form>

                            </div>

                            <div class="tab-pane fade" id="account-history-payment" style="padding: 30px">
                                <table id="roomTable" class="table table-striped table-bordered">
                                    <tr>
                                        <th>Username</th>
                                        <th>Amount</th>
                                        <th>Created Date</th>
                                        <th>Info</th>
                                        <th>Status</th>
                                    </tr>
                                    <c:forEach items="${listPayment}" var="payment">
                                        <tr>
                                            <td>${payment.getUsername()}</td>
                                            <td>
                                                <c:if test="${payment.getAmount() < 0}">
                                                    <span style="color: red"><fmt:formatNumber value="${payment.getAmount()}" pattern="###,###"/> vnd</span>
                                                </c:if>
                                                <c:if test="${payment.getAmount() > 0}">
                                                    <span style="color: green">+<fmt:formatNumber value="${payment.getAmount()}" pattern="###,###"/> vnd</span>
                                                </c:if>
                                            </td>
                                            <td>
                                                <c:set var="dateString" value="${payment.getCreatedDate()}"/>
                                                <c:set var="formattedDate" value="${fn:replace(dateString, 'T', ' ')}"/>
                                                ${formattedDate}
                                            </td>
                                            <td>${payment.getInfo()}</td>
                                            <td>
                                                <c:if test="${payment.getStatus() == 1}">
                                                    <span style="color: green;">Success</span>
                                                </c:if>
                                                <c:if test="${payment.getStatus() == 0}">
                                                    <span style="color: red;">Fail</span>
                                                </c:if>
                                                <c:if test="${payment.getStatus() == 2}">
                                                    <span style="color: grey;">Created</span>
                                                </c:if>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
            <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js"></script>

            <!-- Js Plugins -->
            <script src="js/jquery-3.3.1.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/jquery.magnific-popup.min.js"></script>
            <script src="js/jquery.nice-select.min.js"></script>
            <script src="js/jquery-ui.min.js"></script>
            <script src="js/jquery.slicknav.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/main.js"></script>

            <!-- Datatables JS -->
            <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
            <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>



            <script>
                                            function check() {
                                                var newpass = document.getElementById('newpass');
                                                var renewpass = document.getElementById('renewpass');
                                                var error = document.getElementById('error');

                                                if (renewpass.value !== newpass.value) {
                                                    error.style.display = 'inline';
                                                } else {
                                                    error.style.display = 'none';
                                                }
                                            }

                                            const amountInput = document.getElementById('amount');
                                            function checkAmount() {
                                                let amount = amountInput.value;
                                                if (amount > 100000000) {
                                                    amountInput.value = '100000000';
                                                }
                                                if (amount < 5000) {
                                                    amountInput.value = '5000';
                                                }
                                            }



            </script>

            <script>
                // JavaScript to control image update
                const chooseImageButton = document.getElementById('update-btn');
                const imageUpload = document.getElementById('image-upload');
                const imagePreview = document.getElementById('image-preview');
                const imgUrl = document.getElementById('imgUrl');

                chooseImageButton.addEventListener('click', function () {
                    imageUpload.click();
                });

                var data = {
                    key: '9d43938508e0396449ee020fde6f3b19',
                    imageUrl: ''
                };

                imageUpload.addEventListener('change', function () {
                    const file = imageUpload.files[0];
                    if (file) {
                        const reader = new FileReader();

                        reader.onload = function (e) {
                            imagePreview.src = e.target.result;
                        };

                        reader.readAsDataURL(file);
                        const formData = new FormData();
                        formData.append('image', file);
                        document.getElementById('preloder').style.display = 'block';
                        document.getElementById('loader').style.display = 'block';
                        // Make body overflow hidden so it's not scrollable
                        document.documentElement.style.overflow = 'hidden';
                        fetch('https://api.imgbb.com/1/upload?key=' + data.key, {
                            method: 'POST',
                            body: formData
                        })
                                .then(response => response.json())
                                .then(result => {
                                    const imageUrl = result.data.url;
                                    console.log('Uploaded image URL:', imageUrl);
                                    data.imageUrl = imageUrl;
                                    imgUrl.value = imageUrl;
                                    // Remove body overflow hidden
                                    document.documentElement.style.overflow = '';
                                    //remove loading effect
                                    document.getElementById('preloder').style.display = 'none';
                                    // Update the data object with the new image URL.

                                })
                                .catch(error => {
                                    console.error('Error uploading image:', error);
                                    document.documentElement.style.overflow = '';
                                    //remove loading effect
                                    document.getElementById('preloder').style.display = 'none';
                                    // Update the data object with the new image URL.
                                });
                    }
                });
            </script>


            <script>
                function check() {
                    var newpass = document.getElementById('newpass');
                    var renewpass = document.getElementById('renewpass');
                    var error = document.getElementById('error');

                    if (renewpass.value !== newpass.value) {
                        error.style.display = 'inline';
                    } else {
                        error.style.display = 'none';
                    }
                }
            </script>

    </body>

</html>
