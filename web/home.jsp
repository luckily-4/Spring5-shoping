<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/1
  Time: 22:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script src="js/function.js"></script>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css'>
    <link rel='stylesheet' href='css/aqua.min.css'>
    <style>
        body{background: url("img/timg.jpg") no-repeat ;background-size: 100% 800px;}
        .logo{width: 80px;height: 50px;background: url("img/logo.jpg")no-repeat;background-size: 60px 50px;margin-top: 10px;margin-left: 20px;}
        .modal-title{text-align: center;color: black;}
        .modal-body{margin:auto;width: 300px;height: 300px;background-color:rgba(255,255,255,0.5);}
        .modal-content{background:url("img/zhuce.jpg" )no-repeat;background-size: 100%;}
        .btn{color: black;}
        .navbar{background-size: 100%;background-color: transparent}
        .btn{background-color:rgba(255,255,255,0.5);}
        h1 {text-align: center;margin-top:200px;color: blue;}
        h5{text-align: center;margin-top:30px;color: #2aabd2;}
        .btn{background-color:transparent;border-style:none;}
        .left{margin-left: 100px;}
        .lists{list-style-type:none;margin-top: 25px;}
        .left,.right{float: left;}
        .right{margin-top: 20px;margin-left:170px;width: 1000px;}
        .item{width: 1000px;height: 500px;margin-left:100px;margin-top: 10px;}
        #gallery{padding: 40px;list-style:none;width:1000px;}
        #gallery li {float:left;width:180px;height:180px;margin-right:30px;margin-left:15px;overflow:visible;}
        #gallery li a {color:#333;text-decoration:none;font-size:4px;display:block;text-align:center;background-color:#FFF;padding:3px;opacity:0.8;box-shadow:0 0 5px 2px #333;
            /* 设计动画过渡效果 */
            -webkit-transition: all 500ms linear;-moz-transition: all 500ms linear;transition: all 500ms linear;
            /* 自定义变形原点 */
            -webkit-transform-origin:0 0;-moz-transform-origin:0 0;transform-origin:0 0;
            /* 旋转变形 */
            -webkit-transform:rotate(-25deg);-moz-transform:rotate(-15deg);transform:rotate(-15deg);}
        #gallery li a img {width:165px;}
        #gallery li:nth-child(3n) a {-webkit-transform:rotate(10deg);-moz-transform:rotate(25deg);transform:rotate(15deg);}
        #gallery li:nth-child(4n) a {-webkit-transform:rotate(25deg);-moz-transform:rotate(10deg);transform:rotate(25deg);}
        #gallery li:nth-child(7n) a {-webkit-transform:rotate(-10deg);-moz-transform:rotate(-10deg);transform:rotate(-10deg);}
        #gallery li:nth-child(9n) a {-webkit-transform:rotate(-30deg);-moz-transform:rotate(-20deg);transform:rotate(-20deg);}
        #gallery li a:hover {position:relative;z-index: 999;opacity: 1;-webkit-transform: rotate(0deg) scale(2);-moz-transform: rotate(0deg) scale(2);transform: rotate(0deg) scale(2);}
        #gallery li a:hover:after {content:attr(title);  /* 添加title属性内容 */}
       .menu-item{margin-top: 20px;}
    </style>
</head>
<body>
<%@include file="public.jsp"%>
<div class="left img-responsive" >
    <div class="light-mode ">
        <div>
            <i class="fab fa-codepen mb-8 ml-3 text-secondary-darkest text-2xl cursor-pointer"></i>

                <li style="list-style: none" class="menu-item"><i class="icon fas fa-user "></i><a style="font-size: 30px" href="userXiugai.jsp">个人设置</a></li>
                <li style="list-style: none"class="menu-item"><i class="icon fas fa-star mr-5"></i><a style="font-size: 30px"href="cartshopping/index.jsp">百用家具</a></li>
                <li style="list-style: none"class="menu-item"><i class="icon fas fa-check-square mr-5"></i><a style="font-size: 30px"href="${pageContext.request.contextPath}/findmassagebypageservlet">评论留言</a></li>
                <li style="list-style: none"class="menu-item"><i class="icon fas fa-compass mr-5"></i><a style="font-size: 30px"href="">客户服务</a></li>
                <li style="list-style: none"class="divider"></li>


        </div>
        <div style="margin-top: 60px"class="flex justify-between items-center">
            <div class="flex items-center cursor-pointer">
                <i  class="icon fas fa-compass mr-5"></i><h4>Lingshi</h4>
            </div>
            <i class="fas fa-question-circle text-secondary text-lg cursor-pointer"></i>
        </div>
    </div>
</div>
<div class="right ">
    <ul id="gallery">
        <li><a href="#" title="创意家居"><img src="cartshopping/img/temp/bz01.jpg" /></a></li>
        <li><a href="#" title="装饰摆件"><img src="cartshopping/img/temp/det02.jpg"  /></a></li>
        <li><a href="#" title="装饰摆件"><img src="cartshopping/img/temp/like05.jpg"  /></a></li>
        <li><a href="#" title="蜡艺香薰"><img src="cartshopping/img/temp/pro04.jpg"  /></a></li>
        <li><a href="#" title="墙饰壁挂"><img src="cartshopping/img/temp/sec104.jpg"  /></a></li>
        <li><a href="#" title="装饰摆件"><img src="cartshopping/img/temp/xx103.jpg"  /></a></li>
        <li><a href="#" title="墙饰壁挂"><img src="cartshopping/img/temp/bz07.jpg"  /></a></li>
        <li><a href="#" title="布衣软式"><img src="cartshopping/img/id6.jpg"/></a></li>
        <li><a href="#" title="装饰摆件"><img src="cartshopping/img/idea10.jpg"  /></a></li>
        <li><a href="#" title="墙饰壁挂"><img src="cartshopping/img/s8.jpg" /></a></li>
        <li><a href="#" title="墙饰壁挂"><img src="cartshopping/img/id2.jpg" /></a></li>
        <li><a href="#" title="墙饰壁挂"><img src="cartshopping/img/id9.jpg" /></a></li>
    </ul>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>
