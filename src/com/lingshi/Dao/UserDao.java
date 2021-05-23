package com.lingshi.Dao;

import com.lingshi.Model.User;

import java.util.List;
import java.util.Map;

public interface UserDao {
      List<User> findAll();

       User  findUserByUsernameAndPassword(String name,String password);

       void  add(User user);

       void delete(int parseInt);

       User findById(int parseInt);

        void updateUser(User user);


    int findTotalCount(Map<String, String[]> condition);

    List<User> findByPage(int start, int rows, Map<String, String[]> condition);
}
