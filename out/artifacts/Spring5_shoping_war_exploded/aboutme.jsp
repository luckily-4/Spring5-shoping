<%--
  Created by IntelliJ IDEA.
  User: lucky
  Date: 2020/11/13
  Time: 23:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>关于我们</title>
    <style>
        body{
            background:url("img/5.jpg");
        }
        .rg_lift{
            text-align: center;
            font-size: 25px;
        }
        .td_right{
            padding-left: 40px;
        }

        .rg_right >p:first-child{
            color:dodgerblue;
            font-size:25px ;
        }
        .rg_right p a{
            color: blue;
        }


        .rg_form{
            margin-left: 550px;
        }

    </style>
</head>
<body>
<div class="rg_layout">

    <div class="rg_lift"><p style="color: #18a6df">关于我们</p></div>

    <div class="rg_center">
        <div class="rg_form">
            <form action="#"method="post">
                <table >
                    <tr>
                        <td class="td_left"><label style="color: #18a6df"><h3>项目制作团队:</h3></label></td>
                        <td class="td_right"><span style="color: #18a6df"><h3>零式</h3></span></td>
                        <span id="s_name" class="error"></span>
                    </tr>
                    <tr>
                        <td class="td_left"><label style="color: #18a6df"><h3>时间:</h3></label></td>
                        <td class="td_right"><span style="color: #18a6df"><h3>2020-10-16</h3></span></td>
                        <span id="s_time"class="error"></span>
                    </tr>
                    <tr>
                        <td class="td_left"><label style="color: #18a6df"><h3>成员:</h3></label></td>
                        <td class="td_right"><span style="color: #18a6df"><h3>陈亮,程振烨,郭梦宇,吴迪</h3></span></td>
                        <span id="s_people"class="error"></span>
                    </tr>
                    <tr>
                        <td class="td_left"><label style="color: #18a6df"><h3>项目介绍:</h3></label></td>
                        <td class="td_right">
                            <span style="color: #18a6df">
                            <h3>本项目主要由四部分组成:留言,用户设置,商城,还有客服.<br>
                                其他(登录,注册等).主要功能:购物车,用户留言,用户设置等.<br>
                                后台实现以上的增上改查等操作.
                            </h3>
                            </span></td>
                        <span id="s_project"class="error"></span>
                    </tr>
                </table>
                <div >
                    <h3 style="color: #18a6df"><h3 style="color: #18a6df">有问题请点击<a href="liuyanlist.jsp" >留言</a> 或联系QQ:121301713@qq.com</h3></h3>
                     <script>
                         var  lingshi="https://github.com/lingshik"
                     </script>
                    <h3 style="color: #18a6df"><h3 style="color: #18a6df">我的Github:<a href="https://github.com/lingshik">lingshi</a></h3></h3>

                </div>
            </form>
        </div>
    </div>
</div>

</body>
</html>