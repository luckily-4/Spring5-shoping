<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/28
  Time: 19:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>ok</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
</head>
<body>
<!----------------------------------------order------------------>
<%@include file="/cartshopping/public/header.jsp"%>
<div class="order mt cart">
    <div class="site">
        <p class="wrapper clearfix">
            <span class="fl">支付成功</span>
             <img class="top" src="img/temp/cartTop03.png">
        </p>
    </div>
    <p class="ok">支付成功！剩余<span>5</span>秒<a href="index.jsp">返回订单页</a></p></div>
<div class="like"><h4>猜你喜欢</h4>
    <div class="bottom">
        <div class="hd"><span class="prev"><img src="img/temp/prev.png"></span>
            <span class="next">
                <img src="img/temp/next.png"></span></div>
        <div class="imgCon wrapper bd">
            <div class="likeList clearfix">
                <div><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like01.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like02.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like03.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like04.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp" class="last">
                    <dl>
                        <dt><img src="img/temp/like05.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a></div>
                <div><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like01.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like02.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like03.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp">
                    <dl>
                        <dt><img src="img/temp/like04.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a><a href="proDetail.jsp" class="last">
                    <dl>
                        <dt><img src="img/temp/like05.jpg"></dt>
                        <dd>【最家】复古文艺风玻璃花瓶</dd>
                        <dd>￥193.20</dd>
                    </dl>
                </a></div>
            </div>
        </div>
    </div>
</div><!--footer-->
<div class="footer">
    <%@include file="/cartshopping/public/foot.jsp"%>
    </div>
    <%@include file="/cartshopping/public/script.jsp"%>
<script type="text/javascript">jQuery(".bottom").slide({
    titCell: ".hd ul",
    mainCell: ".bd .likeList",
    autoPage: true,
    autoPlay: false,
    effect: "leftLoop",
    autoPlay: true,
    vis: 1
});</script>
</body>
</html>
