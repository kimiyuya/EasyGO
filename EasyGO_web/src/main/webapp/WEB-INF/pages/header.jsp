<%--
  Created by IntelliJ IDEA.
  User: junruigong
  Date: 10/29/18
  Time: 8:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header id="fh5co-header-section" class="sticky-banner">
    <div class="container">
        <div class="nav-header">
            <a href="home.jsp" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
            <h1 id="fh5co-logo"><a href="index.html"><i class="icon-airplane"></i>Auto Rental</a></h1>
            <!-- START #fh5co-menu-wrap -->
            <nav id="fh5co-menu-wrap" role="navigation">
                <ul class="sf-menu" id="fh5co-primary-menu">
                    <li class="active"><a href="/to_home">Home</a></li>
                    <%--<li><a href="login.jsp">Login</a></li>--%>
                    <%--<li><a href="register.jsp">Sign in</a></li>--%>


                    <c:if test="${empty users}">
                        <li><a href="/to_login">Login</a></li>
                        <li><a href="/to_register">Sign in</a></li>
                    </c:if>

                    <c:if test="${!empty users}">
                        <li><a href="#">Hello, ${users.userName}</a></li>
                        <li><a href="/to_view_order?userId=${users.userId}">Order</a></li>
                        <li><a href="/quit">Log out</a></li>
                    </c:if>

                </ul>
            </nav>
        </div>
    </div>
</header>