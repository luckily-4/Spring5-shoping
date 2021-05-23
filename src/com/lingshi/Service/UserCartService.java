package com.lingshi.Service;
import com.lingshi.Model.PabeBean;
import com.lingshi.Model.UserCart;
import java.util.List;
public interface UserCartService {
        List<UserCart> findAll();
       void addUserCart(UserCart userCart);
    PabeBean<UserCart> findUserCartByPage(String currentPage, String rows);

    void updateUser(UserCart userCart);

    UserCart findUserById(int id);
    void delete(String id);
}
