package com.lingshi.Servlet;

import com.lingshi.Service.Impl.MessageServiceImpl;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.MessageService;
import com.lingshi.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delmessageservlet")
public class DelMessageServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        MessageService service= new MessageServiceImpl();
        service.delete(id);
        resp.sendRedirect(req.getContextPath()+"/afindmassagebypageservlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
