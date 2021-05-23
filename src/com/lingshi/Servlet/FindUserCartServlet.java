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

@WebServlet("/findusercartservlet")
public class FindUserCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           //1.获取id
        String id = req.getParameter("id");
        UserCartService service =new UserCartServiceImpl();
        UserCart usercart=  service.findUserById(Integer.parseInt(id));
       req.setAttribute("usercart",usercart);
         req.getRequestDispatcher("/backstage/UserCartxiugai.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
