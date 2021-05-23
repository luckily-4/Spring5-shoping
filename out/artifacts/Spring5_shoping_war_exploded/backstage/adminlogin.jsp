<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/19
  Time: 21:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
   <style>
       h1{
           text-align: center;
       }
       span{

           height: 20px;
       }
       .text{
           margin-left: 500px;
       }
   </style>
<body>
       <h1>管理员登录</h1>
       <div class="text">
      <form action="${pageContext.request.contextPath}/adminloginservlet" method="post">
         <span> <h3>管理员账号:</h3>  <input type="text" name="name"></span><br>
          <span> <h3>管理员密码:</h3><input  type="password" name="password"></span><br>
        <span>  <input type="submit" value="登录">
          <input type="reset" value="重置"></span>
      </form>
       </div>
</body>
</html>
