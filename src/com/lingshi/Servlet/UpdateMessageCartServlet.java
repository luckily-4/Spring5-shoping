package com.lingshi.Servlet;

import com.lingshi.Model.Message;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.Impl.MessageServiceImpl;
import com.lingshi.Service.Impl.UserCartServiceImpl;
import com.lingshi.Service.MessageService;
import com.lingshi.Service.UserCartService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/updatemessagecartservlet")
public class UpdateMessageCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Map<String, String[]> map = req.getParameterMap();
          Message message=new Message();
        try {
            BeanUtils.populate(message,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        MessageService service =new MessageServiceImpl();
        service.updateUser(message);
        resp.sendRedirect(req.getContextPath()+"/afindmassagebypageservlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
