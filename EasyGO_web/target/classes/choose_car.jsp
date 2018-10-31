<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/30/18
  Time: 10:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>choose_car</title>
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
    <link rel="stylesheet" href="css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Superfish -->
    <link rel="stylesheet" href="css/superfish.css">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="css/bootstrap-datepicker.min.css">
    <!-- CS Select -->
    <link rel="stylesheet" href="css/cs-select.css">
    <link rel="stylesheet" href="css/cs-skin-border.css">

    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/choose_car.css" >


    <!-- Modernizr JS -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="fh5co-wrapper">
    <div id="fh5co-page">

        <jsp:include page="header.jsp"></jsp:include>

        <div id="fh5co-car" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>CHOOSE A VEHICLE CLASS</h3>
                    </div>
                </div>
                <div class="row row-bottom-padded-md">


                    <div class="col-md-6 animate-box">
                        <div class="car">
                            <div class="one-4">
                                <h2>Economy</h2>
                                <h4><font color="white">Mitsubishi Mirage</font></h4>
                                <h5><b>Automatic</b></h5>
                                <span class="price">$100<small> / day</small></span>
                                <span class="price">$350<small> Total (Tax incl.)</small></span>
                                <input type="button">
                            </div>
                            <div class="one-1" style="background-image: url(images/car-1.jpg);">
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6 animate-box">
                        <div class="car">
                            <div class="one-4">
                                <h2>Economy</h2>
                                <span class="price">$100<small> / day</small></span>
                                <span class="price">$200<small> / week</small></span>
                                <span class="price">$250<small> / mos.</small></span>
                                <span class="price">$350<small> Total (Tax incl.)</small></span>
                            </div>
                            <div class="one-1" style="background-image: url(images/car-2.jpg);">
                            </div>
                        </div>
                    </div>


                    <div class="col-md-6 animate-box">
                        <div class="car">
                            <div class="one-4">
                                <h2>Luxury</h2>
                                <span class="price">$100<small> / day</small></span>
                                <span class="price">$200<small> / week</small></span>
                                <span class="price">$250<small> / mos.</small></span>
                                <span class="price">$350<small> Total (Tax incl.)</small></span>
                            </div>
                            <div class="one-1" style="background-image: url(images/car-3.jpg);">
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>

    </div>
</div>


<script src="js/jquery.min.js"></script>
<!-- jQuery Easing -->
<script src="js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/sticky.js"></script>

<!-- Stellar -->
<script src="js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="js/hoverIntent.js"></script>
<script src="js/superfish.js"></script>
<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/magnific-popup-options.js"></script>
<!-- Date Picker -->
<script src="js/bootstrap-datepicker.min.js"></script>
<!-- CS Select -->
<script src="js/classie.js"></script>
<script src="js/selectFx.js"></script>

<!-- Main JS -->
<script src="js/main.js"></script>
<script src="../js/select.js"></script>

</body>
</html>
