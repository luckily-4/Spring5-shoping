<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/4
  Time: 17:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录错误</title>
    <style>
        p{
            text-align: center;
        }
        span{
            color: red;
        }
    </style>
</head>
<body>
<p>
    注册成功 <span id="time">5.....</span> 秒之后自动跳转到首页
</p>



<script>
    var second=5;
    var time = document.getElementById("time");
    function showtime() {
        second--;
        if(second<=1){
            location.href="http://localhost:9642/Spring5_shoping/home.jsp";
        }

        time.innerHTML=second+"";
    }
    setInterval(showtime,1000);
    var btn = document.getElementById('btn');

    btn.onclick=function () {
        var length = history.length;
        alert(length);
    }
</script>
</body>
</html>
