<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/30/18
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>confirmation</title>
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
        <div id="fh5co-car" class="fh5co-section-gray">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                        <h3>Thank you, your car has been reserved</h3>
                        <h4>Your Confirmation Number:</h4>
                        <h4>${confirmNumber}</h4>
                    </div>
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
<script src="js/sticky.js"></script>

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