<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/12/13
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap 101 Template</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
    <style>

        body{  background: url("/img/5.jpg");
            background-size: 100%;}


        .model{
            width: 100%;
            height: 50px;
            margin-left: 40%;
        }
        .table{
            width: 1000px;
            margin-left: 20%;
        }
    </style>
</head>
<body>
<header>
    <h1 style="text-align: center;color: #1e42c0">商品管理</h1>
    <
</header>
<br>
<div class="table-responsive" >
    <table class="table table-bordered table-striped " >
        <tr>
            <th>序号</th>
            <th>商品名称</th>
            <th>商品数量</th>
            <th>商品价格</th>
            <th>商品时间</th>
            <th width="20%">操作</th>
        </tr>
        <c:forEach items="${pb.list}" var="goods" varStatus="s">
            <tr>
                <td>${s.count}</td>
                <td>${goods.name}</td>
                <td>${goods.num}</td>
                <td>${goods.price}</td>
                <td>${goods.time}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/findgoodsservlet?id=${goods.id}" class="btn btn-info btn-xs">编辑</a>
                    <a href="${pageContext.request.contextPath}/delgoodsservlet?id=${goods.id}" class="btn btn-danger btn-xs">删除</a>

                </td>
            </tr>
        </c:forEach>
    </table>
    <footer>
        <nav aria-label="Page navigation" style="margin-left: 270px">
            <ul class="pagination">
                <c:if test="${pb.currentPage==1}">
                <li class="disabled">
                    </c:if>
                    <c:if test="${pb.currentPage!=1}">
                <li >
                    </c:if>
                    <a href="${pageContext.request.contextPath}/findgoodsbypageservlet?currentPage=${pb.currentPage-1}&rows=5" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <c:forEach begin="1" end="${pb.totalPage}" var="i">
                    <c:if test="${pb.currentPage ==i}">
                        <li class="active"><a href="${pageContext.request.contextPath}/findgoodsbypageservlet?currentPage=${i}&rows=5">${i}</a></li>
                    </c:if>
                    <c:if test="${pb.currentPage !=i}">
                        <li ><a href="${pageContext.request.contextPath}/findgoodsbypageservlet?currentPage=${i}&rows=5">${i}</a></li>
                    </c:if>
                </c:forEach>
                <c:if test="${pb.currentPage==pb.totalPage}">
                <li class="disabled">
                    </c:if>
                    <c:if test="${pb.currentPage!=pb.totalPage}">
                <li >
                    </c:if>
                    <a href="${pageContext.request.contextPath}/findgoodsbypageservlet?currentPage=${pb.currentPage+1}&rows=5" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                <span style="font-size: 25px;margin-left: 5px">
                共${pb.totalCount}条记录,当前${pb.currentPage}/${pb.totalPage}页
                </span>
            </ul>
        </nav>
    </footer>
</div>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
</html>