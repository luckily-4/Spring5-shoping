<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/3
  Time: 23:48
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
    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <style>
        body{
         background: url("img/5.jpg");
         background-size: 100%;
        }
        .head{
            border: 10px solid #2aabd2;
            margin-top: 20px;
            width: 100%;
            height: 150px;
            opacity:0.6;
            border-radius: 25%;
        }
        .alt-info{
            text-align: center;
            color: #2aabd2;

        }
        .alt-content{
            width: 100%;
            height: 150px;
            opacity:0.7;
               background-color:lightcyan;
        }

    </style>

</head>
<body>
<div class="border">
<header>

    <section class="banner" >
        <div class="container">
            <div class="head">
                <h1 style="text-align: center;color: #122b40" >留言板</h1>
                <h3 style="text-align: center ;color: greenyellow"><a href="${pageContext.request.contextPath}/add_message.jsp">既然来了就留下点痕迹!</a></h3>
            </div>
        </div>
    </section>
    <section class="main">
        <div class="container" >
            <c:forEach items="${pb.list}" var="messages" varStatus="s">
                <div class="alt-item">
                    <div class="alt-head">
                        <div class="alt-info">
                            <span><h3>作者${messages.name}&nbsp;&nbsp;&nbsp;&nbsp;时间:${messages.time}</h3></span>&nbsp;&nbsp;&nbsp;&nbsp;

                        </div>
                    </div>
                    <div class="alt-content">
                        <h3 style="text-align: center;color:blue;padding-top:15px">${messages.title}</h3>
                        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${messages.content}</h4>
                    </div>
                </div>
            </c:forEach>
        </div>
    </section>

</header>

<footer>

    <nav aria-label="Page navigation" style="margin-left: 270px">
        <ul class="pagination">
            <c:if test="${pb.currentPage==1}">
            <li class="disabled">
                </c:if>
                <c:if test="${pb.currentPage!=1}">
            <li >
                </c:if>

                <a href="${pageContext.request.contextPath}/findmassagebypageservlet?currentPage=${pb.currentPage-1}&rows=5" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>

            <c:forEach begin="1" end="${pb.totalPage}" var="i">
                <c:if test="${pb.currentPage ==i}">
                    <li class="active"><a href="${pageContext.request.contextPath}/findmassagebypageservlet?currentPage=${i}&rows=5">${i}</a></li>

                </c:if>
                <c:if test="${pb.currentPage !=i}">
                    <li ><a href="${pageContext.request.contextPath}/findmassagebypageservlet?currentPage=${i}&rows=5">${i}</a></li>
                </c:if>
            </c:forEach>
            <c:if test="${pb.currentPage==pb.totalPage}">
            <li class="disabled">
                </c:if>
                <c:if test="${pb.currentPage!=pb.totalPage}">
            <li >
                </c:if>

                <a href="${pageContext.request.contextPath}/findmassagebypageservlet?currentPage=${pb.currentPage+1}&rows=5" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
            <span style="font-size: 25px;margin-left: 5px">
                共${pb.totalCount}条记录,当前${pb.currentPage}/${pb.totalPage}页
                </span>
            <h3><a href="home.jsp">返回</a></h3>
        </ul>
    </nav>
</footer>
<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</div>
</body>

</html>
