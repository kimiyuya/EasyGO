<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>

<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> Account </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <div class="panel-body bg-light">
                    <div class="section-divider mt20 mb40">
                        <span> Basic Information </span>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">User Id</div>
                        <div class="col-md-4">${sessionScope.users.userId}</div>
                        <div class="col-md-2">User name</div>
                        <div class="col-md-4">${sessionScope.users.userName}</div>
                    </div>
                    <div class="section row">
                        <div class="col-md-2">User Type</div>
                        <div class="col-md-4">${sessionScope.users.userType}</div>
                        <div class="col-md-2">User Phone</div>
                        <div class="col-md-4">${sessionScope.users.userPhone}</div>
                    </div>
                    <div class="panel-footer text-right">
                        <button type="button" class="button" onclick="javascript:window.history.go(-1);"> back </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>