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
            <h2> Add Order</h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form action="/orders/add" method="post" id="admin-form" name="addForm" >
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> basic information </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="renterName" class="field prepend-icon">
                                    <%--<input path="carId" cssClass="gui-input" placeholder="id..." />--%>
                                    <input type="text" name="renterName" id="renterName" cssClass="gui-input" placeholder="renterName..." />
                                    <label for="renterName" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="renterPhone" class="field prepend-icon">
                                    <%--<form:input path="carBrand" class="gui-input" placeholder="Brand..."/>--%>
                                    <input type="text" name="renterPhone" id="renterPhone" class="gui-input" placeholder="renterPhone..."/>
                                    <label for="renterPhone" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="userId" class="field prepend-icon">
                                    <input type="text" name="userId" id="userId" cssClass="gui-input" placeholder="userId..." />
                                    <label for="userId" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="agencyId" class="field prepend-icon">
                                    <input type="number" name="agencyId" id="agencyId" class="gui-input" placeholder="agencyId..."/>
                                    <label for="agencyId" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="carId" class="field prepend-icon">
                                    <input type="text" name="carId" id="carId" cssClass="gui-input" placeholder="carId..." />
                                    <label for="carId" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="pickupTime" class="field prepend-icon">
                                    <input type="text" name="pickupTime" id="pickupTime" class="gui-input" placeholder="pickupTime..."/>
                                    <label for="pickupTime" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="returnTime" class="field prepend-icon">
                                    <input type="text" name="returnTime" id="returnTime" class="gui-input" placeholder="returnTime..."/>
                                    <label for="returnTime" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>

                        <div class="panel-footer text-right">
                            <button type="submit" class="button"> save </button>
                            <button type="button" class="button" onclick="javascript:window.history.go(-1);"> back </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="bottom.jsp"/>