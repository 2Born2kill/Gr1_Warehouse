<%-- 
    Document   : PasswordChange
    Created on : Jan 25, 2025, 3:52:22 PM
    Author     : Dungt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Password Change</title>
        <!-- Add your CSS files here -->
        <link rel="stylesheet" type="text/css" href="../assets/css/vendors/slick/slick.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/vendors/slick/slick-theme.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/bulk-style.css">
        <link id="color-link" rel="stylesheet" type="text/css" href="../assets/css/style.css">
    </head>
    <body>
        <!-- Loader Start -->
        <div class="fullpage-loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
            <span></span>
        </div>
        <!-- Loader End -->

        <!-- Header Start -->
        <header class="pb-md-4 pb-0">
            <div class="header-top">
                <div class="container-fluid-lg">
                    <div class="row">
                        <div class="col-xxl-3 d-xxl-block d-none">
                            <div class="top-left-header">
                                <i class="iconly-Location icli text-white"></i>
                                <span class="text-white">1418 Riverwood Drive, CA 96052, US</span>
                            </div>
                        </div>

                        <div class="col-xxl-6 col-lg-9 d-lg-block d-none">
                            <div class="header-offer">
                                <div class="notification-slider">
                                    <div>
                                        <div class="timer-notification">
                                            <h6><strong class="me-1">Welcome to Fastkart!</strong>Wrap new offers/gift
                                                every single day on Weekends.<strong class="ms-1">New Coupon Code: Fast024
                                                </strong>
                                            </h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-xxl-3 col-lg-3 d-lg-block d-none">
                            <div class="top-right-header">
                                <ul class="header-list">
                                    <li>
                                        <a href="login.jsp" class="text-white">Login</a>
                                    </li>
                                    <li>
                                        <a href="signup.jsp" class="text-white">Sign Up</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Header End -->

        <!-- Password Change Form Start -->
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card mt-5">
                        <div class="card-header">
                            <h3>Change Password</h3>
                        </div>
                        <div class="card-body">
                            <form action="ConfirmPasswordChangeServlet" method="post">
                                <input type="hidden" name="token" value="${param.token}">
                                <div class="form-group">
                                    <label for="newPassword">New Password:</label>
                                    <input type="password" class="form-control" id="newPassword" name="newPassword" required>
                                </div>
                                <div class="form-group">
                                    <label for="confirmPassword">Confirm Password:</label>
                                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" required>
                                </div>
                                <button type="submit" class="btn btn-primary mt-3">Change Password</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Password Change Form End -->

        <!-- Footer Start -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <p class="text-muted">&copy; 2025 Fastkart. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer End -->
    </body>
</html>