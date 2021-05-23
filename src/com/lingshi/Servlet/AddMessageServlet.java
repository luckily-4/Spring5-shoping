package com.lingshi.Servlet;
import com.lingshi.Model.Message;
import com.lingshi.Service.Impl.MessageServiceImpl;
import com.lingshi.Service.MessageService;
import org.apache.commons.beanutils.BeanUtils;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet("/addmessageservlet")
public class AddMessageServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //1.设置编码
        req.setCharacterEncoding("utf-8");
        //2.封装到Map集合中
        Map<String, String[]> map =req.getParameterMap();
        Message message =new Message();
        try {
            BeanUtils.populate(message,map);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        //保存到Srivice
        MessageService  messageService=new MessageServiceImpl();
        messageService.addMessage(message);
       resp.sendRedirect(req.getContextPath()+"/messageservlet");

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }
}
