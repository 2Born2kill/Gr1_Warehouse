<%-- 
    Document   : dashboard
    Created on : Jan 25, 2025, 3:25:45 PM
    Author     : Dungt
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description"
        content="Fastkart admin is super flexible, powerful, clean &amp; modern responsive bootstrap 5 admin template with unlimited possibilities.">
    <meta name="keywords"
        content="admin template, Fastkart admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="pixelstrap">
    <link rel="icon" href="assets/images/favicon.png" type="image/x-icon">
    <link rel="shortcut icon" href="assets/images/favicon.png" type="image/x-icon">
    <title>Fastkart - Dashboard</title>

    <!-- Google font-->
    <link
        href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- Linear Icon css -->
    <link rel="stylesheet" href="assets/css/linearicon.css">

    <!-- fontawesome css -->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/font-awesome.css">

    <!-- Themify icon css-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/themify.css">

    <!-- ratio css -->
    <link rel="stylesheet" type="text/css" href="assets/css/ratio.css">

    <!-- remixicon css -->
    <link rel="stylesheet" type="text/css" href="assets/css/remixicon.css">

    <!-- Feather icon css-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/feather-icon.css">

    <!-- Plugins css -->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/scrollbar.css">
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/animate.css">

    <!-- Bootstrap css-->
    <link rel="stylesheet" type="text/css" href="assets/css/vendors/bootstrap.css">

    <!-- vector map css -->
    <link rel="stylesheet" type="text/css" href="assets/css/vector-map.css">

    <!-- Slick Slider Css -->
    <link rel="stylesheet" href="assets/css/vendors/slick.css">

    <!-- App css -->
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>

