package com.lingshi.Dao;

import com.lingshi.Model.Message;
import com.lingshi.Model.User;
import com.lingshi.Model.UserCart;

import java.util.List;

public interface MessageDao {
   List<Message> findAll();
   void addMessage(Message message);
    int findTotalCount();
   List<Message> findByPage(int start, int rows);
    void delete(int parseInt);
    void updateUser(Message message);
}
