<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/30/18
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>View Order</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5.CO"/>
    <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive"/>


    <!-- Facebook and Twitter integration -->
    <meta property="og:title" content=""/>
    <meta property="og:image" content=""/>
    <meta property="og:url" content=""/>
    <meta property="og:site_name" content=""/>
    <meta property="og:description" content=""/>
    <meta name="twitter:title" content=""/>
    <meta name="twitter:image" content=""/>
    <meta name="twitter:url" content=""/>
    <meta name="twitter:card" content=""/>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

    <!-- Animate.css -->
    <link rel="stylesheet" href="/webfile/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="/webfile/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="/webfile/css/bootstrap.css">
    <!-- Superfish -->
    <link rel="stylesheet" href="/webfile/css/superfish.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="/webfile/css/magnific-popup.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="/webfile/css/bootstrap-datepicker.min.css">
    <!-- CS Select -->
    <link rel="stylesheet" href="/webfile/css/cs-select.css">
    <link rel="stylesheet" href="/webfile/css/cs-skin-border.css">

    <link rel="stylesheet" href="/webfile/css/style.css">


    <!-- Modernizr JS -->
    <script src="/webfile/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="/webfile/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>

<div id="fh5co-wrapper">
    <div id="fh5co-page">

        <jsp:include page="header.jsp"></jsp:include>
        <div id="fh5co-blog-section" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>Your orders</h3>
                        <c:if test="${list.size()==0}">
                            <h3>Your don't have order</h3>
                        </c:if>
                        <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis.</p>--%>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row row-bottom-padded-md">

                    <c:forEach items="${list}" var="order">
                        <div class="col-lg-4 col-md-4 col-sm-6">
                            <div class="fh5co-blog animate-box">
                                <%--<a href="#"><img class="img-responsive" src="${order.carImage}" alt=""></a>--%>
                                    <a class="one-1" style="background-image: url('/webfile/images/car/${order.carImage}');">
                                    </a>
                                <div class="blog-text">
                                    <div class="prod-title">
                                        <h3>TYPE: ${order.carType}</h3>
                                        <h3>${order.carName}</h3>
                                        <%--<span class="posted_by">${order.pickupTime}--${order.returnTime}</span>--%>
                                        <p>Pickup Time: ${order.pickupTime}</p>
                                        <p>Return Time: ${order.returnTime}</p>
                                        <p>Name: ${order.renterName}</p>
                                        <p>Phone: ${order.renterPhone}</p>
                                        <p>Total Price: ${order.totalPrice}</p>
                                        <p>Check Number: ${order.checkNum}</p>
                                        <a class="btn btn-primary btn-outline" href="to_update_order?orderId=${order.orderId}">Update <i
                                                class="icon-arrow-right22"></i></a>
                                            <a class="btn btn-primary btn-outline" href="javascript:if(confirm('Confirm Delete?'))location='to_delete_order?orderId=${order.orderId}'">Delete <i class="icon-arrow-right22"></i></a>
                                        <%--<a class="btn btn-primary btn-outline" href="to_delete_order?orderId=${order.orderId}">Delete <i class="icon-arrow-right22"></i></a>--%>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                    <%--<div class="clearfix visible-md-block"></div>--%> <%--可能需要用到这行--%>
                </div>

            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </div>
</div>

<script src="/webfile/js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="/webfile/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="/webfile/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="/webfile/js/jquery.waypoints.min.js"></script>
<script src="/webfile/js/sticky.js"></script>

<!-- Stellar -->
<script src="/webfile/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="/webfile/js/hoverIntent.js"></script>
<script src="/webfile/js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="/webfile/js/jquery.magnific-popup.min.js"></script>
<script src="/webfile/js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="/webfile/js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="/webfile/js/classie.js"></script>
<script src="/webfile/js/selectFx.js"></script>

<!-- Main JS -->
<script src="/webfile/js/main.js"></script>

</body>
</html>