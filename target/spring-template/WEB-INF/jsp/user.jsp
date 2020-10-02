<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--这里的utf-8是指服务器发送给客服端时的内容编码 --%>
<%@ page pageEncoding="utf-8" %>
<%--这里的utf-8是指 .jsp文件本身的内容编码 --%>
<html>
<head>
    <title>用户列表</title>
    <link href="./static/bootstrap.min.css" rel="stylesheet"/>
    <script src="./static/bootstrap.min.js" type="text/javascript"></script>
    <script src="./static/jquery-3.5.1.js" type="text/javascript"></script>
</head>
<body>
<%--<a href="getUsers">getUsers</a>--%>
    <div class="container">

        <div class="row clearfix">
            <div class="col-md-12 column">
                <div class="page-header">
                    <h1>
                        <small>用户列表 ———————— 用户显示</small>
                    </h1>
                </div>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-4 column">
                <a href="${pageContext.request.contextPath}/toAddUser"
                   class="btn btn-primary">新增用户</a>
            </div>
            <div class="col-md-8 column">
                <form class="form-inline"
                      action="${pageContext.request.contextPath}/queryUsersByName"
                      method="post" style="float: right">
                    <div class="form-group">
                        <input type="text" class="form-control" name="name" placeholder="在此输入">
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover table-striped">
                    <thead>
                        <tr>
                            <th>用户ID</th>
                            <th>用户名</th>
                            <th>用户年龄</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.name}</td>
                            <td>${user.age}</td>
                            <td>
                                <a href="${pageContext.request.contextPath}/toUpdateUser?id=${user.id}">修改</a>
                                &nbsp||&nbsp
                                <a href="${pageContext.request.contextPath}/deleteUser?id=${user.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
</body>
</html>
