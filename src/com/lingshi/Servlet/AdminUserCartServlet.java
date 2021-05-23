package com.lingshi.Servlet;

import com.lingshi.Model.User;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.Impl.UserCartServiceImpl;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.UserCartService;
import com.lingshi.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/adminusercartservlet")
public class AdminUserCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.调用AdminSrvice
        UserCartService service=new UserCartServiceImpl();
        List<UserCart> users = service.findAll();
        //2.将list 存入request域中
        req.setAttribute("users",users);
        //3.转发
        req.getRequestDispatcher("/backstage/admin_UserCart.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         this.doPost(req,resp);
    }
}
