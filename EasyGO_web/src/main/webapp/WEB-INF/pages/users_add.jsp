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
            <h2> Add Users</h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/users/add" modelAttribute="users"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> basic information </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="userId" class="field prepend-icon">
                                    <form:input path="userId" cssClass="gui-input" placeholder="id..."/>
                                    <label for="userId" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="userName" class="field prepend-icon">
                                    <form:input path="userName" cssClass="gui-input" placeholder="name..." />
                                    <label for="userName" class="field-icon">
                                        <i class="fa fa-wechat"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="userType" class="field select">
                                    <form:select path="userType" items="${typelist}" cssClass="gui-input" placeholder="type..."/>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="userPhone" class="field prepend-icon">
                                    <form:input path="userPhone" cssClass="gui-input" placeholder="phone..." />
                                    <label for="userPhone" class="field-icon">
                                        <i class="fa fa-phone"></i>
                                    </label>
                                </label>
                            </div>
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