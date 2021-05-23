package com.lingshi.Servlet;

import com.lingshi.Model.Message;
import com.lingshi.Service.Impl.MessageServiceImpl;
import com.lingshi.Service.MessageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/messageservlet")
public class MessageServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MessageService messageService =new MessageServiceImpl();
        List<Message> messages = messageService.findAll();
          req.setAttribute("messages",messages);
          req.getRequestDispatcher("/liuyanlist.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

}
