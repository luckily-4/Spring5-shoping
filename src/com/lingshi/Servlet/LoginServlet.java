package com.lingshi.Servlet;

import com.lingshi.Model.User;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.UserService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/loginservlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         //1.设置编码
        req.setCharacterEncoding("utf-8");
        //2.获取数据
        String code = req.getParameter("code");
        //3.验证码的校验
        HttpSession session = req.getSession();
        String code1 =(String) session.getAttribute("code");
        session.removeAttribute("code");
               if(!code1.equalsIgnoreCase(code)){
                   //验证码不正确
                   req.setAttribute("login_msg","验证码错误");
                   //跳转到主页面
                   req.getRequestDispatcher("/home.jsp").forward(req, resp);
                   return;
               }
        Map<String, String[]> map = req.getParameterMap();
        //4.封装user对象
           User user =new User();
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //5调用Service
       UserService service =new UserServiceImpl();
        User login = service.login(user);

        //6.判断是否登录成功
        if(login !=null){
          session.setAttribute("user",login);
          resp.sendRedirect(req.getContextPath()+"/home.jsp");
        }else{

            req.setAttribute("login_msg","登录错误");
            //跳转到主页面
            req.getRequestDispatcher("/error/loginerror.jsp").forward(req, resp);
        }
    }
}
