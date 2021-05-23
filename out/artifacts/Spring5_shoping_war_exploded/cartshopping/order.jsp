<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/28
  Time: 19:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head lang="en">
    <meta charset="utf-8"/>
    <title>order</title>
    <link rel="stylesheet" type="text/css" href="css/public.css"/>
    <link rel="stylesheet" type="text/css" href="css/proList.css"/>
    <link rel="stylesheet" type="text/css" href="css/mygxin.css"/>
</head>
<body>
<%@include file="/cartshopping/public/header.jsp"%>
<div class="order cart mt">
    <div class="site"><p class="wrapper clearfix">
        <span class="fl">订单确认</span>
        <img class="top" src="img/temp/cartTop02.png">
    </p>
    </div>
    <div class="orderCon wrapper clearfix">
        <div class="orderL fl">
            <h3>收件信息<a href="#" class="fr">新增地址</a></h3>
            <div class="addres clearfix">
                <div class="addre fl on">
                    <div class="tit clearfix">
                        <p class="fl">${user.name}
                            <span class="default">[默认地址]</span>
                        </p>
                        <p class="fr">
                            <a href="#">删除</a><span>|</span>
                            <a href="#" class="edit">编辑</a>
                        </p>
                    </div>
                    <div class="addCon">
                        <p>宁夏省&nbsp;石嘴山&nbsp;宁夏理工学院&nbsp;南苑3号楼423</p>
                        <p>15732570937</p>
                    </div>
                </div>
                <div class="addre fl">
                    <div class="tit clearfix">
                        <p class="fl">${user.name}</p>
                        <p class="fr"><a href="#" class="setDefault"></a>
                            <span>|</span>
                            <a href="#">删除</a><span>|</span>
                            <a href="#" class="edit">编辑</a></p></div>
                    <div class="addCon">
                        <p>宁夏省&nbsp;石嘴山&nbsp;宁夏理工学院&nbsp;南苑3号楼423</p>
                        <p>15732570937</p>
                    </div>
                </div>
                <div class="addre fl">
                    <div class="tit clearfix">
                        <p class="fl">${user.name}</p>
                        <p class="fr">
                            <a href="#" class="setDefault"></a>
                            <span>|</span>
                            <a href="#">删除</a>
                            <span>|</span>
                            <a href="#" class="edit">编辑</a></p></div>
                    <div class="addCon">
                        <p>宁夏省&nbsp;石嘴山&nbsp;宁夏理工学院&nbsp;南苑3号楼423</p>
                        <p>15732570937</p></div>
                </div>
            </div>
            <h3>支付方式</h3>
            <div class="way clearfix">
                <img class="on" src="img/temp/way01.jpg">
                <img src="img/temp/way02.jpg">
                <img src="img/temp/way03.jpg">
                <img src="img/temp/way04.jpg">
            </div>
            <h3>选择快递</h3>
            <div class="dis clearfix">
                <span class="on">顺风快递</span>
                <span>百世汇通</span>
                <span>圆通快递</span>
                <span>中通快递</span>
            </div>
        </div>
        <div class="orderR fr">
            <div class="msg">
                <h3>订单内容<a href="cart.jsp" class="fr">返回购物车</a></h3>
                <ul class="clearfix">
                    <li class="fl">
                        <img src="img/temp/order01.jpg">
                    </li>
                    <li class="fl"><p>创意现代简约干花花瓶摆件</p>
                        <p>颜色分类：烟灰色玻璃瓶</p>
                        <p>数量：1</p>
                    </li>
                    <li class="fr">￥69.90</li>
                </ul>
                <ul class="clearfix">
                    <li class="fl">
                        <img src="img/temp/order02.jpg"></li>
                    <li class="fl">
                        <p>创意现代简约干花花瓶摆件</p>
                        <p>颜色分类：烟灰色玻璃瓶</p>
                        <p>数量：1</p>
                    </li>
                    <li class="fr">￥69.90</li>
                </ul>
            </div>
            <div class="tips">
                <p><span class="fl">商品金额：</span><span class="fr">￥139.80</span></p>
                <p><span class="fl">优惠金额：</span><span class="fr">￥0.00</span></p>
                <p><span class="fl">运费：</span><span class="fr">免运费</span></p>
            </div>
            <div class="count tips">
                <p><span class="fl">合计：</span><span class="fr">￥139.80</span></p>
            </div>
            <a href="ok.jsp" class="pay">去支付</a>
        </div>
    </div>
</div><!--编辑弹框--><!--遮罩-->
<div class="mask"></div>
<div class="adddz editAddre">
    <form action="#" method="get">
        <input type="text" placeholder="姓名" class="on"/>
        <input type="text" placeholder="手机号"/>
        <div class="city"><select name="">
            <option value="省份/自治区">省份/自治区</option>
        </select><select>
            <option value="城市/地区">城市/地区</option>
        </select><select>
            <option value="区/县">区/县</option>
        </select><select>
            <option value="配送区域">配送区域</option>
        </select></div>
        <textarea name="" rows="" cols="" placeholder="详细地址"></textarea>
        <input type="text" placeholder="邮政编码"/>
        <div class="bc"><input type="button" value="保存"/>
                         <input type="button" value="取消"/>
        </div>
    </form>
</div>
<!--返回顶部-->
    <%@include file="/cartshopping/public/cartlog.jsp"%>
<!--footer-->
<div class="footer">
    <%@include file="/cartshopping/public/foot.jsp"%>

    <%@include file="/cartshopping/public/script.jsp"%>
</div>
</body>
</html>
