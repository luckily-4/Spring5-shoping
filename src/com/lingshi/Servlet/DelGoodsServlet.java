package com.lingshi.Servlet;

import com.lingshi.Service.GoodsService;
import com.lingshi.Service.Impl.GoodServiceImpl;
import com.lingshi.Service.Impl.MessageServiceImpl;
import com.lingshi.Service.MessageService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/delgoodsservlet")
public class DelGoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        GoodsService service= new GoodServiceImpl();
        service.delete(id);
        resp.sendRedirect(req.getContextPath()+"/findgoodsbypageservlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
