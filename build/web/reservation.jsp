<%-- 
    Document   : bookingroom
    Created on : Jan 20, 2024, 8:16:45 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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
        <link rel="stylesheet" href="css/style.css" type="text/css">
        <!-- Bootstrap core CSS -->
        <link href="assets/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="assets/jumbotron-narrow.css" rel="stylesheet">    
        <link rel="icon" href="images/logo.png">
        <script src="assets/jquery-1.11.3.min.js"></script>
        <title>VNPay</title>
        <style>
            body {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                background-image: url(https://img.freepik.com/free-vector/white-abstract-background_23-2148810353.jpg);
            }
            .room-booking {
                background-color: #fff;
                padding: 5% 10%;
                border: solid 1px black
            }

            .select-option input[type=text] {
                width: 100%;
                height: 50px;
                border: 1px solid #e5e5e5;
                font-size: 16px;
                color: #aaaab3;
                padding-left: 20px;
            }
        </style>
    </head>

    <body >

        <div class="col-lg-8">
            <div style="display: flex; justify-content: space-between; width: 100%; padding: 15px; margin-top: 0px">
                <div class="logo">
                    <a href="./index.html">
                        <img src="images/logo.png" alt="">
                    </a>
                </div>
                <div>
                    <strong style="font-size: 20px;">Pratacera A Way to Learn</strong><br>
                    856 Cordia Extension Apt. 356, Lake, United State <br>
                    (12) 345 67890 <br>

                </div>
            </div>
            <div class="room-booking">
                <h3>Your Reservation</h3>
                <p style="margin-bottom: 50px;">Please check the information of the form.
                    prior to your arrival.</p>
                <form action="payment" method="post">
                    <input type="hidden" name="courseid" value="${courseid}">
                    <input type="hidden" name="courseid" value="${courseid}">
                    <div class="form-group">
                        <label for="amount">Total Amount: </label>                      
                        <input class="form-control" data-val="true" data-val-number="The field Amount must be a number." data-val-required="The Amount field is required."
                               id="amount" max="100000000" min="10000" name="amount" type="text" readonly value="${amount}" />
                    </div>
                    <h4>Choose payment method</h4>
                    <div class="form-group">
                        <h5> Redirect to VNPAY Portal to choose payment method</h5>
                        <input type="radio" Checked="True" id="bankCode" name="bankCode" value="VNBANK">
                        <label for="bankCode">Payment portal VNPAYQR</label><br>
                        <input type="radio" ${isGreater eq 'false'? 'onclick="disable(this) " ' : ''} id="wallet" name="bankCode" value="wallet">
                        <label for="wallet">From your wallet </label> <span style="color: red">${isGreater eq 'false'? '(Your wallet not have enough for this payment)' : ''}</span><br>
                    </div>
                    <div class="form-group">
                        <h5>Select payment interface language:</h5>
                        <input type="radio" id="language" Checked="True" name="language" value="vn">
                        <label for="language">Vietnamese</label><br>
                        <input type="radio" id="language" name="language" value="en">
                        <label for="language">English</label><br>

                    </div>
                    <div style="display: flex; justify-content: space-between; align-items: center;">
                    <button class="btn" style="color: white; background-color: #DFA974;width: 48%;" type="submit">Submit</button>
                    <button class="btn" style="color: white; background-color: #DFA974;width: 48%;" type="button" onclick="window.location.href = './home'">Cancel</button>
                </div>
                </form>
            </div>
        </div>

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