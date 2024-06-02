<%-- 
    Document   : select-role
    Created on : Jan 22, 2024, 10:27:55 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="stylesheet" href="css/stylelog.css"/>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <title>
            Select Role
        </title>

        <style>
            /* Preloder */

            #preloder {
                position: fixed;
                width: 100%;
                height: 100%;
                top: 0;
                left: 0;
                z-index: 999999;
                background: #ffffff;
            }

            .loader {
                width: 40px;
                height: 40px;
                position: absolute;
                top: 50%;
                left: 50%;
                margin-top: -13px;
                margin-left: -13px;
                border-radius: 60px;
                animation: loader 0.8s linear infinite;
                -webkit-animation: loader 0.8s linear infinite;
            }

            @keyframes loader {
                0% {
                    -webkit-transform: rotate(0deg);
                    transform: rotate(0deg);
                    border: 4px solid #f44336;
                    border-left-color: transparent;
                }

                50% {
                    -webkit-transform: rotate(180deg);
                    transform: rotate(180deg);
                    border: 4px solid #673ab7;
                    border-left-color: transparent;
                }

                100% {
                    -webkit-transform: rotate(360deg);
                    transform: rotate(360deg);
                    border: 4px solid #f44336;
                    border-left-color: transparent;
                }
            }

            @-webkit-keyframes loader {
                0% {
                    -webkit-transform: rotate(0deg);
                    border: 4px solid #f44336;
                    border-left-color: transparent;
                }

                50% {
                    -webkit-transform: rotate(180deg);
                    border: 4px solid #673ab7;
                    border-left-color: transparent;
                }

                100% {
                    -webkit-transform: rotate(360deg);
                    border: 4px solid #f44336;
                    border-left-color: transparent;
                }
            }
        </style>
    </head>

    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>
        <!-------------------- Form Box -------------------->
        <div class="form-box" style="width: 100%">
            <!-------------------- Register OTP -------------------->
            <div class="forgot-container" id="forgot">
                <form action="seletrole" id="comfirmEmailForm">
                    <div class="top">
                        <header>One more step to finish</header>
                        <span>Choose your role to join our community</span>
                    </div>
                    <div class="input-box">
                        <div  style="width: 100%" class="input-box">
                            <select class="condition" name="role" required>
                                    <option value="3">Student</option>
                                    <option value="2">Teacher</option>
                                </select>
                                <i class='bx bx-user'></i>
                            </div>
                    </div>
                    <div class="top" style="color: red">
                        <span>${otpErrorMsg}</span>
                    </div>
                    <div class="input-box forgot-btn">
                        <input type="submit" class="submit" value="Submit">
                    </div>
                </form>
            </div>    

                    
        </div>
    </body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/main.js">
    </script>

</html>
