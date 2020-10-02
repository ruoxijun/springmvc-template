<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--这里的utf-8是指服务器发送给客服端时的内容编码 --%>
<%@ page pageEncoding="utf-8" %>
<%--这里的utf-8是指 .jsp文件本身的内容编码 --%>
<html>
<head>
    <title>增加用户</title>
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
                    <small>增加用户 ———————— 新增用户</small>
                </h1>
            </div>
        </div>
    </div>
    <form action="${pageContext.request.contextPath}/addUser" method="post">
        <div class="form-group">
            <label for="id">用户ID : </label>
            <input type="text" class="form-control" id="id" name="id" />
        </div>
        <div class="form-group">
            <label for="name">用户名称 : </label>
            <input type="text" class="form-control" id="name" name="name" />
        </div>
        <div class="form-group">
            <label for="age">用户年龄 : </label>
            <input type="text" class="form-control" id="age" name="age" />
        </div><div class="form-group">
            <input type="submit" class="form-control" value="添加" />
        </div>
    </form>

</div>
</body>
</html>
