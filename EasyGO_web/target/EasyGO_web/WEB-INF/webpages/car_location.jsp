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

    <%--百度地图API--%>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
        body, html{width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
        #allmap{height:600px;width:100%;}
        #r-result{width:100%; font-size:14px;}
    </style>
    <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=B9oKpgft5aBXhZ9jkZR15hLoAfmELtTE"></script>



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
                        <h3>CHOOSE A LOCATION</h3>
                    </div>
                </div>
                <div class="row row-bottom-padded-md">
                    <div id="allmap"></div>

                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>

    </div>
</div>

<%--根据经纬度定位--%>
<%--<script type="text/javascript">--%>
    <%--// 百度地图API功能--%>
    <%--var map = new BMap.Map("allmap");--%>
    <%--map.centerAndZoom(new BMap.Point(116.331398,39.897445),11);--%>
    <%--map.enableScrollWheelZoom(true);--%>

    <%--// 用经纬度设置地图中心点--%>
    <%--function theLocation(){--%>
        <%--if(document.getElementById("longitude").value != "" && document.getElementById("latitude").value != ""){--%>
            <%--map.clearOverlays();--%>
            <%--var new_point = new BMap.Point(document.getElementById("longitude").value,document.getElementById("latitude").value);--%>
            <%--var marker = new BMap.Marker(new_point);  // 创建标注--%>
            <%--map.addOverlay(marker);              // 将标注添加到地图中--%>
            <%--map.panTo(new_point);--%>
        <%--}--%>
    <%--}--%>
<%--</script>--%>

<%--展示地图--%>
<script type="text/javascript">
    // 百度地图API功能
    var map = new BMap.Map("allmap");    // 创建Map实例
    map.centerAndZoom(new BMap.Point(87.6298, 41.8781), 11);  // 初始化地图,设置中心点坐标和地图级别
    //添加地图类型控件
    map.addControl(new BMap.MapTypeControl({
        mapTypes:[
            BMAP_NORMAL_MAP,
            BMAP_HYBRID_MAP
        ]}));
    map.setCurrentCity("北京");          // 设置地图显示的城市 此项是必须设置的
    map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放
</script>

<%--添加定位点--%>
<%--<script type="text/javascript">--%>
    <%--// 百度地图API功能--%>
    <%--var map = new BMap.Map("allmap");--%>
    <%--var point = new BMap.Point(116.404, 39.915);--%>
    <%--map.centerAndZoom(point, 15);--%>

    <%--var marker = new BMap.Marker(new BMap.Point(116.404, 39.915)); // 创建点--%>
    <%--map.addOverlay(marker);            //增加点--%>

<%--</script>--%>

<%--添加多个定位点--%>
<%--<script type="text/javascript">--%>
    <%--// 百度地图API功能--%>
    <%--var map = new BMap.Map("allmap");--%>
    <%--var point = new BMap.Point(87.6298, 41.8781);--%>
    <%--map.centerAndZoom(point, 15);--%>
    <%--// 编写自定义函数,创建标注--%>
    <%--function addMarker(point){--%>
        <%--var marker = new BMap.Marker(point);--%>
        <%--map.addOverlay(marker);--%>
    <%--}--%>
    <%--// 随机向地图添加25个标注--%>
    <%--var bounds = map.getBounds();--%>
    <%--var sw = bounds.getSouthWest();--%>
    <%--var ne = bounds.getNorthEast();--%>
    <%--var lngSpan = Math.abs(sw.lng - ne.lng);--%>
    <%--var latSpan = Math.abs(ne.lat - sw.lat);--%>
    <%--for (var i = 0; i < 25; i ++) {--%>
        <%--var point = new BMap.Point(sw.lng + lngSpan * (Math.random() * 0.7), ne.lat - latSpan * (Math.random() * 0.7));--%>
        <%--addMarker(point);--%>
    <%--}--%>
<%--</script>--%>

<%--添加工具条/比例尺--%>
<%--<script type="text/javascript">--%>
    <%--// 百度地图API功能--%>
    <%--var map = new BMap.Map("allmap");--%>
    <%--map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);--%>

    <%--var top_left_control = new BMap.ScaleControl({anchor: BMAP_ANCHOR_TOP_LEFT});// 左上角，添加比例尺--%>
    <%--var top_left_navigation = new BMap.NavigationControl();  //左上角，添加默认缩放平移控件--%>
    <%--var top_right_navigation = new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL}); //右上角，仅包含平移和缩放按钮--%>
    <%--/*缩放控件type有四种类型:--%>
    <%--BMAP_NAVIGATION_CONTROL_SMALL：仅包含平移和缩放按钮；BMAP_NAVIGATION_CONTROL_PAN:仅包含平移按钮；BMAP_NAVIGATION_CONTROL_ZOOM：仅包含缩放按钮*/--%>

    <%--//添加控件和比例尺--%>
    <%--function add_control(){--%>
        <%--map.addControl(top_left_control);--%>
        <%--map.addControl(top_left_navigation);--%>
        <%--map.addControl(top_right_navigation);--%>
    <%--}--%>
    <%--//移除控件和比例尺--%>
    <%--function delete_control(){--%>
        <%--map.removeControl(top_left_control);--%>
        <%--map.removeControl(top_left_navigation);--%>
        <%--map.removeControl(top_right_navigation);--%>
    <%--}--%>
<%--</script>--%>


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
