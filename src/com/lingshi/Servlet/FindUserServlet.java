package com.lingshi.Servlet;
import com.lingshi.Model.User;
import com.lingshi.Service.Impl.UserServiceImpl;
import com.lingshi.Service.UserService;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/finduserservlet")
public class FindUserServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
           //1.获取id
        String id = req.getParameter("id");
        UserService service =new UserServiceImpl();
      User user=  service.findUserById(id);
       req.setAttribute("user",user);
         req.getRequestDispatcher("/xiugai.jsp").forward(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
