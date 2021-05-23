<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/1
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Bootstrap 101 Template</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <script src="js/function.js"></script>
    <![endif]-->
    <style>

        body{
            background: url("img/timg.jpg") no-repeat ;
            background-size: 100% 800px;



        }
        .logo{
            width: 80px;height: 50px;
            background: url("img/logo.jpg")no-repeat;
            background-size: 60px 50px;
            margin-top: 10px;
            margin-left: 20px;
        }
        .modal-title{
            text-align: center;
            color: black;
        }

        .modal-body{
            margin:auto;
            width: 300px;height: 300px;
            background-color:rgba(255,255,255,0.5);
        }

        .modal-content{
            background:url("img/zhuce.jpg" )no-repeat;
            background-size: 100%;
        }
        .btn{
            color: black;
        }
        .navbar{

            background-size: 100%;
            background-color: transparent
        }
        .btn{
            background-color:rgba(255,255,255,0.5);
        }
        h3
        {
            text-align: center;
            margin-top:200px;
            color: #1e42c0;
        }
        h5{
            text-align: center;
            margin-top:30px;
            color: #2aabd2;
        }
        .footer{
            margin-top: 250px;
        }
        .btn{
            background-color:transparent;
            border-style:none;
        }

    </style>
</head>
<body>
   <%@include file="public.jsp"%>


   <div>
       <h3> <a href="home.jsp">点击进入--></a></h3>

   </div>
<footer class="footer">
    <blockquote >
        <h4>&nbsp;&nbsp;&nbsp;&nbspBelieve that dream is the source of value, believe that the belief of
            success is more important than the success itself, believe that the
            quality of life comes from the uncompromising belief.</h4>
        <h4>&nbsp;&nbsp;&nbsp;If a man empties his purse into his head , no man can take it away from him , an investment in knowledge always pays the best interest . (Benjamin Franklin , American president )</h4>
        <h4>&nbsp;&nbsp;&nbsp;青山碧水，那是自然之绿;翠草丛生，那是生命之绿;人影悠然，那是生活之绿;快乐读书，那是精神之绿。世界读书日到了，拿起书本快乐阅读吧，让浓浓的绿意弥漫精神的花园。</h4>
        <footer> <cite title="Source Title">Lingshi</cite></footer>
    </blockquote>
</footer>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>