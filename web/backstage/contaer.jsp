<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <style>
        body{
        background: url("/img/5.jpg");
            background-size: 100%;}


        .box {
            width: 300px;
            height: 300px;
            margin: 150px auto;
            position: relative;
            font-size: 50px;
            transform-style: preserve-3d;
        }
        .box>div {
            width: 300px;
            height: 300px;
            position: absolute;

        }
        .right {

            transform: rotateY(90deg) translateZ(150px);
              background-color: yellow;
            opacity: 0.6;
        }
        .left {
            transform: rotateY(-90deg) translateZ(150px);
            background-color: #449d44;
            opacity: 0.6;
        }
        .top {
            transform: rotateX(90deg) translateZ(150px);
            background-color: #b92c28;
            opacity: 0.6;
        }
        .bottom {
            transform: rotateX(-90deg) translateZ(150px);
            background-color:sandybrown ;
            opacity: 0.6;
        }
        .front {
            transform: translateZ(150px);
            background-color: chartreuse;
            opacity: 0.6;
        }
        .behind {
            transform: translateZ(-150px);
            background-color: #dddddd;
            opacity: 0.6;
        }
     .a{
         margin-top: 25%;
     }



        ul {
            margin-top:30px;
            list-style:none;
            line-height:25px;
            font-family:Arial;
            font-weight:bold;
        }
        li {
            width:120px;
            height: 50px;
            float:left;
            margin:2px;
            border:1px solid #ccc;
            background-color:#e4e4e4;
            text-align:left;
        }
        li:hover{
            background-color:#999;            /* 深灰色 */
        }
        a{
            display:block;
            padding:5px 10px;
            color:#333;
            text-decoration:none;
        }
    li a:hover{
            background-color:#f90;
            color:#FFF;
            /* 变形方式：缩放 */
            -webkit-transform:scale(0.8,1.5);     /* 兼容webkit内核 */
            -moz-transform:scale(0.8,1.5);        /* 兼容gecko内核 */
            -o-transform:scale(0.8,1.5);          /* 兼容presto内核 */
            -ms-transform:scale(0.8,1.5);         /* 兼容IE9 */
            transform:scale(0.8,1.5);             /* 标准写法 */
        }
        .footer{
            margin-left: 450px;
        }
    </style>
</head>
<body>
         <h1 style="text-align: center;color: #18a6df">管理员--管理界面</h1>
<div class="box">
    <!-- 魔方前面 -->
    <div class="front">
        <div class="a">
            <a href="${pageContext.request.contextPath}/finduserbypageservlet"> <h3 style="text-align: center ;color: #18a6df" >用户管理</h3></a>
        </div>
    </div>

    <!-- 魔方后面 -->
    <div class="behind">
        <div class="a">
        <a href="${pageContext.request.contextPath}/afindmassagebypageservlet"> <h3 style="text-align: center ;color: #18a6df" >留言管理</h3></a>
        </div>

    </div>
    <!-- 魔方上面 -->
    <div class="top">
        <div class="a">
        <a href="${pageContext.request.contextPath}/findgoodsbypageservlet"> <h3 style="text-align: center ;color: #18a6df" >商品管理</h3></a>
        </div>


    </div>
    <!-- 魔方下面 -->
    <div class="bottom">
        <div class="a">
            <a href="${pageContext.request.contextPath}/findusercartbypageservlet"> <h3 style="text-align: center ;color: #18a6df" >用户信息管理</h3></a>
        </div>

    </div>
    <!-- 魔方左面 -->
    <div class="left">

    </div>
    <!-- 魔方右面 -->
    <div class="right">

    </div>
</div>
         <div class="footer">
             <ul>
                 <li><a href="${pageContext.request.contextPath}/finduserbypageservlet">用户管理</a></li>
                 <li><a href="${pageContext.request.contextPath}/afindmassagebypageservlet">留言管理</a></li>
                 <li><a href="${pageContext.request.contextPath}/findgoodsbypageservlet">商品管理</a></li>
                 <li><a href="${pageContext.request.contextPath}/findusercartbypageservlet">用户信息管理</a></li>
             </ul>
         </div>



<script>
    var box = document.querySelector('.box');
    //鼠标按下事件
    document.onmousedown = function(event){
        //鼠标按下时初始位置
        var reg = /\-?[0-9]+\.?[0-9]*/g;
        var trans = box.style.transform || '0,0';
        var arr = trans.match(reg);
        var transX = Number(arr[0]);
        var transY = Number(arr[1]);
        //鼠标开始点下位置
        var startX = event.clientX - transX
        var startY = event.clientY + transY
        //鼠标拖拽事件
        document.onmousemove = function(event){
            //鼠标移动后位置
            var x = event.clientX - startX
            var y = event.clientY - startY
            box.style.transform = "rotateY(" + x + "deg) rotateX(" + -y + "deg)";
        }
        //鼠标抬起事件
        document.onmouseup = function(){
            document.onmousemove = null;
            document.onmouseup = null;
        }
    }
</script>
</body>
</html>