<body>
    <!-- tap on top start -->
    <div class="tap-top">
        <span class="lnr lnr-chevron-up"></span>
    </div>
    <!-- tap on tap end -->

    <!-- page-wrapper Start-->
    <div class="page-wrapper compact-wrapper" id="pageWrapper">
        <!-- Page Header Start-->
        <div class="page-header">
            <div class="header-wrapper m-0">
                <div class="header-logo-wrapper p-0">
                    <div class="logo-wrapper">
                        <a href="index.html">
                            <img class="img-fluid main-logo" src="assets/images/logo/1.png" alt="logo">
                            <img class="img-fluid white-logo" src="assets/images/logo/1-white.png" alt="logo">
                        </a>
                    </div>
                    <div class="toggle-sidebar">
                        <i class="status_toggle middle sidebar-toggle" data-feather="align-center"></i>
                        <a href="index.html">
                            <img src="assets/images/logo/1.png" class="img-fluid" alt="">
                        </a>
                    </div>
                </div>

                <form class="form-inline search-full" action="javascript:void(0)" method="get">
                    <div class="form-group w-100">
                        <div class="Typeahead Typeahead--twitterUsers">
                            <div class="u-posRelative">
                                <input class="demo-input Typeahead-input form-control-plaintext w-100" type="text"
                                    placeholder="Search Fastkart .." name="q" title="" autofocus>
                                <i class="close-search" data-feather="x"></i>
                                <div class="spinner-border Typeahead-spinner" role="status">
                                    <span class="sr-only">Loading...</span>
                                </div>
                            </div>
                            <div class="Typeahead-menu"></div>
                        </div>
                    </div>
                </form>
                <div class="nav-right col-6 pull-right right-header p-0">
                    <ul class="nav-menus">
                        <li>
                            <span class="header-search">
                                <i class="ri-search-line"></i>
                            </span>
                        </li>
                        <li class="onhover-dropdown">
                            <div class="notification-box">
                                <i class="ri-notification-line"></i>
                                <span class="badge rounded-pill badge-theme">4</span>
                            </div>
                            <ul class="notification-dropdown onhover-show-div">
                                <li>
                                    <i class="ri-notification-line"></i>
                                    <h6 class="f-18 mb-0">Notitications</h6>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-primary"></i>Delivery processing <span
                                            class="pull-right">10 min.</span>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-success"></i>Order Complete<span
                                            class="pull-right">1 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-info"></i>Tickets Generated<span
                                            class="pull-right">3 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fa fa-circle me-2 font-danger"></i>Delivery Complete<span
                                            class="pull-right">6 hr</span>
                                    </p>
                                </li>
                                <li>
                                    <a class="btn btn-primary" href="javascript:void(0)">Check all notification</a>
                                </li>
                            </ul>
                        </li>

                        <li>
                            <div class="mode">
                                <i class="ri-moon-line"></i>
                            </div>
                        </li>
                        <li class="profile-nav onhover-dropdown pe-0 me-0">
                            <div class="media profile-media">
                                <img class="user-profile rounded-circle" src="assets/images/users/4.jpg" alt="">
                                <div class="user-name-hide media-body">
                                    <span>Emay Walter</span>
                                    <p class="mb-0 font-roboto">Admin<i class="middle ri-arrow-down-s-line"></i></p>
                                </div>
                            </div>
                            <ul class="profile-dropdown onhover-show-div">
                                <li>
                                    <a href="all-users.html">
                                        <i data-feather="users"></i>
                                        <span>Users</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="order-list.html">
                                        <i data-feather="archive"></i>
                                        <span>Orders</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="support-ticket.html">
                                        <i data-feather="phone"></i>
                                        <span>Spports Tickets</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="profile-setting.html">
                                        <i data-feather="settings"></i>
                                        <span>Settings</span>
                                    </a>
                                </li>
                                <li>
                                    <a data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                        href="javascript:void(0)">
                                        <i data-feather="log-out"></i>
                                        <span>Log out</span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Page Header Ends-->

        <!-- Page Body Start-->
        <div class="page-body-wrapper">
            <!-- Page Sidebar Start-->
            <div class="sidebar-wrapper">
                <div id="sidebarEffect"></div>
                <div>
                    <div class="logo-wrapper logo-wrapper-center">
                        <a href="index.html" data-bs-original-title="" title="">
                            <img class="img-fluid for-white" src="assets/images/logo/full-white.png" alt="logo">
                        </a>
                        <div class="back-btn">
                            <i class="fa fa-angle-left"></i>
                        </div>
                        <div class="toggle-sidebar">
                            <i class="ri-apps-line status_toggle middle sidebar-toggle"></i>
                        </div>
                    </div>
                    <div class="logo-icon-wrapper">
                        <a href="index.html">
                            <img class="img-fluid main-logo main-white" src="assets/images/logo/logo.png" alt="logo">
                            <img class="img-fluid main-logo main-dark" src="assets/images/logo/logo-white.png"
                                alt="logo">
                        </a>
                    </div>
                    <nav class="sidebar-main">
                        <div class="left-arrow" id="left-arrow">
                            <i data-feather="arrow-left"></i>
                        </div>

                        <div id="sidebar-menu">
                            <ul class="sidebar-links" id="simple-bar">
                                <li class="back-btn"></li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="index.html">
                                        <i class="ri-home-line"></i>
                                        <span>Dashboard</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-store-3-line"></i>
                                        <span>Product</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="products.html">Prodcts</a>
                                        </li>

                                        <li>
                                            <a href="add-new-product.html">Add New Products</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-list-check-2"></i>
                                        <span>Category</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="category.html">Category List</a>
                                        </li>

                                        <li>
                                            <a href="add-new-category.html">Add New Category</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-list-settings-line"></i>
                                        <span>Attributes</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="attributes.html">Attributes</a>
                                        </li>

                                        <li>
                                            <a href="add-new-attributes.html">Add Attributes</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-user-3-line"></i>
                                        <span>Users</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="all-users.html">All users</a>
                                        </li>
                                        <li>
                                            <a href="add-new-user.html">Add new user</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-user-3-line"></i>
                                        <span>Roles</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="role.html">All roles</a>
                                        </li>
                                        <li>
                                            <a href="create-role.html">Create Role</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="media.html">
                                        <i class="ri-price-tag-3-line"></i>
                                        <span>Media</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-archive-line"></i>
                                        <span>Orders</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="order-list.html">Order List</a>
                                        </li>
                                        <li>
                                            <a href="order-detail.html">Order Detail</a>
                                        </li>
                                        <li>
                                            <a href="order-tracking.html">Order Tracking</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-focus-3-line"></i>
                                        <span>Localization</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="translation.html">Translation</a>
                                        </li>

                                        <li>
                                            <a href="currency-rates.html">Currency Rates</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-price-tag-3-line"></i>
                                        <span>Coupons</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="coupon-list.html">Coupon List</a>
                                        </li>

                                        <li>
                                            <a href="create-coupon.html">Create Coupon</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="taxes.html">
                                        <i class="ri-price-tag-3-line"></i>
                                        <span>Tax</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="product-review.html">
                                        <i class="ri-star-line"></i>
                                        <span>Product Review</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="support-ticket.html">
                                        <i class="ri-phone-line"></i>
                                        <span>Support Ticket</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="linear-icon-link sidebar-link sidebar-title" href="javascript:void(0)">
                                        <i class="ri-settings-line"></i>
                                        <span>Settings</span>
                                    </a>
                                    <ul class="sidebar-submenu">
                                        <li>
                                            <a href="profile-setting.html">Profile Setting</a>
                                        </li>
                                    </ul>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="reports.html">
                                        <i class="ri-file-chart-line"></i>
                                        <span>Reports</span>
                                    </a>
                                </li>

                                <li class="sidebar-list">
                                    <a class="sidebar-link sidebar-title link-nav" href="list-page.html">
                                        <i class="ri-list-check"></i>
                                        <span>List Page</span>
                                    </a>
                                </li>
                            </ul>
                        </div>

                        <div class="right-arrow" id="right-arrow">
                            <i data-feather="arrow-right"></i>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Page Sidebar Ends-->

            <!-- index body start -->
            <div class="page-body">
                <div class="container-fluid">
                    <div class="row">
                        <!-- chart caard section start -->
                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="main-tiles border-5 border-0  card-hover card o-hidden">
                                <div class="custome-1-bg b-r-4 card-body">
                                    <div class="media align-items-center static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">Total Revenue</span>
                                            <h4 class="mb-0 counter">$6659
                                                <span class="badge badge-light-primary grow">
                                                    <i data-feather="trending-up"></i>8.5%</span>
                                            </h4>
                                        </div>
                                        <div class="align-self-center text-center">
                                            <i class="ri-database-2-line"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="main-tiles border-5 card-hover border-0 card o-hidden">
                                <div class="custome-2-bg b-r-4 card-body">
                                    <div class="media static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">Total Orders</span>
                                            <h4 class="mb-0 counter">9856
                                                <span class="badge badge-light-danger grow">
                                                    <i data-feather="trending-down"></i>8.5%</span>
                                            </h4>
                                        </div>
                                        <div class="align-self-center text-center">
                                            <i class="ri-shopping-bag-3-line"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="main-tiles border-5 card-hover border-0  card o-hidden">
                                <div class="custome-3-bg b-r-4 card-body">
                                    <div class="media static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">Total Products</span>
                                            <h4 class="mb-0 counter">893
                                                <a href="add-new-product.html" class="badge badge-light-secondary grow">
                                                    ADD NEW</a>
                                            </h4>
                                        </div>

                                        <div class="align-self-center text-center">
                                            <i class="ri-chat-3-line"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-xxl-3 col-lg-6">
                            <div class="main-tiles border-5 card-hover border-0 card o-hidden">
                                <div class="custome-4-bg b-r-4 card-body">
                                    <div class="media static-top-widget">
                                        <div class="media-body p-0">
                                            <span class="m-0">Total Customers</span>
                                            <h4 class="mb-0 counter">4.6k
                                                <span class="badge badge-light-success grow">
                                                    <i data-feather="trending-down"></i>8.5%</span>
                                            </h4>
                                        </div>

                                        <div class="align-self-center text-center">
                                            <i class="ri-user-add-line"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0 pb-1">
                                    <div class="card-header-title p-0">
                                        <h4>Category</h4>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div class="category-slider no-arrow">
                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/vegetable.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Vegetables & Fruit</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/cup.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Beverages</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/meats.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Meats & Seafood</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/breakfast.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Breakfast</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/frozen.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Frozen Foods</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/milk.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Milk & Dairies</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/pet.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Pet Food</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/vegetable.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Vegetables & Fruit</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/cup.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Beverages</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/meats.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Meats & Seafood</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/breakfast.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Breakfast</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/frozen.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Frozen Foods</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/milk.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Milk & Dairies</h6>
                                                </a>
                                            </div>
                                        </div>

                                        <div>
                                            <div class="dashboard-category">
                                                <a href="javascript:void(0)" class="category-image">
                                                    <img src="assets/svg/pet.svg" class="img-fluid" alt="">
                                                </a>
                                                <a href="javascript:void(0)" class="category-name">
                                                    <h6>Pet Food</h6>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- chart card section End -->


                        <!-- Earning chart star-->
                        <div class="col-xl-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0 pb-1">
                                    <div class="card-header-title">
                                        <h4>Revenue Report</h4>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div id="report-chart"></div>
                                </div>
                            </div>
                        </div>
                        <!-- Earning chart  end-->


                        <!-- Best Selling Product Start -->
                        <div class="col-xl-6 col-md-12">
                            <div class="card o-hidden card-hover">
                                <div class="card-header card-header-top card-header--2 px-0 pt-0">
                                    <div class="card-header-title">
                                        <h4>Best Selling Product</h4>
                                    </div>

                                    <div class="best-selling-box d-sm-flex d-none">
                                        <span>Short By:</span>
                                        <div class="dropdown">
                                            <button class="btn p-0 dropdown-toggle" type="button"
                                                id="dropdownMenuButton1" data-bs-toggle="dropdown"
                                                data-bs-auto-close="true">Today</button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-0">
                                    <div>
                                        <div class="table-responsive">
                                            <table class="best-selling-table w-image
                                            w-image
                                            w-image table border-0">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-image">
                                                                    <img src="assets/images/product/1.png"
                                                                        class="img-fluid" alt="Product">
                                                                </div>
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>26-08-2022</h6>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$29.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Orders</h6>
                                                                <h5>62</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Stock</h6>
                                                                <h5>510</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Amount</h6>
                                                                <h5>$1,798</h5>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-image">
                                                                    <img src="assets/images/product/2.png"
                                                                        class="img-fluid" alt="Product">
                                                                </div>
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>26-08-2022</h6>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$29.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Orders</h6>
                                                                <h5>62</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Stock</h6>
                                                                <h5>510</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Amount</h6>
                                                                <h5>$1,798</h5>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-image">
                                                                    <img src="assets/images/product/3.png"
                                                                        class="img-fluid" alt="Product">
                                                                </div>
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>26-08-2022</h6>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$29.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Orders</h6>
                                                                <h5>62</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Stock</h6>
                                                                <h5>510</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Amount</h6>
                                                                <h5>$1,798</h5>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Best Selling Product End -->


                        <!-- Recent orders start-->
                        <div class="col-xl-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header card-header-top card-header--2 px-0 pt-0">
                                    <div class="card-header-title">
                                        <h4>Recent Orders</h4>
                                    </div>

                                    <div class="best-selling-box d-sm-flex d-none">
                                        <span>Short By:</span>
                                        <div class="dropdown">
                                            <button class="btn p-0 dropdown-toggle" type="button"
                                                id="dropdownMenuButton2" data-bs-toggle="dropdown"
                                                data-bs-auto-close="true">Today</button>
                                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton2">
                                                <li><a class="dropdown-item" href="#">Action</a></li>
                                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <div class="card-body p-0">
                                    <div>
                                        <div class="table-responsive">
                                            <table class="best-selling-table table border-0">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>#64548</h6>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Date Placed</h6>
                                                                <h5>5/1/22</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$250.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Order Status</h6>
                                                                <h5>Completed</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Payment</h6>
                                                                <h5 class="text-danger">Unpaid</h5>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>26-08-2022</h6>
                                                                </div>
                                                            </div>
                                                        </td>


                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Date Placed</h6>
                                                                <h5>5/1/22</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$250.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Order Status</h6>
                                                                <h5>Completed</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Payment</h6>
                                                                <h5 class="theme-color">Paid</h5>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>26-08-2022</h6>
                                                                </div>
                                                            </div>
                                                        </td>


                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Date Placed</h6>
                                                                <h5>5/1/22</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$250.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Order Status</h6>
                                                                <h5>Completed</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Payment</h6>
                                                                <h5 class="theme-color">Paid</h5>
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="best-product-box">
                                                                <div class="product-name">
                                                                    <h5>Aata Buscuit</h5>
                                                                    <h6>26-08-2022</h6>
                                                                </div>
                                                            </div>
                                                        </td>


                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Date Placed</h6>
                                                                <h5>5/1/22</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Price</h6>
                                                                <h5>$250.00</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Order Status</h6>
                                                                <h5>Completed</h5>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <div class="product-detail-box">
                                                                <h6>Payment</h6>
                                                                <h5 class="theme-color">Paid</h5>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Recent orders end-->

                        <!-- Earning chart star-->
                        <div class="col-xl-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0 mb-0">
                                    <div class="card-header-title">
                                        <h4>Earning</h4>
                                    </div>
                                </div>
                                <div class="card-body p-0">
                                    <div id="bar-chart-earning"></div>
                                </div>
                            </div>
                        </div>
                        <!-- Earning chart end-->


                        <!-- Transactions start-->
                        <div class="col-xxl-4 col-md-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0">
                                    <div class="card-header-title">
                                        <h4>Transactions</h4>
                                    </div>
                                </div>

                                <div class="card-body pt-0">
                                    <div>
                                        <div class="table-responsive">
                                            <table class="user-table transactions-table table border-0">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <div class="transactions-icon">
                                                                <i class="ri-shield-line"></i>
                                                            </div>
                                                            <div class="transactions-name">
                                                                <h6>Wallets</h6>
                                                                <p>Starbucks</p>
                                                            </div>
                                                        </td>

                                                        <td class="lost">-$74</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="td-color-1">
                                                            <div class="transactions-icon">
                                                                <i class="ri-check-line"></i>
                                                            </div>
                                                            <div class="transactions-name">
                                                                <h6>Bank Transfer</h6>
                                                                <p>Add Money</p>
                                                            </div>
                                                        </td>

                                                        <td class="success">+$125</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="td-color-2">
                                                            <div class="transactions-icon">
                                                                <i class="ri-exchange-dollar-line"></i>
                                                            </div>
                                                            <div class="transactions-name">
                                                                <h6>Paypal</h6>
                                                                <p>Add Money</p>
                                                            </div>
                                                        </td>

                                                        <td class="lost">-$50</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="td-color-3">
                                                            <div class="transactions-icon">
                                                                <i class="ri-bank-card-line"></i>
                                                            </div>
                                                            <div class="transactions-name">
                                                                <h6>Mastercard</h6>
                                                                <p>Ordered Food</p>
                                                            </div>
                                                        </td>

                                                        <td class="lost">-$40</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="td-color-4 pb-0">
                                                            <div class="transactions-icon">
                                                                <i class="ri-bar-chart-grouped-line"></i>
                                                            </div>
                                                            <div class="transactions-name">
                                                                <h6>Transfer</h6>
                                                                <p>Refund</p>
                                                            </div>
                                                        </td>

                                                        <td class="success pb-0">+$90</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Transactions end-->

                        <!-- visitors chart start-->
                        <div class="col-xxl-4 col-md-6">
                            <div class="h-100">
                                <div class="card o-hidden card-hover">
                                    <div class="card-header border-0">
                                        <div class="d-flex align-items-center justify-content-between">
                                            <div class="card-header-title">
                                                <h4>Visitors</h4>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body pt-0">
                                        <div class="pie-chart">
                                            <div id="pie-chart-visitors"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- visitors chart end-->


                        <!-- To Do List start-->
                        <div class="col-xxl-4 col-md-6">
                            <div class="card o-hidden card-hover">
                                <div class="card-header border-0">
                                    <div class="card-header-title">
                                        <h4>To Do List</h4>
                                    </div>
                                </div>

                                <div class="card-body pt-0">
                                    <ul class="to-do-list">
                                        <li class="to-do-item">
                                            <div class="form-check user-checkbox">
                                                <input class="checkbox_animated check-it" type="checkbox" value=""
                                                    id="flexCheckDefault">
                                            </div>
                                            <div class="to-do-list-name">
                                                <strong>Pick up kids from school</strong>
                                                <p>8 Hours</p>
                                            </div>
                                        </li>
                                        <li class="to-do-item">
                                            <div class="form-check user-checkbox">
                                                <input class="checkbox_animated check-it" type="checkbox" value=""
                                                    id="flexCheckDefault1">
                                            </div>
                                            <div class="to-do-list-name">
                                                <strong>Prepare or presentation.</strong>
                                                <p>8 Hours</p>
                                            </div>
                                        </li>
                                        <li class="to-do-item">
                                            <div class="form-check user-checkbox">
                                                <input class="checkbox_animated check-it" type="checkbox" value=""
                                                    id="flexCheckDefault2">
                                            </div>
                                            <div class="to-do-list-name">
                                                <strong>Create invoice</strong>
                                                <p>8 Hours</p>
                                            </div>
                                        </li>
                                        <li class="to-do-item">
                                            <div class="form-check user-checkbox">
                                                <input class="checkbox_animated check-it" type="checkbox" value=""
                                                    id="flexCheckDefault3">
                                            </div>
                                            <div class="to-do-list-name">
                                                <strong>Meeting with Alisa</strong>
                                                <p>8 Hours</p>
                                            </div>
                                        </li>

                                        <li class="to-do-item">
                                            <form class="row g-2">
                                                <div class="col-8">
                                                    <input type="text" class="form-control" id="name"
                                                        placeholder="Enter Task Name">
                                                </div>
                                                <div class="col-4">
                                                    <button type="submit" class="btn btn-primary w-100 h-100">Add
                                                        task</button>
                                                </div>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- To Do List end-->


                    </div>
                </div>
                <!-- Container-fluid Ends-->

                <!-- footer start-->
                <div class="container-fluid">
                    <footer class="footer">
                        <div class="row">
                            <div class="col-md-12 footer-copyright text-center">
                                <p class="mb-0">Copyright 2022 © Fastkart theme by pixelstrap</p>
                            </div>
                        </div>
                    </footer>
                </div>
                <!-- footer End-->
            </div>
            <!-- index body end -->

        </div>
        <!-- Page Body End -->
    </div>
    <!-- page-wrapper End-->

    <!-- Modal Start -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog  modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <h5 class="modal-title" id="staticBackdropLabel">Logging Out</h5>
                    <p>Are you sure you want to log out?</p>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <div class="button-box">
                        <button type="button" class="btn btn--no" data-bs-dismiss="modal">No</button>
                        <button type="button" class="btn  btn--yes btn-primary">Yes</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal End -->

    <!-- latest js -->
    <script src="assets/js/jquery-3.6.0.min.js"></script>

    <!-- Bootstrap js -->
    <script src="assets/js/bootstrap/bootstrap.bundle.min.js"></script>

    <!-- feather icon js -->
    <script src="assets/js/icons/feather-icon/feather.min.js"></script>
    <script src="assets/js/icons/feather-icon/feather-icon.js"></script>

    <!-- scrollbar simplebar js -->
    <script src="assets/js/scrollbar/simplebar.js"></script>
    <script src="assets/js/scrollbar/custom.js"></script>

    <!-- Sidebar jquery -->
    <script src="assets/js/config.js"></script>

    <!-- tooltip init js -->
    <script src="assets/js/tooltip-init.js"></script>

    <!-- Plugins JS -->
    <script src="assets/js/sidebar-menu.js"></script>
    <script src="assets/js/notify/bootstrap-notify.min.js"></script>
    <script src="assets/js/notify/index.js"></script>

    <!-- Apexchar js -->
    <script src="assets/js/chart/apex-chart/apex-chart1.js"></script>
    <script src="assets/js/chart/apex-chart/moment.min.js"></script>
    <script src="assets/js/chart/apex-chart/apex-chart.js"></script>
    <script src="assets/js/chart/apex-chart/stock-prices.js"></script>
    <script src="assets/js/chart/apex-chart/chart-custom1.js"></script>


    <!-- slick slider js -->
    <script src="assets/js/slick.min.js"></script>
    <script src="assets/js/custom-slick.js"></script>

    <!-- customizer js -->
    <script src="assets/js/customizer.js"></script>

    <!-- ratio js -->
    <script src="assets/js/ratio.js"></script>

    <!-- sidebar effect -->
    <script src="assets/js/sidebareffect.js"></script>

    <!-- Theme js -->
    <script src="assets/js/script.js"></script>
</body>

</html>
