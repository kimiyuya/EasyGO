<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> Edit Car Information </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <form:form action="/carInfo/update" modelAttribute="carinfo"  id="admin-form" name="addForm">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> basic information </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="carId" class="field prepend-icon">
                                    <form:input path="carId" cssClass="gui-input" placeholder="id..." readonly="true" />
                                    <label for="carId" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="carBrand" class="field prepend-icon">
                                    <form:input path="carBrand" class="gui-input" placeholder="Brand..."/>
                                    <label for="carBrand" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="carName" class="field prepend-icon">
                                    <form:input path="carName" cssClass="gui-input" placeholder="CarName..." />
                                    <label for="carName" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="carPrice" class="field prepend-icon">
                                    <form:input path="carPrice" class="gui-input" placeholder="price..."/>
                                    <label for="carPrice" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="carDescribe" class="field prepend-icon">
                                    <form:input path="carDescribe" cssClass="gui-input" placeholder="Describe..." />
                                    <label for="carDescribe" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="carImage" class="field prepend-icon">
                                    <form:input path="carImage" class="gui-input" placeholder="Image..."/>
                                    <label for="carImage" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="agencyId" class="field select">
                                    <form:select path="agencyId" items="${agencylist}" itemLabel="agencyId" itemValue="agencyId" cssClass="gui-input" placeholder="Agency..."/>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="carType" class="field select">
                                    <form:select path="carType" items="${typelist}" cssClass="gui-input" placeholder="type..."/>
                                    <i class="arrow double"></i>
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