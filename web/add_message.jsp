<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新建留言</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/add.css">
     <style>
       body{  background: url("img/5.jpg");
         background-size: 100%;}
     </style>
</head>
<body>

<div class="container">

        <h2 style="text-align: center;">Hello, ${user.name}!</h2>
        <p style="text-align: center">${user.name}既然来了，就留下点痕迹吧!</p>

    <div class="page-header">
        <h3><small>新建留言</small></h3>
    </div>
    <form class="form-horizontal" action="${pageContext.request.contextPath}/addmessageservlet" method="post">
        <div class="form-group">
            <label for="inputTitle" class="col-sm-2 control-label">姓名 ：</label>
            <div class="col-sm-8">
                <input name="name" class="form-control"value="${user.name}"readonly="readonly" id="inputTitle" placeholder="title">
            </div>
        </div>
        <div class="form-group">
            <label for="inputTitle" class="col-sm-2 control-label">标题 ：</label>
            <div class="col-sm-8">
                <input name="title" class="form-control" id="inputTitle1" >
            </div>
        </div>
        <div class="form-group">
            <label for="inputTitle" class="col-sm-2 control-label">时间 ：</label>
            <div class="col-sm-8">
                <input name="time" class="form-control" id="inputTitle2">
            </div>
        </div>
        <div class="form-group">
            <label for="inputContent" class="col-sm-2 control-label">内容 ：</label>
            <div class="col-sm-8">
                <textarea name="content"  class="form-control" rows="8" id="inputContent" ></textarea>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-primary">发布留言</button>&nbsp;&nbsp;&nbsp;
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <a class="btn btn-default" href="${pageContext.request.contextPath}/findmassagebypageservlet">查看留言</a>
            </div>
        </div>
    </form>
</div>
<footer class="text-center" >

</footer>
</body>
</html>
