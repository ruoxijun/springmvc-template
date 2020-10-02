<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--这里的utf-8是指服务器发送给客服端时的内容编码 --%>
<%@ page pageEncoding="utf-8" %>
<%--这里的utf-8是指 .jsp文件本身的内容编码 --%>
<html>
<head>
    <title>修改用户</title>
    <link href="./static/bootstrap.min.css" rel="stylesheet"/>
    <script src="./static/bootstrap.min.js" type="text/javascript"></script>
    <script src="./static/jquery-3.5.1.js" type="text/javascript"></script>
</head>
<body>
<div class="container">

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>修改用户 ———————— 信息</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/updateUser" method="post">
        <div class="form-group">
            <label for="id">用户ID : </label>
            <input type="text" class="form-control" id="id" name="id" value="${user.id}" readonly />
        </div>
        <div class="form-group">
            <label for="name">用户名称 : </label>
            <input type="text" class="form-control" id="name" name="name" value="${user.name}" />
        </div>
        <div class="form-group">
            <label for="age">用户年龄 : </label>
            <input type="text" class="form-control" id="age" name="age" value="${user.age}" />
        </div>
        <div class="form-group">
            <input type="submit" class="form-control" value="修改" />
        </div>
    </form>

</div>
</body>
</html>
