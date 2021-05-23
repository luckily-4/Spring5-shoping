package com.lingshi.Service;
import com.lingshi.Model.Message;
import com.lingshi.Model.PabeBean;
import com.lingshi.Model.UserCart;

import java.util.List;
public interface MessageService {

        List<Message> findAll();
    void delete(String id);
       void addMessage(Message message);
    PabeBean<Message> findMessageByPage(String currentPage, String rows);
    void updateUser(Message message);
}
