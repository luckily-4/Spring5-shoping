package com.lingshi.Servlet;

import com.lingshi.Model.Goods;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.GoodsService;
import com.lingshi.Service.Impl.GoodServiceImpl;
import com.lingshi.Service.Impl.UserCartServiceImpl;
import com.lingshi.Service.UserCartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/goodsservlet")
public class GoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.调用AdminSrvice
        GoodsService service=new GoodServiceImpl();
        List<Goods> goods = service.findAll();
        //2.将list 存入request域中
        req.setAttribute("goods",goods);
        //3.转发
        req.getRequestDispatcher("/backstage/admin_goods.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         this.doPost(req,resp);
    }
}
