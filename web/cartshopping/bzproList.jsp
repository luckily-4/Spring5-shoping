<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/28
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>抱枕</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <script src="js/jquery-1.12.4.min.js" type="text/javascript" charset="utf-8"></script>
</head>
<body>
<%@include file="/cartshopping/public/header.jsp"%>

<div class="banner">
    <a href="#"><img src="/cartshopping/img/temp/bzbig.jpg"/></a>
</div>


<div class="address">
    <div class="wrapper clearfix">
        <a href="index.jsp">首页</a><span>/</span>
        <a href="decoration.jsp">布艺软饰</a><span>/</span>
        <a href="bzproList.jsp" class="on">抱枕</a>
    </div>
</div>
<div class="current">
    <div class="wrapper clearfix"><h3 class="fl">桌布</h3>
        <div class="fr choice"><p class="default">排序方式</p>
            <ul class="select">
                <li>新品上市</li>
                <li>销量从高到低</li>
                <li>销量从低到高</li>
                <li>价格从高到低</li>
                <li>价格从低到高</li>
            </ul>
        </div>
    </div>
</div><!----------------proList------------------------->
<ul class="proList wrapper clearfix">
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz08.jpg"></dt>
            <dd>【最家】清新乡村田园抱枕</dd>
            <dd>￥19.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz07.jpg"></dt>
            <dd>【最家】法式乡村复古抱枕</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz06.jpg"></dt>
            <dd>【最家】时尚图案抱枕</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li>
        <a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz05.jpg"></dt>
            <dd>【最家】北欧时尚现代动物抱枕</dd>
            <dd>￥59.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz04.jpg"></dt>
            <dd>【最家】简约格子抱枕</dd>
            <dd>￥20.90</dd>
        </dl>
    </a></li>
    <li>
        <dl>
            <dt><img src="img/temp/bz03.jpg"></dt>
            <dd>【最家】纯色棉麻抱枕</dd>
            <dd>￥47.90</dd>
        </dl>
    </li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz02.jpg"></dt>
            <dd>【最家】时尚现代叮当猫抱枕</dd>
            <dd>￥37.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz01.jpg"></dt>
            <dd>【最家】欧式现代棉麻抱枕</dd>
            <dd>￥39.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz08.jpg"></dt>
            <dd>【最家】清新乡村田园抱枕</dd>
            <dd>￥19.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz07.jpg"></dt>
            <dd>【最家】法式乡村复古抱枕</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz06.jpg"></dt>
            <dd>【最家】时尚图案抱枕</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz05.jpg"></dt>
            <dd>【最家】北欧时尚现代动物抱枕</dd>
            <dd>￥59.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz04.jpg"></dt>
            <dd>【最家】简约格子抱枕</dd>
            <dd>￥20.90</dd>
        </dl>
    </a></li>
    <li>
        <dl>
            <dt><img src="img/temp/bz03.jpg"></dt>
            <dd>【最家】纯色棉麻抱枕</dd>
            <dd>￥47.90</dd>
        </dl>
    </li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz02.jpg"></dt>
            <dd>【最家】时尚现代叮当猫抱枕</dd>
            <dd>￥37.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/bz01.jpg"></dt>
            <dd>【最家】欧式现代棉麻抱枕</dd>
            <dd>￥39.90</dd>
        </dl>
    </a></li>
</ul>
<!----------------mask------------------->
<div class="mask"></div>
<!-------------------mask内容------------------->
     <%@include file="/cartshopping/public/mask.jsp"%>
<!--返回顶部-->
     <%@include file="/cartshopping/public/cartlog.jsp"%>
<!--footer-->
<div class="footer">
     <%@include file="/cartshopping/public/foot.jsp"%>
</div>
    <%@include file="/cartshopping/public/script.jsp"%>
</body>
</html>
