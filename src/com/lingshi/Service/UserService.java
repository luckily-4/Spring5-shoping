package com.lingshi.Service;

import com.lingshi.Model.PabeBean;
import com.lingshi.Model.User;

import java.util.List;
import java.util.Map;

public interface UserService {
      //1.用户登录
      public User login(User user);
      //2.用户管理接口
      public List<User> findAll();
      //3.添加用户
      public void addUser(User user);
      void delete(String id);
       User findUserById(String id);
      void updateUser(User user);
    PabeBean<User> findUsderByPage(String currentPage, String rows, Map<String, String[]> condition);

}

