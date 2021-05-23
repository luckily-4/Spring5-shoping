<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/12/17
  Time: 20:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>管理员--图书修改</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
  <![endif]-->
  <style>
    body{  background: url("/img/5.jpg");
      background-size: 100%;}
  </style>
</head>
<body>
<div class="container" style="width: 400px;">
  <h3 style="text-align: center;">图书修改</h3>
  <form action="${pageContext.request.contextPath}/updategoodsservlet" method="post">
    <input type="hidden" name="id" value="${goods.id}">
    <div class="form-group">
      <label for="name">姓名：</label>
      <input type="text" class="form-control" id="name" value="${goods.name}" name="name"   />
    </div>
    <div class="form-group">
      <label for="num">数量：</label>
      <input type="text" id="num" class="form-control" value="${goods.num}"name="num" />
    </div>

    <div class="form-group">
      <label for="price">价格：</label>
      <input type="text" id="price" class="form-control"value="${goods.price}" name="price" />
    </div>
    <div class="form-group">
      <label for="time">时间：</label>
      <input type="text" id="time" class="form-control"value="${goods.time}" name="time" />
    </div>


    <div class="form-group" style="text-align: center">
      <input class="btn btn-primary" type="submit" value="提交" />
      <input class="btn btn-default" type="reset" value="重置" />
    </div>
  </form>
</div>



<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>