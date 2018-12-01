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
    <title>Write Review</title>
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
                        <h3>Write Review</h3>
                    </div>
                </div>

                <div class="row row-bottom-padded-md">

                    <div class="col-md-6 animate-box">
                        <div class="car">
                            <div class="one-4">
                                <h2>Price</h2>
                                <h4><font color="white">${carInfo.carName}</font></h4>
                                <span class="price">$${carInfo.carPrice}
                                    <small> / day</small></span>
                                <br/>

                                <h2>TAXES</h2>
                                <span class="tax">$${carInfo.carPrice*0.1}</span>
                                <br/>

                            </div>
                            <div class="one-1" style="background-image: url(/webfile/images/car-1.jpg);">
                            </div>
                        </div>
                    </div>

                </div>
                <br><br><br>
                <div class="tabulation animate-box">
                    <input type="hidden" value=${carInfo.carId} id="carId" name="carId">

                    <!-- Nav tabs -->
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Create Review</a>
                        </li>
                    </ul>

                    <br><br>

                    <form action="/writeReview" method="post">
                        <input type="hidden" value=${carInfo.carId} id="carId" name="carId">
                        <input type="hidden" value=${carInfo.carName} id="carName" name="carName">
                        <input type="hidden" value=${carInfo.carType} id="carType" name="carType">
                        <input type="hidden" value=${carInfo.carPrice} id="carPrice" name="carPrice">
                        <input type="hidden" value=${carInfo.carImage} id="carImage" name="carImage">


                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="text" class="form-control" id="userName" name="userName" placeholder="Name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <select id="rating" name="rating" class="cs-select cs-skin-border">
                                            <option selected="" value="rating">--Rating--</option>
                                            <option value="5">5</option>
                                            <option value="4">4</option>
                                            <option value="3">3</option>
                                            <option value="2">2</option>
                                            <option value="1">1</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <textarea name="reviewtext" class="form-control" id="reviewtext" cols="30" rows="7"
                                                  placeholder="Write your review here."></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input type="submit" value="Submit" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
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