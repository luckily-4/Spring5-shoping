package com.lingshi.Servlet;

import com.lingshi.Model.PabeBean;
import com.lingshi.Model.User;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@WebServlet("/finduserbypageservlet")
public class FindUserByPageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          req.setCharacterEncoding("utf-8");
        //1.获取参数
        String currentPage = req.getParameter("currentPage");
        String rows = req.getParameter("rows");
          if(currentPage==null || "".equals(currentPage)){
               currentPage="1";
          }
          if(rows==null || "".equals(rows)){
              rows="5";
          }

          //获取条件查询参数
        Map<String, String[]> condition= req.getParameterMap();

        UserService service= new UserServiceImpl();
     PabeBean<User> pb=service.findUsderByPage(currentPage,rows,condition);

           req.setAttribute("pb",pb);
        req.setAttribute("condition",condition);
           req.getRequestDispatcher("/backstage/admin.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
