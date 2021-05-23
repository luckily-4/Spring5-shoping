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

@WebServlet("/findgoodsservlet")
public class FindgoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           //1.获取id
        String id = req.getParameter("id");
        GoodsService service =new GoodServiceImpl();
        Goods goods=  service.findGoodsById(Integer.parseInt(id));
       req.setAttribute("goods",goods);
         req.getRequestDispatcher("/backstage/admin_goodxiugai.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
