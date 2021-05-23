package com.lingshi.Servlet;

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

@WebServlet("/delusercartservlet")
public class DelUserCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        UserCartService service= new UserCartServiceImpl();
        service.delete(id);
        resp.sendRedirect(req.getContextPath()+"/findusercartbypageservlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
