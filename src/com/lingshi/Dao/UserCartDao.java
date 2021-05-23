package com.lingshi.Dao;

import com.lingshi.Model.Message;
import com.lingshi.Model.UserCart;

import java.util.List;

public interface UserCartDao {
   List<UserCart> findAll();
   void addUserCart(UserCart userCart);
    int findTotalCount();
   List<UserCart> findByPage(int start, int rows);

    void updateUser(UserCart userCart);

    UserCart findById(int parseInt);
    void delete(int Int);
}
