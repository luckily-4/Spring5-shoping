<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/28
  Time: 19:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>干花花艺</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body>
<%@include file="/cartshopping/public/header.jsp"%>
<!------------------------------banner------------------------------>
<div class="banner"><a href="#"><img src="img/temp/banner1.jpg"/></a></div>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix"><a href="index.jsp">首页</a><span>/</span><a
            href="flowerDer.jsp">装饰摆件</a><span>/</span><a href="proList.jsp" class="on">干花花艺</a></div>
</div><!-------------------current---------------------->
<div class="current">
    <div class="wrapper clearfix"><h3 class="fl">干花花艺</h3>
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
            <dt><img src="img/temp/pro01.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro02.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro03.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro04.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro05.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro06.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro07.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro08.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro01.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro02.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro03.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro04.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro05.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro06.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro07.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/pro08.jpg"></dt>
            <dd>【最家】跳舞兰仿真花干花</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
</ul><!----------------mask------------------->
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