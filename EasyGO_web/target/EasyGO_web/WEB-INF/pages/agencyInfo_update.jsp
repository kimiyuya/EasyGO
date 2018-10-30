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
                <form:form action="/agencyInfo/update" modelAttribute="agencyinfo"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> basic info </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="agencyId" class="field prepend-icon">
                                    <form:input path="agencyId" cssClass="gui-input" placeholder="id..." readonly="true"/>
                                    <label for="agencyId" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="agencyName" class="field prepend-icon">
                                    <form:input path="agencyName" cssClass="gui-input" placeholder="name..." />
                                    <label for="agencyName" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section">
                            <label for="agencyLocation" class="field prepend-icon">
                                <form:input path="agencyLocation" cssClass="gui-input" placeholder="address..." />
                                <label for="agencyLocation" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="agencyPhone" class="field prepend-icon">
                                <form:input path="agencyPhone" cssClass="gui-input" placeholder="phone..." />
                                <label for="agencyPhone" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="agencyLongitude" class="field prepend-icon">
                                <form:input path="agencyLongitude" cssClass="gui-input" placeholder="longitude..." />
                                <label for="agencyLongitude" class="field-icon">
                                    <i class="fa fa-lock"></i>
                                </label>
                            </label>
                        </div>
                        <div class="section">
                            <label for="agencyLatitude" class="field prepend-icon">
                                <form:input path="agencyLatitude" cssClass="gui-input" placeholder="latitude..." />
                                <label for="agencyLatitude" class="field-icon">
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