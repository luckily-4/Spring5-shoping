<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/1
  Time: 23:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-default ">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="logo"></div><p>欢迎${user.getName()}登录</p>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="home.jsp"><button type="button" class="btn  btn-lg" data-toggle="modal" >HOME</button></a></li>
                <li><a href="#"><button type="button" class="btn  btn-lg" data-toggle="modal" data-target="#myModal">
                    登录
                </button></a></li>
                <%@include file="loginandregister/login.jsp"%>

                </li>
                <li><a href="#"><button type="button" class="btn  btn-lg" data-toggle="modal" data-target="#myModa2">注册</button></a></li>
                <div class="modal fade" id="myModa2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h3  class="modal-title" id="myModalLabe2">注册</h3>
                            </div>
                            <%@include file="loginandregister/register.jsp"%>

                        </div>
                    </div>
                </div>

                <li><a href="about.jsp"><button type="button" class="btn  btn-lg" >关于我们</button></a></li>
                <li><a href="${pageContext.request.contextPath}/exitservlet"><button type="button" class="btn  btn-lg" >退出</button></a></li>
            </ul>
        </div>
    </div>
</nav>
</body>

