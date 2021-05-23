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
@WebServlet("/adduserservlet")
public class AddUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       //1.设置编码
        req.setCharacterEncoding("utf-8");
        //2.获取参数
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
        //3.封装对象
        User user =new User();
        try {
            BeanUtils.populate(user,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        UserService userService=new UserServiceImpl();
         userService .addUser(user);

       //5.跳转到登录成功页面
        resp.sendRedirect(req.getContextPath()+"/error/addsucceed.jsp");
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
