<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/29/18
  Time: 8:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Auto Rental</title>
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

    <script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>

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

        <!-- end:header-top -->

        <div class="fh5co-hero">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover" data-stellar-background-ratio="0.5"
                 style="background-image: url(images/background.jpg);">
                <div class="desc">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-5 col-md-5">
                                <div class="tabulation animate-box">

                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li role="presentation" class="active">
                                            <a aria-controls="flights" role="tab" data-toggle="tab">START A RESERVATION</a>
                                        </li>
                                    </ul>

                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="flights">
                                            <div class="row">

                                                <form>
                                                    <div class="col-sm-12 mt">
                                                        <section>
                                                            <label for="class">PICK-UP LOCATION</label>
                                                            <input type="text" class="form-control" id="from-place"
                                                                   placeholder="ZIP, City or Airport"/>
                                                        </section>
                                                    </div>

                                                    <!-- Pick up date -->
                                                    <div class="col-xxs-12 col-xs-6 mt alternate">
                                                        <div class="input-field">
                                                            <label for="date-start">PICK-UP</label>
                                                            <input type="text" class="form-control" id="date-start"
                                                                   placeholder="mm/dd/yyyy"/>
                                                        </div>
                                                    </div>

                                                    <!-- Return date -->
                                                    <div class="col-xxs-12 col-xs-6 mt alternate">
                                                        <div class="input-field">
                                                            <label for="date-end">RETURN</label>
                                                            <input type="text" class="form-control" id="date-end"
                                                                   placeholder="mm/dd/yyyy"/>
                                                        </div>
                                                    </div>

                                                    <!--Pick up time-->
                                                    <div class="col-xxs-12 col-xs-6 mt alternate">
                                                        <i class="icon icon-nav-carrot-down"></i>
                                                        <section>
                                                            <select id="time_start" class="cs-select cs-skin-border">
                                                                <option value="9:00 AM">9:00 AM</option>
                                                                <option value="10:00 AM">10:00 AM</option>
                                                                <option value="11:00 AM">11:00 AM</option>
                                                                <option selected="" value="12:00 PM">12:00 PM</option>
                                                                <option value="1:00 PM">1:00 PM</option>
                                                                <option value="2:00 PM">2:00 PM</option>
                                                                <option value="3:00 PM">3:00 PM</option>
                                                                <option value="4:00 PM">4:00 PM</option>
                                                                <option value="5:00 PM">5:00 PM</option>
                                                                <option value="6:00 PM">6:00 PM</option>
                                                            </select>
                                                        </section>
                                                    </div>

                                                    <!-- Reture time -->
                                                    <div class="col-xxs-12 col-xs-6 mt alternate">
                                                        <section>
                                                            <select id="time_end" class="cs-select cs-skin-border">
                                                                <option value="9:00 AM">9:00 AM</option>
                                                                <option value="10:00 AM">10:00 AM</option>
                                                                <option value="11:00 AM">11:00 AM</option>
                                                                <option selected="" value="12:00 PM">12:00 PM</option>
                                                                <option value="1:00 PM">1:00 PM</option>
                                                                <option value="2:00 PM">2:00 PM</option>
                                                                <option value="3:00 PM">3:00 PM</option>
                                                                <option value="4:00 PM">4:00 PM</option>
                                                                <option value="5:00 PM">5:00 PM</option>
                                                                <option value="6:00 PM">6:00 PM</option>
                                                            </select>
                                                        </section>
                                                    </div>


                                                    <div class="col-xxs-12 col-xs-6 mt">
                                                        <section>
                                                            <label for="class">RENTER AGE</label>
                                                            <select class="cs-select cs-skin-border">
                                                                <option value="18">18</option>
                                                                <option value="19">19</option>
                                                                <option value="20">20</option>
                                                                <option value="21">21</option>
                                                                <option value="22">22</option>
                                                                <option value="23">23</option>
                                                                <option value="24">24</option>
                                                                <option value="25">25+</option>
                                                            </select>
                                                        </section>
                                                    </div>
                                                    <div class="col-xs-12">
                                                        <input type="submit" class="btn btn-primary btn-block"
                                                               value="CONTINUE">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="desc2 animate-box">
                                <div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
                                    <h2>Car Rental Reservations</h2>
                                    <h3>ENJOY LOW RATES</h3>
                                    <!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <%--<div class="copyrights">Collect from <a href="http://www.cssmoban.com/"  title="网站模板">网站模板</a></div>--%>

        <jsp:include page="footer.jsp"></jsp:include>
    </div>
    <!-- END fh5co-page -->

</div>
<!-- END fh5co-wrapper -->

<!-- jQuery -->


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

</body>
</html>
