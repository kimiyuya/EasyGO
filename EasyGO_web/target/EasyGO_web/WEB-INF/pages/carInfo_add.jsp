<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="top.jsp"/>
<section id="content" class="table-layout animated fadeIn">
    <div class="tray tray-center">
        <div class="content-header">
            <h2> Add Car </h2>
            <p class="lead"></p>
        </div>
        <div class="admin-form theme-primary mw1000 center-block" style="padding-bottom: 175px;">
            <div class="panel heading-border">
                <%--<form:form action="/carInfo/add" modelAttribute="carinfo"  id="admin-form" name="addForm" enctype="multipart/form-data">--%>
                <form action="/carInfo/add" method="post" id="admin-form" name="addForm" enctype="multipart/form-data">
                    <div class="panel-body bg-light">
                        <div class="section-divider mt20 mb40">
                            <span> basic information </span>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="id" class="field prepend-icon">
                                    <%--<input path="carId" cssClass="gui-input" placeholder="id..." />--%>
                                    <input type="text" name="id" id="id" cssClass="gui-input" placeholder="id..." />
                                    <label for="id" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="brand" class="field prepend-icon">
                                    <%--<form:input path="carBrand" class="gui-input" placeholder="Brand..."/>--%>
                                    <input type="text" name="brand" id="brand" class="gui-input" placeholder="Brand..."/>
                                    <label for="brand" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="name" class="field prepend-icon">
                                    <input type="text" name="name" id="name" cssClass="gui-input" placeholder="CarName..." />
                                    <label for="name" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="price" class="field prepend-icon">
                                    <input type="number" name="price" id="price" class="gui-input" placeholder="price..."/>
                                    <label for="price" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="describe" class="field prepend-icon">
                                    <input type="text" name="describe" id="describe" cssClass="gui-input" placeholder="Describe..." />
                                    <label for="describe" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="image" class="field prepend-icon">
                                    <input type="file" name="image" id="image" class="gui-input" placeholder="Image..."/>
                                    <label for="image" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <div class="section row">
                            <div class="col-md-6">
                                <label for="agencyId" class="field select">
                                    <select  items="${agencylist}" name="agencyId" id="agencyId" itemLabel="agencyId" itemValue="agencyId" cssClass="gui-input" placeholder="Agency..."/>
                                        <c:forEach items="${agencylist}" var="aglist">
                                            <option value="${aglist.agencyId}">${aglist.agencyName}</option>
                                        </c:forEach>
                                    <i class="arrow double"></i>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="type" class="field select">
                                    <%--<select name="type" id="type" cssClass="gui-input" placeholder="type..."/>--%>
                                        <%--<c:forEach items="${typelist}" var="tlist">--%>
                                            <%--<option value="${tlist}">${tlist}</option>--%>
                                        <%--</c:forEach>--%>
                                    <%--<i class="arrow double"></i>--%>
                                    <input type="text" name="type" id="type" class="gui-input" placeholder="Image..."/>
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