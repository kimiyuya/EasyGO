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

    <script src="/webfile/js/jquery-1.11.3.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script type="text/javascript" src="js/javascript.js"></script>

    <!-- Modernizr JS -->
    <script src="/webfile/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="/webfile/js/respond.min.js"></script>
    <![endif]-->

    <script type="text/javascript">

        function addCookie() {
            document.cookie = "pickLocation = " + document.getElementById("from-place").value;
            document.cookie = "pickDate = " + document.getElementById("date-start").value;
            document.cookie = "returnDate = " + document.getElementById("date-end").value;
            document.cookie = "timeStart = " + document.getElementById("time_start").value;
            document.cookie = "timeEnd = " + document.getElementById("time_end").value;

            //document.location.href="/to_c";  //跳转到后台

            // var tmp_cookie = document.cookie;
            // alert(tmp_cookie);
        }


    </script>


    <script>
        //获得用户输入内容相关联信息的函数
        var xmlHttp;
        function getMoreContents(){
            //获取用户输入
            var content = document.getElementById("from-place");
            if(content.value == ""){
                clearContent(); //清除
                return;
            }
            //然后要给服务器发送用户输入内容，采用ajax异步发送请求数据
            //核心【xmlHttp】对象
            xmlHttp = newAjax();
            //与服务器交互
            var url = "search?keyword="+escape(content.value);
            //三参
            //true表示javascript脚本会在send()方法执行后继续执行，而不会等待来自服务器的相应
            xmlHttp.open("GET",url,true);
            //xmlHttp绑定回调方法，这个回调方法会在xmlHttp状态被改变的时候被调用
            //xmlHttp的状态0-4，4表示完成(complete)。
            //状态改变之后(即数据传输完成)，调用回调方法
            xmlHttp.onreadystatechange = callback;
            xmlHttp.send(null);

        }

        //获取 xmlHttp 对象,兼容多种浏览器
        function createXMLHttp(){
            var xmlHttp;
            //大多数浏览器使用
            if(window.XMLHttpRequest){
                xmlHttp = new XMLHttpRequest();
            }
            //考虑浏览器兼容性
            if(window.ActiveXObject){
                //ie5,ie6
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                if(!xmlHttp){
                    //针对ie7以前
                    xmlHttp = new ActiveXObject("MSXML2.XMLHTTP.3.0");
                }
            }
            return xmlHttp;
        }
        //通用获取xmlhttp方法
        function newAjax() {
            try { return new XMLHttpRequest();                    } catch(e){}
            try { return new ActiveXObject('Msxml2.XMLHTTP.6.0'); } catch(e){}
            try { return new ActiveXObject('Msxml2.XMLHTTP.3.0'); } catch(e){}
            try { return new ActiveXObject('Msxml2.XMLHTTP');     } catch(e){}
            try { return new ActiveXObject('Microsoft.XMLHTTP');  } catch(e){}
            return false;
        }

        //回调函数
        function callback(){
            //4表示完成
            if(xmlHttp.readyState==4){
                //200服务器响应成功
                //404代表资源未找到，500代表服务器内部错误
                if(xmlHttp.status==200){
                    //交互成功，获得响应数据
                    var result = xmlHttp.responseText;
                    //解析获得数据 eval解析json
                    var json=eval("("+result+")");
                    //获得数据之后，动态显示这些数据了，把这些数据展示到输入框下
                    setContent(json);
                }
            }
        }
        //设置关联数据的展示，参数为服务器传过来的数据
        function setContent(contents){
            //清除tr
            clearContent();
            //设置位置
            setLocation();
            //获取关联数据的长度，确定生成<tr>
            var size = contents.length;
            //设置内容
            for(var i=0;i<size;i++){
                var nextNode = contents[i];//json数据第i个元素
                var tr = document.createElement("tr");
                var td = document.createElement("td");
                td.setAttribute("border",0);
                td.setAttribute("bgcolor","#fffafa");
                td.setAttribute("size","50");
                td.onmouseover=function(){
                    this.className='mouseOver';
                };
                td.onmouseout=function(){
                    this.className='mouseOut';
                };
                //将关联内容显示在输入框中。而onmousedown执行顺序在input的onblur之前
                //注意
                //此处必须使用onmousedown 不能使用onclick
                //onclick = onmousedown + onmouseup
                //onclick点击之后input就会失去焦点，执行清除函数，清空关联内容，导致无法
                td.onmousedown=function(){
                    //鼠标点击关联数据，在输入框中显示
//				alert("onmousedown");
                    document.getElementById("from-place").value = this.innerHTML;
                };

                var text = document.createTextNode(nextNode);
                td.appendChild(text);
                tr.appendChild(td);
                document.getElementById("content_table_body").appendChild(tr);
            }
        }
        function clearContent(){
            var contentTableBody = document.getElementById("content_table_body");
            //获取tr长度
            var size = contentTableBody.childNodes.length;
            //从后向前清除tr
            for(var i=size-1; i>=0; i--){
                contentTableBody.removeChild(contentTableBody.childNodes[i]);
            }
            document.getElementById("popDiv").style.border = "";
        }

        //失去焦点，清除关联数据
        function keywordBlur(){
            clearContent();
        }

        //获得焦点，获取关联数据
        function keywordFocus(){
            getMoreContents();
        }

        //设置关联内容的位置
        function setLocation(){
            //关联位置显示位置与输入框一直
            var content = document.getElementById("from-place");
            var width = content.offsetWidth-2;  //input width
            var left = content["offsetLeft"]; //距左边框的距离
            var top = content["offsetTop"]+content.height; //到顶部的距离
            //获得显示数据的div
            var popDiv = document.getElementById("popDiv");
            popDiv.style.border = "black 1px solid";
            popDiv.style.left = left + "px";
            popDiv.style.top = top + "px";
            popDiv.style.width = width + "px";
            document.getElementById("content_table").width = width + "px";

        }
    </script>
