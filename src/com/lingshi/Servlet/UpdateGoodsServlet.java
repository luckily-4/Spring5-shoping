package com.lingshi.Servlet;

import com.lingshi.Model.Goods;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.GoodsService;
import com.lingshi.Service.Impl.GoodServiceImpl;
import com.lingshi.Service.Impl.UserCartServiceImpl;
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

@WebServlet("/updategoodsservlet")
public class UpdateGoodsServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        Map<String, String[]> map = req.getParameterMap();
          Goods goods=new Goods();
        try {
            BeanUtils.populate(goods,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        GoodsService service =new GoodServiceImpl();
        service.updateGoods(goods);
        resp.sendRedirect(req.getContextPath()+"/findgoodsbypageservlet");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
