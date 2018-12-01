<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/29/18
  Time: 11:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>select_location</title>
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

    <%--Google Map API--%>
    <style>
        /* Set the size of the div element that contains the map */
        #map {
            height: 600px; /* The height is 400 pixels */
            width: 100%; /* The width is the width of the web page */
        }
    </style>


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
                        <h3>CHOOSE A LOCATION</h3>
                    </div>
                </div>
                <div class="row row-bottom-padded-md">
                    <%--<div id="allmap"></div>--%>
                    <div id="map"></div>

                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </div>
</div>


<%--Google Map API--%>
<%--<script>--%>
<%--// Initialize and add the map--%>
<%--function initMap() {--%>
<%--// The location of Uluru--%>
<%--var uluru = {lat: 41.87751, lng: -87.631779};--%>
<%--// The map, centered at Uluru--%>
<%--var map = new google.maps.Map(--%>
<%--document.getElementById('map'), {zoom: 13, center: uluru});--%>
<%--// The marker, positioned at Uluru--%>
<%--var marker = new google.maps.Marker({position: uluru, map: map});--%>
<%--}--%>
<%--</script>--%>


<%--点击定位点确定该点的经纬度--%>
<%--<script>--%>
<%--function initMap() {--%>
<%--var myLatLng = {lat: -25.363, lng: 131.044};--%>

<%--var map = new google.maps.Map(document.getElementById('map'), {--%>
<%--zoom: 4,--%>
<%--center: myLatLng--%>
<%--});--%>

<%--var marker = new google.maps.Marker({--%>
<%--position: myLatLng,--%>
<%--map: map,--%>
<%--label: '12',   //在定位点上添加标签，可以用于显示该地点的车辆数量--%>
<%--title: 'Hello World!'--%>
<%--});--%>

<%--marker.addListener('click', function () {--%>
<%--//鼠标点击定位点后获得该点的经纬度--%>
<%--alert(myLatLng.lat);--%>
<%--alert(myLatLng.lng);--%>
<%--// alert(lng.valueOf());--%>

<%--map.setZoom(13);--%>
<%--map.setCenter(marker.getPosition());--%>
<%--});--%>

<%--}--%>
<%--</script>--%>


<%--添加多个定位点--%>
<%--<script>--%>
<%--var map;--%>

<%--function initMap() {--%>
<%--map = new google.maps.Map(document.getElementById('map'), {--%>
<%--zoom: 11,--%>
<%--center: new google.maps.LatLng(41.87751, -87.631779),--%>
<%--mapTypeId: 'roadmap'--%>
<%--});--%>

<%--var iconBase = 'https://maps.google.com/mapfiles/kml/shapes/';--%>
<%--var icons = {--%>
<%--parking: {--%>
<%--icon: iconBase + 'parking_lot_maps.png'--%>
<%--}--%>
<%--};--%>

<%--var features = [--%>
<%--{--%>
<%--position: new google.maps.LatLng(41.80751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}, {--%>
<%--position: new google.maps.LatLng(41.82751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}, {--%>
<%--position: new google.maps.LatLng(41.84751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}, {--%>
<%--position: new google.maps.LatLng(41.86751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}, {--%>
<%--position: new google.maps.LatLng(41.88751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}, {--%>
<%--position: new google.maps.LatLng(41.90751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}, {--%>
<%--position: new google.maps.LatLng(41.92751, -87.631779),--%>
<%--type: 'parking'--%>
<%--}--%>
<%--];--%>

<%--var marker;--%>


<%--// Create markers.--%>
<%--features.forEach(function (feature) {--%>
<%--marker = new google.maps.Marker({--%>
<%--position: feature.position,--%>
<%--icon: icons[feature.type].icon,--%>
<%--map: map--%>
<%--});--%>

<%--// alert(feature.position.lng);--%>

<%--setListener(marker, feature.position.lng);--%>
<%--});--%>

<%--}--%>

<%--function setListener(marker, position) {--%>
<%--//鼠标点击定位点后获得该点的经纬度--%>

<%--marker.addListener('click', function () {--%>
<%--alert(position);--%>
<%--// alert(position.lng);--%>
<%--})--%>
<%--}--%>
<%--</script>--%>

<script>
    function initMap() {

        //TODO 测试一下能不能接收到后台传过来的数据
        <%--var locations = [<c:forEach items="${data_json}" var="latlng">--%>
        <%--[${latlng}[0], ${latlng}[1], ${latlng.lng}[2]--%>
        <%--</c:forEach>--%>
        <%--];--%>

        <%--var locations = [];--%>
        <%--var json = ${data_json};--%>

        <%--<c:forEach items="${data_json}" var="latlng">--%>

        <%--locations=[${latlng}[0], ${latlng}[1], ${latlng.lng}[2]];--%>
        <%--</c:forEach>--%>

        <%--alert(locations.length);--%>

        <%--for(var i=0;i<json.length;i++){--%>

        <%--}--%>

        <%--var locations =[];--%>
        <%--var json = ${jsonArray};--%>
        <%--var parsed = JSON.parse(json);--%>
        <%--for(var a in parsed){--%>
            <%--var location=[];--%>
            <%--for(var j in parsed[a]){--%>
                <%--location.push(parsed[a][j]);--%>
            <%--}--%>

            <%--locations.push(location)--%>
        <%--}--%>

        <%--var json = ${data_json};--%>
        <%--var parsed = JSON.parse(json);--%>
        <%--var locations=[];--%>
        <%--for(var x in parsed){--%>
            <%--locations.push(parsed[x]);--%>
        <%--}--%>

        var data = ${jsonArray};
        var locations = [];
        for(var j in data){
            locations[j] = [];
            for(var k in data[j]){
                locations[j].push(data[j][k]);
            }
            // alert(locations[0][0]);
        }

        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 11,
            center: new google.maps.LatLng(41.87751, -87.631779),
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var marker, i;

        for (i = 0; i < locations.length; i++) {

            var myLatLng = {lat: locations[i][2], lng: locations[i][1], id:locations[i][0]};
            // alert(myLatLng.lat);
            // alert(myLatLng.id);
            marker = new google.maps.Marker({
                position: myLatLng,
                label: locations[i][0].toString(),   //在定位点上添加标签，可以用于显示该点的车辆数量
                map: map
            });

            marker.addListener('click', function () {
                // alert(myLatLng.lat);
                // alert(myLatLng.lng);

                document.cookie = "agencyId = " + myLatLng.id;
                // alert(myLatLng.id);

                window.location.href = '/to_choose_car?id='+myLatLng.id;

            });
        }
    }
</script>


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

<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBWm1k4PkG-gF_tX207MGVbAuNUyl9OrvQ&callback=initMap">
</script>

</body>
</html>
