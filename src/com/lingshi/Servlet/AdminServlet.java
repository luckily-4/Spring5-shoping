package com.lingshi.Servlet;

import com.lingshi.Model.User;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;


@WebServlet("/adminservlet")
public class AdminServlet  extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.调用AdminSrvice
        UserService service=new UserServiceImpl();
        List<User> users = service.findAll();
        //2.将list 存入request域中
        req.setAttribute("users",users);
        //3.转发
        req.getRequestDispatcher("/backstage/admin.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         this.doPost(req,resp);
    }
}
