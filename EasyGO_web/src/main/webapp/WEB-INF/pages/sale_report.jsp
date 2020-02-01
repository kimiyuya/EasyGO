<%--
  Created by IntelliJ IDEA.
  User: kimiyuya
  Date: 2018/10/29
  Time: 上午11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--<jsp:include page="top.jsp"/>--%>
<head>
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">

    <title> EasyGO--Welcome to the EasyGO management system! </title>

    <link rel="stylesheet" type="text/css" href="/assets/skin/default_skin/css/theme.css">
    <link rel="stylesheet" type="text/css" href="/assets/admin-tools/admin-forms/css/admin-forms.css">
    <link rel="shortcut icon" href="/assets/img/favicon.ico">

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script type='text/javascript'>

        // Load the Visualization API and the corechart package.
        google.charts.load('current', {'packages': ['corechart']});

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            var data = ${rentalAmountsJson};
            var locations = [];
            for(var j in data){
                locations[j] = [];
                var daily = [];
                daily[0]=data[j][2];
                daily[1]=data[j][0];
                locations[j].push(daily);
                // for(var k in data[j]){
                //     locations[j].push(data[j][k]);
                // }
                // alert(locations[0][0]);
            }


            // Create the data table.
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Car Name');
            data.addColumn('number', 'Rental Amount');
            data.addRows([
                ['BMW740li',1],
                ['BMW M6',2],
                ['AE86',1],
                ['Toyota RAV4',1],
                ['BMW M6',2],
                ['Tesla Model7',1]
            ]);
            // Set chart options
            var options = {
                'title': 'Sales Report',
                'width': 800,
                'height': 500
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>
</head>

<body class="admin-validation-page" data-spy="scroll" data-target="#nav-spy" data-offset="200">
<div id="main">
    <header class="navbar navbar-fixed-top navbar-shadow">
        <div class="navbar-branding">
            <a class="navbar-brand" href="dashboard.html">
                <b>EasyGO</b>
            </a>
            <span id="toggle_sidemenu_l" class="ad ad-lines"></span>
        </div>
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown menu-merge">
                <a href="#" class="dropdown-toggle fw600 p15" data-toggle="dropdown">
                    <img src="/assets/img/avatars/1.jpg" alt="avatar" class="mw30 br64">
                    <span class="hidden-xs pl15"> ${sessionScope.employee.name} </span>
                    <span class="caret caret-tp hidden-xs"></span>
                </a>
                <ul class="dropdown-menu list-group dropdown-persist w250" role="menu">
                    <li class="list-group-item">
                        <a href="/self" class="animated animated-short fadeInUp">
                            <span class="fa fa-user"></span> Personal Information
                            <span class="label label-warning"></span>
                        </a>
                    </li>
                    <li class="list-group-item">
                        <a href="/to_change_password" class="animated animated-short fadeInUp">
                            <span class="fa fa-gear"></span> Set Password </a>
                    </li>
                    <li class="dropdown-footer">
                        <a href="/quit" class="">
                            <span class="fa fa-power-off pr5"></span> Exit </a>
                    </li>
                </ul>
            </li>
        </ul>
    </header>
    <aside id="sidebar_left" class="nano nano-light affix">
        <div class="sidebar-left-content nano-content">
            <header class="sidebar-header">
                <div class="sidebar-widget author-widget">
                    <div class="media">
                        <a class="media-left" href="#">
                            <img src="assets/img/avatars/3.jpg" class="img-responsive">
                        </a>
                        <div class="media-body">
                            <div class="media-author">${sessionScope.employee.name}---${sessionScope.employee.post}</div>
                            <div class="media-links">
                                <a href="/quit">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="sidebar-widget search-widget hidden">
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="fa fa-search"></i>
                        </span>
                        <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                    </div>
                </div>
            </header>
            <ul class="nav sidebar-menu">
                <li class="sidebar-label pt20">Platform Management</li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">Users Management</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/users/list">
                                <span class="glyphicon glyphicon-calendar"></span> All Users </a>
                        </li>
                        <li class="active">
                            <a href="/users/to_add">
                                <span class="glyphicon glyphicon-check"></span> Add Users </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">Orders Management</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/orders/list">
                                <span class="glyphicon glyphicon-calendar"></span> All Orders </a>
                        </li>
                        <li class="active">
                            <a href="/orders/to_add">
                                <span class="glyphicon glyphicon-check"></span> Add Orders </a>
                        </li>
                        <li class="active">
                            <a href="/orders/to_sale_report">
                                <span class="glyphicon glyphicon-check"></span> Sales Report </a>
                        </li>
                    </ul>
                </li>
                <li class="sidebar-label pt15">Business management</li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="glyphicon glyphicon-check"></span>
                        <span class="sidebar-title">Cars Management</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/carInfo/list">
                                <span class="glyphicon glyphicon-calendar"></span> All Cars </a>
                        </li>
                        <li class="active">
                            <a href="/carInfo/to_add">
                                <span class="glyphicon glyphicon-check"></span> Add Cars </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="accordion-toggle" href="#">
                        <span class="fa fa-columns"></span>
                        <span class="sidebar-title">Agency Management</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="nav sub-nav">
                        <li>
                            <a href="/agencyInfo/list">
                                <span class="glyphicon glyphicon-calendar"></span> All Agency </a>
                        </li>
                        <li class="active">
                            <a href="/agencyInfo/to_add">
                                <span class="glyphicon glyphicon-check"></span> Add Agency </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <div class="sidebar-toggle-mini">
                <a href="#">
                    <span class="fa fa-sign-out"></span>
                </a>
            </div>
        </div>
    </aside>
    <section id="content_wrapper">

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2>Rental Report</h2>
            <p class="lead"></p>
        </div>


        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <h3>Table of Car Rental</h3>
                    </div>
                </div>

                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <td class="hidden-xs">
                                <%--<label class="option block mn">--%>
                                <%--<input type="checkbox" name="mobileos" value="FR">--%>
                                <%--<span class="checkbox mn"></span>--%>
                                <%--</label>--%>
                            </td>
                            <td >Brand</td>
                            <td >Car name</td>
                            <td>Price</td>
                            <td >rental amount</td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${rentalAmounts}" var="orders">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <%--<label class="option block mn">--%>
                                        <%--<input type="checkbox" name="mobileos" value="FR">--%>
                                        <%--<span class="checkbox mn"></span>--%>
                                    <%--</label>--%>
                                </td>
                                <td>${orders.brand}</td>
                                <td>${orders.name}</td>
                                <td>${orders.price}</td>
                                <td>${orders.amount}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <h3>Bar Chart of Car Rental</h3>
                    </div>

                    <div id='chart_div'></div>
                </div>

            </div>
        </div>


        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel  heading-border">
                <div class="panel-menu">
                    <div class="row">
                        <h3>Table of Daily Rental Transactions</h3>
                    </div>
                </div>

                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <td class="hidden-xs">
                                <%--<label class="option block mn">--%>
                                <%--<input type="checkbox" name="mobileos" value="FR">--%>
                                <%--<span class="checkbox mn"></span>--%>
                                <%--</label>--%>
                            </td>
                            <td >Date</td>
                            <td >rental Amount</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${transaction}" var="orders">
                            <tr class="message-unread">
                                <td class="hidden-xs">
                                    <%--<label class="option block mn">--%>
                                        <%--<input type="checkbox" name="mobileos" value="FR">--%>
                                        <%--<span class="checkbox mn"></span>--%>
                                    <%--</label>--%>
                                </td>
                                <td>${orders.date}</td>
                                <td>${orders.amount}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>


    </div>
</section>

<jsp:include page="bottom.jsp"/>
