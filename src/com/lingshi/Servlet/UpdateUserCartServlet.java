package com.lingshi.Servlet;

import com.lingshi.Model.User;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.Impl.UserCartServiceImpl;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.UserCartService;
import com.lingshi.Service.UserService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/updateusercartservlet")
public class UpdateUserCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Map<String, String[]> map = req.getParameterMap();
          UserCart userCart=new UserCart();
        try {
            BeanUtils.populate(userCart,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        UserCartService service =new UserCartServiceImpl();
        service.updateUser(userCart);
        resp.sendRedirect(req.getContextPath()+"/findusercartbypageservlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
