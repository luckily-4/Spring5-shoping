package com.lingshi.Servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.lingshi.Model.Category;
import com.lingshi.Service.CategoryService;
import com.lingshi.Service.Impl.CategoryServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/categoryservlet")
public class CategoryServlet extends HttpServlet {
    private CategoryService service=new CategoryServiceImpl();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
             List<Category> cs=service.FindAll();
             req.setAttribute("cs",cs);
             req.getRequestDispatcher("/cartshopping/index.jsp").forward(req,resp);

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
