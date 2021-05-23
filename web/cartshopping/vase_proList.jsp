<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/28
  Time: 20:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>花瓶花器</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body><!------------------------------head------------------------------>
<%@include file="/cartshopping/public/header.jsp"%>
<!------------------------------banner------------------------------>
<div class="banner"><a href="#"><img src="img/temp/banner1.jpg"/></a></div>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix"><a href="index.jsp">首页</a><span>/</span><a
            href="flowerDer.html">装饰摆件</a><span>/</span><a href="vase_proList.jsp" class="on">花瓶花器</a></div>
</div><!-------------------current---------------------->
<div class="current">
    <div class="wrapper clearfix"><h3 class="fl">花瓶花器</h3>
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
</div>
<!----------------proList------------------------->
<ul class="proList wrapper clearfix">
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase01.jpg"></dt>
            <dd>【最家】创意现代简约白瓷干花花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase02.jpg"></dt>
            <dd>【最家】现代简约白色条纹干花花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase03.jpg"></dt>
            <dd>【最家】北欧现代陶瓷花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase04.jpg"></dt>
            <dd>【最家】现代简约客厅茶几白色陶瓷花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase05.jpg"></dt>
            <dd>【最家】仿木纹漆金裂纹台面花瓶系列套装</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase06.jpg"></dt>
            <dd>【最家】仿木竖条纹雅致台面花瓶</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase07.jpg"></dt>
            <dd>【最家】地中海风情落地大花瓶</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase08.jpg"></dt>
            <dd>【最家】东南亚复古做旧大花瓶</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase01.jpg"></dt>
            <dd>【最家】创意现代简约白瓷干花花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase02.jpg"></dt>
            <dd>【最家】现代简约白色条纹干花花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase03.jpg"></dt>
            <dd>【最家】北欧现代陶瓷花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase04.jpg"></dt>
            <dd>【最家】现代简约客厅茶几白色陶瓷花瓶摆件</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase05.jpg"></dt>
            <dd>【最家】仿木纹漆金裂纹台面花瓶系列套装</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase06.jpg"></dt>
            <dd>【最家】仿木竖条纹雅致台面花瓶</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase07.jpg"></dt>
            <dd>【最家】地中海风情落地大花瓶</dd>
            <dd>￥17.90</dd>
        </dl>
    </a></li>
    <li><a href="proDetail.jsp">
        <dl>
            <dt><img src="img/temp/vase08.jpg"></dt>
            <dd>【最家】东南亚复古做旧大花瓶</dd>
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
