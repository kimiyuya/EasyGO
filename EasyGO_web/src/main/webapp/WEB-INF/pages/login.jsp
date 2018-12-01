<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/29/18
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
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
    <script type="text/javascript">

        function addCookie() {

            document.cookie = "userId = " + document.getElementById("id").value;

            //document.location.href="/to_c";  //跳转到后台

            // var tmp_cookie = document.cookie;
            // alert(tmp_cookie);
        }


    </script>
</head>
<body>

<div id="fh5co-wrapper">
    <div id="fh5co-page">

        <jsp:include page="header.jsp"></jsp:include>

        <div class="fh5co-hero">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover" data-stellar-background-ratio="0.5"
                 style="background-image: url(/WEB-INF/pages/images/cover_bg_4.jpg);">
                <div class="desc">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-5 col-md-5">
                                <div class="tabulation animate-box">

                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active">
                                            <a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">Login</a>
                                        </li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active">
                                            <div class="row">
                                                <form method="post" action="login" id="contact">

                                                    <div class="col-sm-12 mt">
                                                        <section>
                                                            <label for="class">UserID</label>
                                                            <input type="text" name="id" id="id" class="form-control" placeholder="please enter userID..."/>
                                                        </section>
                                                    </div>

                                                    <div class="col-sm-12 mt">
                                                        <section>
                                                            <label for="class">Password</label>
                                                            <input type="password" name="password" class="form-control" placeholder="please enter password..." id="password"/>
                                                        </section>
                                                    </div>

                                                    <div class="col-sm-12 mt">
                                                        <section>
                                                            <input type="checkbox" name="type" value="1"/>
                                                            <label for="class"> I'm a manager</label>
                                                            <input type="hidden" name="type"/>
                                                        </section>
                                                    </div>


                                                    <div class="col-xs-12">
                                                        <button type="submit" class="btn btn-primary btn-block" onclick="addCookie()">Login</button>
                                                        <label class="switch ib switch-primary mt10">
                                                            <input type="checkbox" name="remember" id="remember" checked="true">
                                                            <label for="remember" data-on="yes" data-off="no"></label>
                                                            <span>remember me</span>
                                                        </label>

                                                    </div>
                                                </form>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="desc2 animate-box">
                                <div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
                                    <h2>Start your reservations</h2>
                                    <h3>Car Rental</h3>
                                    <!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


        <jsp:include page="footer.jsp"></jsp:include>

    </div>
    <!-- END fh5co-page -->

</div>
<!-- END fh5co-wrapper -->


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
