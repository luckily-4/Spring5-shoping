<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/28
  Time: 20:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>桌布</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body><!------------------------------head------------------------------>
<%@include file="/cartshopping/public/header.jsp"%>
<!------------------------------banner------------------------------>
<div class="banner"><a href="#"><img src="img/temp/zbBanner.jpg"/></a></div>
<!-----------------address------------------------------->
<div class="address">
    <div class="wrapper clearfix">
        <a href="index.jsp">首页</a><span>/</span>
        <a href="decoration.html">布艺软饰</a><span>/</span>
        <a href="zbproList.jsp" class="on">桌布</a></div>
</div><!-------------------current---------------------->
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
                <dt><img src="img/temp/zb08.jpg"></dt>
                <dd>【最家】清新乡村田园桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb07.jpg"></dt>
                <dd>【最家】法式乡村复古桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb06.jpg"></dt>
                <dd>【最家】清新简约防水桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb05.jpg"></dt>
                <dd>【最家】北欧圣诞节防水桌布红色</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb04.jpg"></dt>
                <dd>【最家】田园桌布防水防油布</dd>
                <dd>￥47.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb03.jpg"></dt>
                <dd>【最家】欧式家用小方桌台布</dd>
                <dd>￥20.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb02.jpg"></dt>
                <dd>【最家】地中海格子桌布</dd>
                <dd>￥37.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb01.jpg"></dt>
                <dd>【最家】欧式田园棉麻桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb08.jpg"></dt>
                <dd>【最家】清新乡村田园桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb07.jpg"></dt>
                <dd>【最家】法式乡村复古桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb06.jpg"></dt>
                <dd>【最家】清新简约防水桌布</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb05.jpg"></dt>
                <dd>【最家】北欧圣诞节防水桌布红色</dd>
                <dd>￥17.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb04.jpg"></dt>
                <dd>【最家】田园桌布防水防油布</dd>
                <dd>￥47.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb03.jpg"></dt>
                <dd>【最家】欧式家用小方桌台布</dd>
                <dd>￥20.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb02.jpg"></dt>
                <dd>【最家】地中海格子桌布</dd>
                <dd>￥37.90</dd>
            </dl>
        </a></li>
        <li><a href="proDetail.jsp">
            <dl>
                <dt><img src="img/temp/zb01.jpg"></dt>
                <dd>【最家】欧式田园棉麻桌布</dd>
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