</head>


<body>
<div id="fh5co-wrapper">
    <div id="fh5co-page">

        <jsp:include page="header.jsp"></jsp:include>

        <!-- end:header-top -->

        <div class="fh5co-hero">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover" data-stellar-background-ratio="0.5"
                 style="background-image: url(/webfile/images/background.jpg);">
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

                                                <form action="/to_car_location">
                                                    <div class="col-sm-12 mt">
                                                        <section>
                                                            <label for="class">PICK-UP LOCATION</label>
                                                            <input type="text" class="form-control" id="from-place" name="pickLocation"
                                                                   placeholder="ZIP, City or Airport" onkeyup="getMoreContents()"
                                                                   onblur="keywordBlur()" onfocus="keywordFocus()"/>

                                                            <div id="popDiv">
                                                                <table id="content_table" bgcolor="#fffafa" border="0" cellspacing="0"
                                                                       cellpadding="0" >
                                                                    <tbody id="content_table_body">
                                                                    <!-- 动态查询出来的数据显示的地方 -->
                                                                    </tbody>
                                                                </table>
                                                            </div>
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


                                                    <%--<div class="col-xxs-12 col-xs-6 mt">--%>
                                                    <%--<section>--%>
                                                    <%--<label for="class">RENTER AGE</label>--%>
                                                    <%--<select class="cs-select cs-skin-border">--%>
                                                    <%--<option value="18">18</option>--%>
                                                    <%--<option value="19">19</option>--%>
                                                    <%--<option value="20">20</option>--%>
                                                    <%--<option value="21">21</option>--%>
                                                    <%--<option value="22">22</option>--%>
                                                    <%--<option value="23">23</option>--%>
                                                    <%--<option value="24">24</option>--%>
                                                    <%--<option value="25">25+</option>--%>
                                                    <%--</select>--%>
                                                    <%--</section>--%>
                                                    <%--</div>--%>
                                                    <div class="col-xs-12">
                                                        <input type="submit" class="btn btn-primary btn-block" onclick="addCookie()"
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
