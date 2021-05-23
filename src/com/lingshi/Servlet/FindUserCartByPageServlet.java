package com.lingshi.Servlet;

import com.lingshi.Model.Message;
import com.lingshi.Model.PabeBean;
import com.lingshi.Model.UserCart;
import com.lingshi.Service.Impl.MessageServiceImpl;
import com.lingshi.Service.Impl.UserCartServiceImpl;
import com.lingshi.Service.MessageService;
import com.lingshi.Service.UserCartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/findusercartbypageservlet")
public class FindUserCartByPageServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           //1.获取参数
        String currentPage = req.getParameter("currentPage");
        String rows = req.getParameter("rows");
          if(currentPage==null || "".equals(currentPage)){
               currentPage="1";
          }
          if(rows==null || "".equals(rows)){
              rows="5";
          }
        UserCartService service= new UserCartServiceImpl();
     PabeBean<UserCart> pb=service.findUserCartByPage(currentPage,rows);

           req.setAttribute("pb",pb);
           req.getRequestDispatcher("/backstage/admin_UserCart.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
