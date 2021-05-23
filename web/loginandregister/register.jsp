<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/11
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <div class="modal-body thumbnail">
        <form id="registerForm" action="${pageContext.request.contextPath}/adduserservlet" method="post" class="form-horizontal" >
            <div class="form-group">
                <label for="inputEmail3" class="col-sm-3 control-label">name</label>
                <div class="col-sm-9">
                    <input type="text" id="name" name="name" class="form-control" id="inputEmail3" placeholder="name">
                </div>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                <div class="col-sm-9">
                    <input type="password"id="password" name="password" class="form-control" id="inputPassword3" placeholder="Password">
                </div>
            </div>

            <div class="form-group">
                <label for="inputPassword3"  class="col-sm-3 control-label">Email</label>
                <div class="col-sm-9">
                    <input type="email" id="email" name="email" class="form-control" id="inputEmail4" placeholder="Email">
                </div>
            </div>
            <div class="form-group">
                <label class="radio-inline " style="margin-left: 30%">
                    <input id="sex" type="radio" checked="checked"  name="sex" value="男">男性
                </label>
                <label class="radio-inline ">
                    <input id="sex1" type="radio"   name="sex" value="女">女性
                </label>
            </div>
            <div class="form-group">
                <label for="inputPassword3" class="col-sm-3 control-label">验证码</label>
                <div >
                    <input style="width: 70px" id="code" type="text" name="code" placeholder="验证码">
                    <img id="getcodes" alt="" src="getcode" onclick="this.src='getcode?'+new Date().getTime()" style="float: right; margin-right: 40px; width: 110px; height: 30px">
                </div>
            </div>
            <div class="form-group">
                <div style="margin-left:40%" class="col-sm-offset-2 ">
                    <button  type="submit" class="btn btn-default">注册</button>
                    <button  type="reset" class="btn btn-default">重置</button>
                </div>
            </div>
        </form>
    </div>
</head>
<body>

</body>
</html>
