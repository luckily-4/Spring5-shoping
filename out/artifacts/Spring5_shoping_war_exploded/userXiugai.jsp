<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/8
  Time: 0:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>用户修改</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
     <style>
              body{
                  background: url("img/5.jpg");
              }
     </style>

</head>
<body >
<div class="container" style="width: 400px;">
    <h3 style="text-align: center;">修改联系人</h3>
    <form action="${pageContext.request.contextPath}/updateadminservlet" method="post">
        <input type="hidden" name="id" value="${user.id}">
        <div class="form-group">
            <label for="name">姓名：</label>
            <input type="text" class="form-control" id="name" value="${user.name}" name="name"  readonly="readonly" placeholder="请输入姓名" />
        </div>

        <div class="form-group">
            <label for="password">密码：</label>
            <input type="text" id="password" class="form-control" value="${user.password}"name="password" placeholder="请输入密码"/>
        </div>

        <div class="form-group">
            <label for="email">Email：</label>
            <input type="text" id="email" class="form-control"value="${user.email}" name="email" placeholder="请输入邮箱地址"/>
        </div>

        <div class="form-group">
            <label>性别：</label>
            <c:if test="${user.sex=='男'}">
                <input type="radio" name="sex" value="男" checked />男
                <input type="radio" name="sex" value="女"  />女
            </c:if>
            <c:if test="${user.sex=='女'}">
                <input type="radio" name="sex" value="男" />男
                <input type="radio" name="sex" value="女" checked />女
            </c:if>
        </div>

        <div class="form-group" style="text-align: center">
            <input class="btn btn-primary" type="submit" value="提交" />
            <input class="btn btn-default" type="reset" value="重置" />
          <a href="home.jsp"> <input class="btn btn-default" type="button" value="返回"/></a>
        </div>
    </form>
</div>


<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>

