<%--
  Created by IntelliJ IDEA.
  User: kimiyuya
  Date: 2018/10/29
  Time: 下午2:07
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> Edit Agency Information</h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/orders/update" modelAttribute="orders"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> basic info </span>
                        </div>
                        <form:input path="orderId" type="hidden" />
                        <div class="section">
                            <label for="pickupTime" class="field prepend-icon">
                                <form:input path="pickupTime" cssClass="gui-input" placeholder="pickupTime..." />
                                <label for="pickupTime" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="returnTime" class="field prepend-icon">
                                <form:input path="returnTime" cssClass="gui-input" placeholder="returnTime..." />
                                <label for="returnTime" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="returnTime" class="field prepend-icon">
                                <form:input path="orderStatus" cssClass="gui-input" placeholder="orderStatus..." />
                                <label for="returnTime" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> save </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> back </button>
                        </div>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>