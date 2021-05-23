<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/11
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3  class="modal-title" id="myModalLabel">登录</h3>
                </div>
                <div class="modal-body thumbnail">
                    <form action="${pageContext.request.contextPath}/loginservlet" method="post" class="form-horizontal" >
                        <div class="form-group">
                            <label for="inputEmail" class="col-sm-3 control-label">name</label>
                            <div class="col-sm-9">
                                <input type="text"id="name" name="name" class="form-control" id="inputEmail" placeholder="name">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="inputPassword2" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type="password"id="password" name="password" class="form-control" id="inputPassword2" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label">验证码</label>
                            <div >
                                <input style="width: 70px" id="code" name="code" type="text"  placeholder="验证码">
                                <img id="getcode" alt="" src="getcode" onclick="this.src='getcode?'+new Date().getTime()" style="float: right; margin-right: 40px; width: 110px; height: 30px;">
                            </div>
                        </div>
                        <div class="form-group">
                            <div style="margin-left:40%" class="col-sm-offset-2 ">
                                <button  type="submit" class="btn btn-default">登录</button>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>
</head>
<body>

</body>
</html>
